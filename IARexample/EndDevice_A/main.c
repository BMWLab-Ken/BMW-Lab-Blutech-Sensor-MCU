
#include <string.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "board.h"
#include "radio.h"


#include "LoRaMac.h"

#include "debug.h"



#define RF_FREQUENCY                                868000000 // Hz
#define TX_OUTPUT_POWER                             0        // dBm

#if defined( USE_MODEM_LORA )

#define LORA_BANDWIDTH                              0         // [0: 125 kHz,
                                                              //  1: 250 kHz,
                                                              //  2: 500 kHz,
                                                              //  3: Reserved]
#define LORA_SPREADING_FACTOR                       7         // [SF7..SF12]
#define LORA_CODINGRATE                             3//1         // [1: 4/5,
                                                              //  2: 4/6,
                                                              //  3: 4/7,
                                                              //  4: 4/8]
#define LORA_PREAMBLE_LENGTH                        8         // Same for Tx and Rx
#define LORA_SYMBOL_TIMEOUT                         5         // Symbols
#define LORA_FIX_LENGTH_PAYLOAD_ON                  false		//false
#define LORA_IQ_INVERSION_ON                        false

#elif defined( USE_MODEM_FSK )

#define FSK_FDEV                                    25e3      // Hz
#define FSK_DATARATE                                50e3      // bps
#define FSK_BANDWIDTH                               50e3      // Hz
#define FSK_AFC_BANDWIDTH                           83.333e3  // Hz
#define FSK_PREAMBLE_LENGTH                         5         // Same for Tx and Rx
#define FSK_FIX_LENGTH_PAYLOAD_ON                   false

#else
    #error "Please define a modem in the compiler options."
#endif

static uint8_t DevEui[] =
{
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

static uint8_t NwkSKey[] = 
{ 
    0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6,
    0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
};

static uint8_t AppSKey[] = 
{ 
    0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6,
    0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
};

static uint32_t DevAddr;

#define APP_TX_DUTYCYCLE                            5000000//5000000  // 5 [s] value in us
#define APP_TX_DUTYCYCLE_RND                        1000000  // 1 [s] value in us
#define APP_DATA_SIZE                               8//12

static uint8_t AppData[APP_DATA_SIZE];
static uint8_t BLRM_RevData[APP_DATA_SIZE];
static uint8_t PC_Commend[APP_DATA_SIZE];
int8_t rsp_len=0; //BLRM responce pkt len
int8_t len=0; //BLRM current pkt len
int8_t data_len=0; //BLRM sensor data len
static uint32_t TxDutyCycleTime;
static TimerEvent_t TxNextPacketTimer;

static bool ComDone = false;
static bool RxDone = false;
static bool TxDone = false;

static uint8_t AppPort = 1;
static uint8_t AppDataSize = APP_DATA_SIZE;

static LoRaMacEvent_t LoRaMacEvents;
unsigned char index_test = 0;
	
typedef enum
{
    LOWPOWER,
    RX,
    RX_TIMEOUT,
    RX_ERROR,
    TX,
    TX_TIMEOUT,
	TXNEXTPACKET,
    JoinSuccess,
    Initialize,
}States_t;

typedef union
{
    uint64_t time_V;
    struct
    {
        uint8_t t1 : 8;
        uint8_t t2 : 8;
        uint8_t t3 : 8;
        uint8_t t4 : 8;
        uint8_t t5 : 8;
        uint8_t t6 : 8;
        uint8_t t7 : 8;
        uint8_t t8 : 8;		
    }felds;
}myTime;

#define RX_TIMEOUT_VALUE                            1000000//1000000
#define BUFFER_SIZE                                 64 // Define the payload size here

const uint8_t PingMsg[] = "PING";
const uint8_t PongMsg[] = "PONG";

uint16_t BufferSize = BUFFER_SIZE;
uint8_t Buffer[BUFFER_SIZE];

States_t State = LOWPOWER;

int8_t RssiValue = 0;
int8_t SnrValue = 0;


static RadioEvents_t RadioEvents;
void OnTxDone( void );
void OnRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr );
void OnTxTimeout( void );
void OnRxTimeout( void );
void OnRxError( void );

static bool SendFrame( void )
{

   // LoRaMacSendFrame( AppPort, AppData, AppDataSize);
     LoRaMacSendConfirmedFrame( AppPort, AppData, AppDataSize, 1);	//收 ack 時，是用 single而目前收single還是有問題，所以先不要用 confirm frame
	
}

void USART1_IRQHandler() {	
  if(USART_GetITStatus(USART1, USART_IT_RXNE) != RESET) {
		/* Read one byte from the receive data register */
                BLRM_RevData[len]=(USART1->DR);
                len++;
                RxDone = true;
	}
}

void USART3_IRQHandler() {	
  if(USART_GetITStatus(USART3, USART_IT_RXNE) != RESET) {
		/* Read one byte from the receive data register */
                PC_Commend[len]=(USART3->DR);
                len++;
                ComDone = true;
	}
}

static void ProcessRxFrame( LoRaMacEventFlags_t *flags, LoRaMacEventInfo_t *info )
{
    switch( info->RxPort ) // Check Rx port number
    {
        case 1: // The application LED can be controlled on port 1 or 2
        case 2:
            if( info->RxBufferSize == 1 )
            {

            }
            break;
        default:
            break;
    }
}
/*
static void PrepareTxFrame( uint8_t port )
{
	uint64_t curTime = TimerGetCurrentTime( );
        AppData[0] = 0x01;
        AppData[1] = 0x01;
        AppData[2] = 0x01;
}*/
//BLRM UART commend

//RF Signal Check
static void BLRM_UART_RC()
{             
        AppData[0] = 0x01;
        AppData[1] = 0x01;
        AppData[2] = 0x01;
        rsp_len = 5;
        debug_buf_UART1(AppData,3);
}
//Network Join
static void BLRM_UART_NJ()
{
        AppData[0] = 0x02;
        AppData[1] = 0x01;
        AppData[2] = 0x01;
        rsp_len = 3;
        debug_buf_UART1(AppData,3);
}
//Data Transfer
static void BLRM_UART_DT(uint8_t len,const uint8_t* Buffer)
{
    int i = 0 , x=len;
    while(x--) {
        AppData[i] =(*Buffer++);
        i++;
    }
    debug_buf_UART1(AppData,len);
    rsp_len = 3;
}
static int hex2dec(uint8_t hex)
{
  int x,y;
switch(hex>>4)
                 {
                 case 0x00:
                     x = 0;
                     break;
                 case 0x01:
                     x = 16;
                     break;
                 case 0x02:
                     x = 32;
                     break;
                 case 0x03:
                     x = 48;
                     break;
                 case 0x04:
                     x = 64;                                  
                     break;
                 case 0x05:
                     x = 80;              
                     break;
                 case 0x06:
                     x = 96;                      
                     break;
                 case 0x07:
                     x = 112;                      
                     break;
                 case 0x08:
                     x = 128;                      
                     break;
                 case 0x09:
                     x = 144; 
                     break;
                 case 0x0A:
                     x = 160; 
                     break;
                 case 0x0B:
                     x = 176; 
                     break;
                 case 0x0C:
                     x = 192; 
                     break;
                 case 0x0D:
                     x = 208; 
                     break;
                 case 0x0E:
                     x = 224;         
                     break;
                 case 0x0F:
                     x = 240;         
                     break;
                 default:
                     x = 0;
                     break;
                 }
switch(hex&0xF)
                 {
                 case 0x00:
                     y = 0;
                     break;
                 case 0x01:
                     y = 1;
                     break;
                 case 0x02:
                     y = 2;
                     break;
                 case 0x03:
                     y = 3;
                     break;
                 case 0x04:
                     y = 4;                     
                     break;
                 case 0x05:
                     y = 5;                     
                     break;
                 case 0x06:
                     y = 6;                     
                     break;
                 case 0x07:
                     y = 7;                     
                     break;
                 case 0x08:
                     y = 8;                     
                     break;
                 case 0x09:
                     y = 9;
                     break;
                 case 0x0A:
                     y = 10;
                     break;
                 case 0x0B:
                     y = 11;
                     break;
                 case 0x0C:
                     y = 12;
                     break;
                 case 0x0D:
                     y = 13;
                     break;
                 case 0x0E:
                     y = 14;        
                     break;
                 case 0x0F:
                     y = 15;        
                     break;
                 default:
                     y = 0;
                     break;
                 }

  data_len = 2 + x + y;
  return 0;
}

static void OnTxNextPacketTimerEvent( void )
{
    //TxNextPacket = true; //chiu--
	State = TXNEXTPACKET;
	debug_str("\r\nmain in OnTxNextPacketTimerEvent \r\n");
}

static void OnMacEvent( LoRaMacEventFlags_t *flags, LoRaMacEventInfo_t *info )
{
    
    if( flags->Bits.Tx == 1 )
    {
    }

    if( flags->Bits.Rx == 1 )
    {
        if( flags->Bits.RxData == true )
        {
            ProcessRxFrame( flags, info );
        }

		// debug_str("main in OnMacEvent : rx \r\n");
    }

    
    // Schedule a new transmission
	TxDutyCycleTime = 1000;//APP_TX_DUTYCYCLE ;//+ randr( -APP_TX_DUTYCYCLE_RND, APP_TX_DUTYCYCLE_RND );
	TimerSetValue( &TxNextPacketTimer, TxDutyCycleTime );
	TimerStart( &TxNextPacketTimer );	
	debug_str("main OnMacEvent\r\n");
}



int main( void )
{
	debug_init();
	BoardInitMcu( );	
    // BoardGetUniqueId( DevEui );

    LoRaMacEvents.MacEvent = OnMacEvent;
    LoRaMacInit( &LoRaMacEvents );
	
	srand( RAND_SEED );
	//DevAddr = randr( 0, 0x01FFFFFF );
        DevAddr=0x67000000;//04030201
	LoRaMacInitNwkIds( 0x000000, DevAddr, NwkSKey, AppSKey );
	
	LoRaMacSetAdrOn( true );
	// LoRaMacTestRxWindowsOn(false);
	//----------- Timer
	TimerInit( &TxNextPacketTimer, OnTxNextPacketTimerEvent );
	

State = Initialize;

while( 1 )
    {   
	if( RxDone == true )
        {
            RxDone = false;
              if(BLRM_RevData[0]== 0x01) //Radio Check
            {
              if(len == rsp_len){
                        debug_buf(BLRM_RevData,len);
                        len = 0;
              }
            }
              if(BLRM_RevData[0]== 0x02) //Network Join
            {
              if(len == rsp_len){
                if(BLRM_RevData[2]== 0x02){
                        debug_str("Join Success\n");
                        State = JoinSuccess;
                        len = 0;
                }
                else{
                        debug_str("Join Time out\n");
                        len = 0;
                }
              }
            }
              if(BLRM_RevData[0]== 0x03) //Data Transfer
            {
              if(len == rsp_len){
                if(BLRM_RevData[2]== 0x01){
                  debug_str("Data Transfer OK\n");
                  len = 0;
                   }
                else{
                  debug_str("Data Transfer Time Out\n");
                  len = 0;
                }
              }
            }  
        }

        if( ComDone == true )
        {
            ComDone = false;
              if(PC_Commend[0]== 0x01) //Radio Check
            {
              data_len = 3;
              if(len == data_len){
                if(PC_Commend[2]== 0x01){
                        debug_str("Recived Radio Check\n");
                        len = 0;
                        BLRM_UART_RC();
                }          
              }
            }
              if(PC_Commend[0]== 0x02) //Network Join
            {
              data_len = 3;
              if(len == data_len){
                if(PC_Commend[2]== 0x01){
                        debug_str("Recived Network Join\n");
                        len = 0;
                        BLRM_UART_NJ();
                }
                else{
                        debug_str("Recived Wrong Network Join Commend\n");
                        len = 0;
                }
              }
            }
              if(PC_Commend[0]== 0x03) //Data Transfer
            {
              if(PC_Commend[1] != NULL){           
                 hex2dec(PC_Commend[1]);
                 //debug_buf(PC_Commend,data_len);
                if(len == data_len){
                  debug_str("Recived Complete!\nData = ");
                  debug_buf(PC_Commend,data_len);
                  BLRM_UART_DT(data_len,PC_Commend);
                  memset( PC_Commend, 0x00 , 128 );
                  len = 0;
                  data_len = 0;
                   }
                else if(len < data_len){
                  debug_str("Data reciving..\n");

                }
              }
            }  
        }
       TimerLowPowerHandler( );
    
    }
}