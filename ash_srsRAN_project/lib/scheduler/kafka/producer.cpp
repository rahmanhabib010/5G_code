#include <iostream>
#include <string>
#include <cstdlib>
#include <cstdio>
#include <cstring>
#include <vector>
#include <librdkafka/rdkafkacpp.h>
#include <chrono>
#include <thread>
#if _AIX
#include <unistd.h>
#endif
#include "producer.h"

  KafkaProducerHelper::KafkaProducerHelper(std::string _brokers)
  {
    std::string errstr;
    // Setting Kafka-producer Configurations
    RdKafka::Conf *conf = RdKafka::Conf::create(RdKafka::Conf::CONF_GLOBAL);
    if (conf->set("bootstrap.servers", _brokers, errstr) != RdKafka::Conf::CONF_OK)
    {
      std::cerr << errstr << std::endl;
      exit(1);
    }
    FileDeliveryReportCb _ex_dr_cb;
    this->ex_dr_cb = _ex_dr_cb;
    if (conf->set("dr_cb", &this->ex_dr_cb, errstr) != RdKafka::Conf::CONF_OK)
    {
      std::cerr << errstr << std::endl;
      exit(1);
    }
    /*
     * Create producer instance.
     */
    producer = RdKafka::Producer::create(conf, errstr);
    if (!producer)
    {
      std::cerr << "Failed to create producer: " << errstr << std::endl;
      exit(1);
    }
    delete conf;
    this->producer = producer;
  }

  /*
   * Send/Produce message.
   * This is an asynchronous call, on success it will only
   * enqueue the message on the internal producer queue.
   * The actual delivery attempts to the broker are handled
   * by background threads.
   * The previously registered delivery report callback
   * is used to signal back to the application when the message
   * has been delivered (or failed permanently after retries).
   */
  bool KafkaProducerHelper::produceSingleMessage(std::string topic, std::string data)
  {
    RdKafka::ErrorCode err = this->producer->produce(
        topic,
        RdKafka::Topic::PARTITION_UA,
        /* Make a copy of the value */
        RdKafka::Producer::RK_MSG_COPY,
        /* Value */
        const_cast<char *>(data.c_str()), data.size(),
        /* Key */
        NULL, 0,
        /* Timestamp (defaults to current time) */
        0,
        /* Message headers, if any */
        NULL,
        /* Per-message opaque value passed to
         * delivery report */
        NULL);

    if (err != RdKafka::ERR_NO_ERROR)
    {
      std::cout << "% Failed to produce to topic " << topic << ": " << RdKafka::err2str(err) << std::endl;
      if (err == RdKafka::ERR__QUEUE_FULL)
      {
        /* If the internal queue is full, wait for
         * messages to be delivered and then retry.
         * The internal queue represents both
         * messages to be sent and messages that have
         * been sent or failed, awaiting their
         * delivery report callback to be called.
         *
         * The internal queue is limited by the
         * configuration property
         * queue.buffering.max.messages and queue.buffering.max.kbytes */
        producer->poll(1000 /*block for max 1000ms*/);
        std::cout << "Kafka Internal Queue Full | Need to handle the case " << std::endl;
      }
      return false;
    }
    else
    {
      // std::cerr << "% Enqueued message (" << data.size() << " bytes) " << "for topic " << topic << std::endl;
    }

    /* A producer application should continually serve
     * the delivery report queue by calling poll()
     * at frequent intervals.
     * Either put the poll call in your main loop, or in a
     * dedicated thread, or call it after every produce() call.
     * Just make sure that poll() is still called
     * during periods where you are not producing any messages
     * to make sure previously produced messages have their
     * delivery report callback served (and any other callbacks
     * you register). */
    this->producer->poll(0);

    /* Wait for final messages to be delivered or fail.
     * flush() is an abstraction over poll() which
     * waits for all messages to be delivered. */
    // std::cerr << "% Flushing final messages..." << std::endl;
    producer->flush(10 * 1000 /* wait for max 10 seconds */);
    if (producer->outq_len() > 0){
        std::cerr << "% " << producer->outq_len() << " message(s) were not delivered" << std::endl;
        return false;
    }
      
    return true;
  }

  KafkaProducerHelper::~KafkaProducerHelper()
  {
    std::cout << "Kafka Destructor Called " << std::endl;
    delete this->producer;
  }
