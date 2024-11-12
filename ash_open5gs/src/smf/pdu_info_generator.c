#include "pdu_info_generator.h" 
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
// To import ogs_info
#include "sbi-path.h"

/*
The current code is added in order to log how many ue's/pdu sessions are connected
*/
struct PduSessionInfo pdu_list[100] = {0};

void sessionUpdate(char* supi, char* pdu_session, bool mode){
    ogs_info("Hello World Session Update ");
    ogs_info("Recieved Session update for %s Supi, %s Pdu-ip and mode is %d\n", supi, pdu_session, mode);
    // Create a copy of the strings
    char* supi_copy = strdup(supi);
    char* pdu_session_copy = strdup(pdu_session);
    if (!supi_copy || !pdu_session_copy) {
        perror("strdup");
        return;
    }
    struct PduSessionInfo cur_pdu = {supi_copy, pdu_session_copy, mode};
    for(int i = 0;i < 100; i++){
        
        if(pdu_list[i].supi == NULL){
            pdu_list[i] = cur_pdu;
            ogs_info("Not Found previous session | storing it at index : %d \n", i);
            break;
        }else if(strcmp(supi, pdu_list[i].supi) == 0){
            // Already There, update it
            ogs_info("Found session at index : %d \n", i);
            free(pdu_list[i].supi);
            free(pdu_list[i].pdu_session);
            pdu_list[i] = cur_pdu;
            break;
        }
    }
    // Update the state in file
    writeCurrentSession();
}

void writeCurrentSession(){
    FILE *fileWriter = fopen("pdu_info.csv", "w");
    if (fileWriter == NULL) {
        // perror("Error opening file");
        return;
    }
    fprintf(fileWriter,"Index,SUPI,PDU-IP,State\n");

    for(int i = 0; i < 100; i++){
        if(pdu_list[i].supi == NULL){
            break;
        }
        // char* outStr[512];
        const char *connectedStr = (pdu_list[i].isConnected? "Connected": "Disconnected");
        // sprintf(outStr, "%d, %s, %s, %s", i + 1,pdu_list[i].supi, pdu_list[i].pdu_session, connectedStr);
        fprintf(fileWriter, "%d,%s,%s,%s\n", i + 1, pdu_list[i].supi, pdu_list[i].pdu_session, connectedStr);
        
    }
    fflush(fileWriter);
    fclose(fileWriter);
}