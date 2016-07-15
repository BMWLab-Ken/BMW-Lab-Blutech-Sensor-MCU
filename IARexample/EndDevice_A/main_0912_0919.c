// OK的版本。記得 Gateway端要把 Preamble symble 打開


#include <string.h>
#include <math.h>
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
#define APP_DATA_SIZE                               8

static uint8_t AppData[APP_DATA_SIZE];
static uint32_t TxDutyCycleTime;
static TimerEvent_t TxNextPacketTimer;

static bool TxNextPacket = true;
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
}States_t;

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

static void PrepareTxFrame( uint8_t port )
{
    uint16_t pressure = 0;
    int16_t altitudeBar = 0;
    int16_t temperature = 0;
    uint8_t batteryLevel = 0;

    pressure = 10;//( uint16_t )( MPL3115ReadPressure( ) / 10 );             // in hPa / 10
    temperature = 20;//( int16_t )( MPL3115ReadTemperature( ) * 100 );       // in 蚓 * 100
    altitudeBar = 30;//( int16_t )( MPL3115ReadAltitude( ) * 10 );           // in m * 10
    batteryLevel = 40;//BoardMeasureBatterieLevel( );                        // 1 (very low) to 254 (fully charged)

    // AppData[0] = ( SelectorGetValue( ) << 4 ) | AppLedStateOn;
    AppData[0] = 1;
    AppData[1] = ( pressure >> 8 ) & 0xFF;
    AppData[2] = pressure & 0xFF;
    AppData[3] = ( temperature >> 8 ) & 0xFF;
    AppData[4] = temperature & 0xFF;
    AppData[5] = ( altitudeBar >> 8 ) & 0xFF;
    AppData[6] = altitudeBar & 0xFF;
    AppData[7] = batteryLevel;
}

static bool SendFrame( void )
{
/*
	uint8_t i;
Radio.SetChannel( 868000000 );

Radio.SetTxConfig( MODEM_LORA, 0, 0, 0, 7, 3, 8, false, true, 0, 0, false, 3e6 );	
	debug_hex( index_test );
	debug_str("  6 isMaster recv timeout, send Pi\r\n");
	// Send the next PING frame
	Buffer[0] = 'P';
	Buffer[1] = 'I';
	Buffer[2] = 'N';
	Buffer[3] = 'G';
	Buffer[4] = index_test++;
	// for( i = 4; i < BufferSize; i++ )
	for( i = 5; i < BufferSize; i++ )
	{
		// Buffer[i] = i - 4;
		Buffer[i] = i - 5;
	}
	DelayMs( 1 ); 
	Radio.Write( 0x01, 0x03);
	Radio.Send( Buffer, BufferSize );
*/
    LoRaMacSendFrame( AppPort, AppData, AppDataSize);
/*
	switch( sendFrameStatus )
    {
    case 5: // NO_FREE_CHANNEL
        // Try again later
        return true;
    default:
        return false;
    }
*/	
}

static void OnTxNextPacketTimerEvent( void )
{
    TxNextPacket = true;
	State = TXNEXTPACKET;
	debug_str("main in OnTxNextPacketTimerEvent \r\n");
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
	TxDutyCycleTime = APP_TX_DUTYCYCLE ;//+ randr( -APP_TX_DUTYCYCLE_RND, APP_TX_DUTYCYCLE_RND );
	TimerSetValue( &TxNextPacketTimer, TxDutyCycleTime );
	TimerStart( &TxNextPacketTimer );	
	debug_str("main OnMacEvent\r\n");
}

int main( void )
{

    uint8_t i;

	debug_init();
	BoardInitMcu( );
	
    // BoardGetUniqueId( DevEui );

    LoRaMacEvents.MacEvent = OnMacEvent;
    LoRaMacInit( &LoRaMacEvents );
	
	srand( RAND_SEED );
	DevAddr = randr( 0, 0x01FFFFFF );
	LoRaMacInitNwkIds( 0x000000, DevAddr, NwkSKey, AppSKey );
	
	LoRaMacSetAdrOn( true );
	// LoRaMacTestRxWindowsOn(false);
	//----------- Timer
	TimerInit( &TxNextPacketTimer, OnTxNextPacketTimerEvent );
	
    // Radio initialization
    // RadioEvents.TxDone = OnTxDone;
    // RadioEvents.RxDone = OnRxDone;
    // RadioEvents.TxTimeout = OnTxTimeout;
    // RadioEvents.RxTimeout = OnRxTimeout;
    // RadioEvents.RxError = OnRxError;
	
	// Radio.Init( &RadioEvents );
	
	// Radio.SetChannel( RF_FREQUENCY );

    // Radio.SetTxConfig( MODEM_LORA, TX_OUTPUT_POWER, 0, LORA_BANDWIDTH,
                                   // LORA_SPREADING_FACTOR, LORA_CODINGRATE,
                                   // LORA_PREAMBLE_LENGTH, LORA_FIX_LENGTH_PAYLOAD_ON,
                                   // true, 0, 0, LORA_IQ_INVERSION_ON, 3000000 );

	// Radio.Rx( RX_TIMEOUT_VALUE );
State = RX_TIMEOUT;
    while( 1 )
    {
		// SendFrame();
		// DelayMs( 8000 );
        // switch( State )
        // {   
        // case RX_TIMEOUT:
        // case RX_ERROR:
			// SendFrame();
            // State = LOWPOWER;
            // break;
        // case TXNEXTPACKET:
			// PrepareTxFrame( AppPort );
			// debug_str("main tx frame\r\n");
			// SendFrame();
            // State = LOWPOWER;
            // break;			
        // case LOWPOWER:
        // default:
            // break;
        // }

// /*		
		if( TxNextPacket == true )
        {
            TxNextPacket = false;
        
            PrepareTxFrame( AppPort );

			debug_str("main tx frame\r\n");

            SendFrame( );
        }		
// */		
        TimerLowPowerHandler( );
    
    }
}

/*
void OnTxDone( void )
{
	// DelayMs( 1000 );
    // State = TXNEXTPACKET;//TX;	
	// TxDone = true;
	debug_str("OnTxDone\r\n");
	// TxNextPacket = true;
	TxDutyCycleTime = APP_TX_DUTYCYCLE ;//+ randr( -APP_TX_DUTYCYCLE_RND, APP_TX_DUTYCYCLE_RND );
	TimerSetValue( &TxNextPacketTimer, TxDutyCycleTime );
	TimerStart( &TxNextPacketTimer );
}

void OnTxTimeout( void )
{
	debug_str("OnTxTimeout\r\n");
    State = RX_TIMEOUT;
}

void OnRxTimeout( void )
{
	debug_str("OnRxTimeout\r\n");
    State = RX_TIMEOUT;
}

void OnRxError( void )
{
	debug_str("OnRxError\r\n");
    State = RX_ERROR;
}
*/