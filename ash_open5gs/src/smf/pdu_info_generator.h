#ifndef PDU_INFO_GENERATOR_H
#define PDU_INFO_GENERATOR_H

#include <stdio.h>
#include <stdbool.h>

struct PduSessionInfo {
    char* supi;
    char* pdu_session;
    bool isConnected;
};

#ifdef __cplusplus
extern "C" {
#endif

void writeCurrentSession(void);
void sessionUpdate(char* supi, char* pdu_session, bool mode);

#ifdef __cplusplus
}
#endif

#endif // PDU_INFO_GENERATOR_H