/*
UpLinkCounter / DownLinkCounter 會在加解密packet用到，但我還不是很確定目前的使用是否正確。




*/
#include <stdlib.h>
#include <math.h>
#include "board.h"
#include "utilities.h"
#include "radio.h"

#include "LoRaMacCrypto.h"
#include "LoRaMac.h"
#include "LoRaMac_gateway.h"


#define LORAMAC_PHY_MAXPAYLOAD                      64


#define DEBUG_STR							debug_str
// #define DEBUG_STR							/**/

// --------------- Self info ---------------
static uint32_t LoRaGWDevAddr;
static DeviceClass_t LoRaGWMacDeviceClass;
static bool PublicNetwork;

static uint8_t LoRaMacNwkSKey[] = 
{ 
    0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6,
    0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
};

/*!
 * AES encryption/decryption cipher application session key
 */
static uint8_t LoRaMacAppSKey[] = 
{ 
    0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6,
    0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C
};
// -----------------------------------------


// --------------- Status ---------------
static LoRaGWMacEvent_t *LoRaGWMacEvents;
LoRaGWMacEventFlags_t LoRaGWMacEventFlags;
LoRaGWMacEventInfo_t LoRaGWMacEventInfo;
static bool SrvAckRequested = false;
// --------------------------------------


// ------------ Date TX / RX ------------
static uint8_t LoRaMacBuffer[LORAMAC_PHY_MAXPAYLOAD];
static uint16_t LoRaMacBufferPktLen = 0;
static uint32_t UpLinkCounter = 1;
static uint32_t DownLinkCounter = 0;
static bool IsUpLinkCounterFixed = false;
static bool IsRxWindowsEnabled = true;
uint32_t AckDevAddr = 0;
// --------------------------------------

/*!
 * Indicates if the MAC layer wants to send MAC commands 
 */
static bool MacCommandsInNextTx = false;

/*!
 * Contains the current MacCommandsBuffer index
 */
static uint8_t MacCommandsBufferIndex = 0;

/*!
 * Buffer containing the MAC layer commands
 */
static uint8_t MacCommandsBuffer[15];



static bool AdrCtrlOn = false;
static uint32_t AdrAckCounter = 0;
static bool AckTimeoutRetry = false;

static bool NodeAckRequested = false;		//End-Device用的，

static TimerTime_t TxTimeOnAir = 0;			//先宣告成 static, 之後再改
static uint8_t Channel;

/*!
 * LoRaMac internal states
 */
enum LoRaMacState_e
{
    MAC_IDLE          = 0x00000000,
    MAC_TX_RUNNING    = 0x00000001,
    MAC_RX            = 0x00000002,
    MAC_ACK_REQ       = 0x00000004,
    MAC_ACK_RETRY     = 0x00000008,
    MAC_CHANNEL_CHECK = 0x00000010,
};

/*!
 * LoRaMac internal state
 */
static uint32_t LoRaMacState = MAC_IDLE;

// --------------- Timer ---------------
static TimerEvent_t ChannelCheckTimer;
static TimerEvent_t TxDelayedTimer;
static TimerEvent_t AckTimeoutTimer;
static TimerEvent_t TxAckTimer;
// -------------------------------------


// ------------- PHY Layer -------------
static uint16_t ChannelsMask;
static int8_t ChannelsTxPower = LORAMAC_DEFAULT_TX_POWER;
static int8_t ChannelsDatarate = LORAMAC_DEFAULT_DATARATE;
static int8_t ChannelsDefaultDatarate = LORAMAC_DEFAULT_DATARATE;
static uint8_t ChannelsNbRep = 1; // 
static uint8_t ChannelsNbRepCounter = 0;
static RadioEvents_t RadioEvents;
// -------------------------------------

static uint8_t MaxDCycle = 0;
static uint16_t AggregatedDCycle;
static uint64_t AggregatedLastTxDoneTime;
static uint64_t AggregatedTimeOff;
static bool DutyCycleOn;
static uint8_t Channel;

static uint32_t MaxRxWindow;
static uint32_t ReceiveDelay1;
static uint32_t ReceiveDelay2;
static uint32_t JoinAcceptDelay1;
static uint32_t JoinAcceptDelay2;

static uint8_t LoRaGWMacBuffer[LORAMAC_PHY_MAXPAYLOAD];
static uint16_t LoRaGWMacBufferPktLen = 0;
static uint8_t LoRaMacPayload[LORAMAC_PHY_MAXPAYLOAD];
static uint8_t LoRaMacRxPayload[LORAMAC_PHY_MAXPAYLOAD];


// ------------- Function -------------
static void OnMacStateCheckTimerEvent( void );

static void OnChannelCheckTimerEvent( void );
static void OnTxDelayedTimerEvent( void );
static void OnAckTimeoutTimerEvent( void );
static void OnTxAckTimerEvent( void );

static void OnRadioTxDone( void );
static void OnRadioRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr );
static void OnRadioTxTimeout( void );
static void OnRadioRxError( void );
static void OnRadioRxTimeout( void );

// ------------------------------------

// yc add
static uint8_t GWAddMacCommand(uint8_t cmd, uint8_t p1, uint32_t p2, uint8_t p3)//p2>>uint8->32
{
  debug_str("MAC GWAddMacCommand\r\n");
    // MacCommandsBufferIndex = 0;
    MacCommandsBuffer[MacCommandsBufferIndex++] = cmd;//意思?? CID...
    switch( cmd )
    {
            case SRV_MAC_LINK_CHECK_ANS:
                //LoRaGWMacEventFlags.Bits.LinkCheck = 1;//需要嗎?
                //GW add "link margin & GwCnt"  
                MacCommandsBuffer[MacCommandsBufferIndex++] = p1;
                MacCommandsBuffer[MacCommandsBufferIndex++] = p2;
                break;
            case SRV_MAC_LINK_ADR_REQ:
                /*{
                    uint8_t i;
                    uint8_t status = 0x07;
                    uint16_t chMask = 0;
                    int8_t txPower = 0;
                    int8_t datarate = 0;
                    uint8_t nbRep = 0;
                    uint8_t chMaskCntl = 0;
                    
                    datarate = payload[macIndex++];
                    txPower = datarate & 0x0F;
                    datarate = ( datarate >> 4 ) & 0x0F;

                    if( ( AdrCtrlOn == false ) && 
                        ( ( ChannelsDatarate != datarate ) || ( ChannelsTxPower != txPower ) ) )
                    { // ADR disabled don't handle ADR requests if server tries to change datarate or txpower
                        // Answer the server with fail status
                        // Power ACK     = 0
                        // Data rate ACK = 0
                        // Channel mask  = 0
                        AddMacCommand( MOTE_MAC_LINK_ADR_ANS, 0, 0 );
                        break;
                    }
                    chMask = payload[macIndex++];
                    chMask |= payload[macIndex++] << 8;

                    nbRep = payload[macIndex++];
                    chMaskCntl = ( nbRep >> 4 ) & 0x07;
                    nbRep &= 0x0F;
                    if( nbRep == 0 )
                    {
                        nbRep = 1;
                    }
                    if( ( chMaskCntl == 0 ) && ( chMask == 0 ) )
                    {
                        status &= 0xFE; // Channel mask KO
                    }
                    else
                    {
                        for( i = 0; i < LORA_MAX_NB_CHANNELS; i++ )
                        {
                            if( chMaskCntl == 6 )
                            {
                                if( Channels[i].Frequency != 0 )
                                {
                                    chMask |= 1 << i;
                                }
                            }
                            else
                            {
                                if( ( ( chMask & ( 1 << i ) ) != 0 ) &&
                                    ( Channels[i].Frequency == 0 ) )
                                {// Trying to enable an undefined channel
                                    status &= 0xFE; // Channel mask KO
                                }
                            }
                        }
                    }
                    if( ( ( datarate < LORAMAC_MIN_DATARATE ) ||
                          ( datarate > LORAMAC_MAX_DATARATE ) ) == true )
                    {
                        status &= 0xFD; // Datarate KO
                    }

                    //
                    // Remark MaxTxPower = 0 and MinTxPower = 5
                    //
                    if( ( ( LORAMAC_MAX_TX_POWER <= txPower ) &&
                          ( txPower <= LORAMAC_MIN_TX_POWER ) ) == false )
                    {
                        status &= 0xFB; // TxPower KO
                    }
                    if( ( status & 0x07 ) == 0x07 )
                    {
                        ChannelsDatarate = datarate;
                        ChannelsTxPower = txPower;
                        ChannelsMask = chMask;
                        ChannelsNbRep = nbRep;
                    }
                    AddMacCommand( MOTE_MAC_LINK_ADR_ANS, status, 0 );
                }*/
                break;
            case SRV_MAC_DUTY_CYCLE_REQ:
                /*MaxDCycle = payload[macIndex++];
                AggregatedDCycle = 1 << MaxDCycle;
                AddMacCommand( MOTE_MAC_DUTY_CYCLE_ANS, 0, 0 );*/
                break;
            case SRV_MAC_RX_PARAM_SETUP_REQ:
                {/*
                    uint8_t status = 0x07;
                    int8_t datarate = 0;
                    int8_t drOffset = 0;
                    uint32_t freq = 0;
                
                    drOffset = payload[macIndex++];
                    datarate = drOffset & 0x0F;
                    drOffset = ( drOffset >> 4 ) & 0x0F;
                    
                    freq = payload[macIndex++];
                    freq |= payload[macIndex++] << 8;
                    freq |= payload[macIndex++] << 16;
                    freq *= 100;
                    
                    if( Radio.CheckRfFrequency( freq ) == false )
                    {
                        status &= 0xFE; // Channel frequency KO
                    }
                    
                    if( ( ( datarate < LORAMAC_MIN_DATARATE ) ||
                          ( datarate > LORAMAC_MAX_DATARATE ) ) == true )
                    {
                        status &= 0xFD; // Datarate KO
                    }

                    if( ( ( drOffset < 0 ) || ( drOffset > 5 ) ) == true )
                    {
                        status &= 0xFB; // Rx1DrOffset range KO
                    }
                    
                    if( ( status & 0x07 ) == 0x07 )
                    {
                        Rx2Channel.Datarate = datarate;
                        Rx2Channel.Frequency = freq;
                        Rx1DrOffset = drOffset;
                    }
                    AddMacCommand( MOTE_MAC_RX_PARAM_SETUP_ANS, status, 0 );*/
                }
                break;
            case SRV_MAC_DEV_STATUS_REQ:
                //AddMacCommand( MOTE_MAC_DEV_STATUS_ANS, BoardMeasureBatterieLevel( ), LoRaMacEventInfo.RxSnr );
                break;
            case SRV_MAC_NEW_CHANNEL_REQ:
              {
                    //uint8_t status = 0x03;
                    int8_t channelIndex = 0;
                    uint32_t freq = 0;
                    uint8_t freqb = 0;
                    ChannelParams_t chParam;
                    
                    //channelIndex: N to 15
                    MacCommandsBuffer[MacCommandsBufferIndex++] = p1;//channelIndex;//p1
                    //freq: 100MHz to 1.67GHz in 100Hz steps
                    //freq = p2/100;............................
                    //while()................................
                    /*MacCommandsBuffer[MacCommandsBufferIndex++] = ( freq ) & 0xFF;//chParam.Frequency//p2
                    MacCommandsBuffer[MacCommandsBufferIndex++] = ( freq >> 8 ) & 0xFF;//chParam.Frequency << 8;//p2 << 8 ?
                    MacCommandsBuffer[MacCommandsBufferIndex++] = ( freq >> 16 ) & 0xFF;//chParam.Frequency << 16;//p2 <<16*/
                    //Freq= 33C134E0, 33BE27A0, 33E80D20, 33AEE560
                    //868000000?
                    freq = p2;
                    debug_str("    ...command set freq = \r");
                    debug_uint(freq);
                    debug_str("\r");
                    //freq = p2/100;
                    //freq = (uint32_t)( ( double ) freq / ( double )FREQ_STEP );
                    freq = freq / 100;
                    debug_uint(freq);
                    debug_str("\r");
                    MacCommandsBuffer[MacCommandsBufferIndex++] = ( uint8_t )( ( freq >> 16 ) & 0xFF ); 
                    MacCommandsBuffer[MacCommandsBufferIndex++] = ( uint8_t )( ( freq >> 8 ) & 0xFF );
                    MacCommandsBuffer[MacCommandsBufferIndex++] = ( uint8_t )( freq & 0xFF );
                    MacCommandsBuffer[MacCommandsBufferIndex++] = p3;//chParam.DrRange.Value; //p3?
                    
                   
                }
                break;
            case SRV_MAC_RX_TIMING_SETUP_REQ:
                /*
              
              {
                    uint8_t delay = payload[macIndex++] & 0x0F;
                    
                    if( delay == 0 )
                    {
                        delay++;
                    }
                    ReceiveDelay1 = delay * 1e6;
                    ReceiveDelay2 = ReceiveDelay1 + 1e6;
                    AddMacCommand( MOTE_MAC_RX_TIMING_SETUP_ANS, 0, 0 );
                }*/
                break;
            default:
                // Unknown command. ABORT MAC commands processing
                return 1; 
    }
    if( MacCommandsBufferIndex <= 15 )
    {
      MacCommandsInNextTx = true;
      return 0;
    }
    else
    {
      return 2;//??
    }
}


void LoRaGWMacInit( LoRaGWMacEvent_t *events )
{
    LoRaGWMacEvents = events;

    LoRaGWMacEventFlags.Value = 0;
    
    LoRaGWMacEventInfo.TxAckReceived = false;
    LoRaGWMacEventInfo.TxNbRetries = 0;
    LoRaGWMacEventInfo.TxDatarate = 7;
    LoRaGWMacEventInfo.RxPort = 1;
    LoRaGWMacEventInfo.RxBuffer = NULL;
    LoRaGWMacEventInfo.RxBufferSize = 0;
    LoRaGWMacEventInfo.RxRssi = 0;
    LoRaGWMacEventInfo.RxSnr = 0;
    LoRaGWMacEventInfo.Energy = 0;
    LoRaGWMacEventInfo.DemodMargin = 0;
    LoRaGWMacEventInfo.NbGateways = 0;
    LoRaGWMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_OK;
   
    LoRaGWMacDeviceClass = CLASS_A;
    
    UpLinkCounter = 1;
    DownLinkCounter = 0;
    
    LoRaMacState = MAC_IDLE;

#if defined( USE_BAND_868 )
    ChannelsMask = LC( 1 ) + LC( 2 ) + LC( 3 ) + LC( 4 ) + LC( 5 ) + LC( 6 ) + LC( 7 ) + LC( 8 ) + LC( 9 );
#else
    ChannelsMask = LC( 1 ) + LC( 2 ) + LC( 3 );
#endif
    ChannelsTxPower = LORAMAC_MIN_TX_POWER;	//LORAMAC_DEFAULT_TX_POWER;
    ChannelsDefaultDatarate = ChannelsDatarate = LORAMAC_DEFAULT_DATARATE;
    ChannelsNbRep = 1;
    ChannelsNbRepCounter = 0;
    
    MaxDCycle = 0;
    AggregatedDCycle = 1;
    AggregatedLastTxDoneTime = 0;
    AggregatedTimeOff = 0;

    DutyCycleOn = true;

    MaxRxWindow = MAX_RX_WINDOW;
    ReceiveDelay1 = RECEIVE_DELAY1;
    ReceiveDelay2 = RECEIVE_DELAY2;
    JoinAcceptDelay1 = JOIN_ACCEPT_DELAY1;
    JoinAcceptDelay2 = JOIN_ACCEPT_DELAY2;

	TimerInit( &ChannelCheckTimer, OnChannelCheckTimerEvent );
	TimerInit( &TxDelayedTimer, OnTxDelayedTimerEvent );		//重送可能會用到
    TimerInit( &AckTimeoutTimer, OnAckTimeoutTimerEvent );		//End Device 端是用來結束等待ack, Gateway端用來 .......maybe 可以省略
	TimerInit( &TxAckTimer, OnTxAckTimerEvent );			//用來發送ack給 end device
   
    // Initialize Radio driver
    RadioEvents.TxDone = OnRadioTxDone;
    RadioEvents.RxDone = OnRadioRxDone;
    RadioEvents.RxError = OnRadioRxError;
    RadioEvents.TxTimeout = OnRadioTxTimeout;
    RadioEvents.RxTimeout = OnRadioRxTimeout;
    Radio.Init( &RadioEvents );

    // Random seed initialization
    srand( RAND_SEED );

    // Initialize channel index.
    Channel = LORA_MAX_NB_CHANNELS;

    PublicNetwork = true;
    LoRaGWMacSetPublicNetwork( PublicNetwork );
    Radio.Sleep( );
	 
}



static void LoRaMacNotify( LoRaGWMacEventFlags_t *flags, LoRaGWMacEventInfo_t *info )
{
    if( ( LoRaGWMacEvents != NULL ) && ( LoRaGWMacEvents->GWMacEvent != NULL ) )
    {
		DEBUG_STR("MAC LoRaMacNotify\r\n");
        LoRaGWMacEvents->GWMacEvent( flags, info );
    }
    flags->Value = 0;
}

static void OnMacStateCheckTimerEvent( void )		//這之function裡會加入更多判斷，或使用 LoRaGWMacEventFlags & LoRaMacState 來輔助判斷 「何時要回到上一層 的callback」
{
	DEBUG_STR("MAC OnMacStateCheckTimerEvent(ACK)\r\n");	
	if( LoRaGWMacEventFlags.Bits.Rx == 1 ){
                //DEBUG_STR("___ LoRaGWMacEventFlags.Bits.Rx == 1\r\n");
		if( SrvAckRequested == true ){
                  //DEBUG_STR("___ if SrvAckRequested == true\r\n");
			// TimerSetValue( &TxAckTimer, 0 );	//立刻傳送，用 timer觸發的原因是：預留之後可能不需要立刻傳送的空間
			// TimerStart( &TxAckTimer );		//用timer方式觸發，會當掉
			OnTxAckTimerEvent();
			return;
		}
	}
	if( LoRaGWMacEventFlags.Bits.Tx == 1 ){
	}
	
	LoRaMacNotify( &LoRaGWMacEventFlags, &LoRaGWMacEventInfo );
}


void LoRaGWStartRx()
{
// /*
    // RadioEvents.RxDone = OnRxDone;

    // Radio.Init( &RadioEvents );
// */
    Radio.SetChannel( 868000000 );

    Radio.SetRxConfig( MODEM_LORA, 0, 7, 3, 0, 8, 5, false, 0, true, 0, 0, false, true );

	Radio.Write( 0x01, 0x05);
	Radio.Rx( 0 ); // Continuous Rx
}

static uint8_t LoRaMacPrepareFrame( ChannelParams_t channel, LoRaMacHeader_t *macHdr, LoRaMacFrameCtrl_t *fCtrl, uint8_t *fOpts, uint8_t fPort, void *fBuffer, uint16_t fBufferSize )		//先宣告成 static, 之後再改
{
    DEBUG_STR("MAC LoRaMacPrepareFrame\r\n");
    uint16_t i;
    uint8_t pktHeaderLen = 0;
    uint32_t mic = 0;
    
    LoRaMacBufferPktLen = 0;
    
    NodeAckRequested = false;
    
    if( fBuffer == NULL )
    {
        fBufferSize = 0;
    }

    LoRaMacBuffer[pktHeaderLen++] = macHdr->Value;

    switch( macHdr->Bits.MType )
    {
        case FRAME_TYPE_JOIN_ACCEPT:            
            break;
        case FRAME_TYPE_DATA_CONFIRMED_DOWN:		//if set this type, EndDevice will return an ack, but..... why and when we need EndDevice return ack? = =
			break;
        case FRAME_TYPE_DATA_UNCONFIRMED_DOWN:		//Before include classB/classC, gateway TX only after recv data from EndDevice. So, in this TX session, we may send ACK if EndDevice request, or send anything we want if EndDeivce doesn't request ACK but still open R1/R2 windows. Ofcourse, we can append anything we want in ACK packet.
			// if( fCtrl->Bits.Ack ){		//This is a ACK frame.
			// }
			
            if( fOpts == NULL )
            {
                fCtrl->Bits.FOptsLen = 0;
            }	
            if( SrvAckRequested == true )
            {
                SrvAckRequested = false;
                fCtrl->Bits.Ack = 1;
            }
			
			// Adr 相關之後再處理
/*            if( fCtrl->Bits.Adr == true )
            {
                if( ChannelsDatarate == LORAMAC_MIN_DATARATE )
                {
                    AdrAckCounter = 0;
                    fCtrl->Bits.AdrAckReq = false;
                }
                else
                {
                    if( AdrAckCounter > ADR_ACK_LIMIT )
                    {
                        fCtrl->Bits.AdrAckReq = true;
                    }
                    else
                    {
                        fCtrl->Bits.AdrAckReq = false;
                    }
                    if( AdrAckCounter > ( ADR_ACK_LIMIT + ADR_ACK_DELAY ) )
                    {
                        AdrAckCounter = 0;
                        if( ChannelsDatarate > LORAMAC_MIN_DATARATE )
                        {
                            ChannelsDatarate--;
                        }
                        else
                        {
                            // Re-enable default channels LC1, LC2, LC3
                            ChannelsMask = ChannelsMask | ( LC( 1 ) + LC( 2 ) + LC( 3 ) );
                        }
                    }
                }
            }
*/
            LoRaMacBuffer[pktHeaderLen++] = ( AckDevAddr ) & 0xFF;
            LoRaMacBuffer[pktHeaderLen++] = ( AckDevAddr >> 8 ) & 0xFF;
            LoRaMacBuffer[pktHeaderLen++] = ( AckDevAddr >> 16 ) & 0xFF;
            LoRaMacBuffer[pktHeaderLen++] = ( AckDevAddr >> 24 ) & 0xFF;

			LoRaMacBuffer[pktHeaderLen++] = fCtrl->Value;

            LoRaMacBuffer[pktHeaderLen++] = DownLinkCounter & 0xFF;
            LoRaMacBuffer[pktHeaderLen++] = ( DownLinkCounter >> 8 ) & 0xFF;
			
            if( fOpts != NULL )
            {
                for( i = 0; i < fCtrl->Bits.FOptsLen; i++ )
                {
                    LoRaMacBuffer[pktHeaderLen++] = fOpts[i];
                }
            }
			// 這一段關鍵 "MacCommandsBufferIndex", 看不懂他用途，所以先 mark
            if( ( MacCommandsBufferIndex + fCtrl->Bits.FOptsLen ) <= 15 )
            {
              //DEBUG_STR("___  MacCommandsBufferIndex+FOptsLen<=15\r\n");
                if( MacCommandsInNextTx == true )
                {
                    //DEBUG_STR("___  MacCommandsInNextTx == true\r\n");
                    fCtrl->Bits.FOptsLen += MacCommandsBufferIndex;
                    
                    // Update FCtrl field with new value of OptionsLength
                    LoRaMacBuffer[0x05] = fCtrl->Value;
                    for( i = 0; i < MacCommandsBufferIndex; i++ )
                    {
                        LoRaMacBuffer[pktHeaderLen++] = MacCommandsBuffer[i];
                    }
                }
                MacCommandsInNextTx = false;
                MacCommandsBufferIndex = 0;
            }

            if( ( pktHeaderLen + fBufferSize ) > LORAMAC_PHY_MAXPAYLOAD )
            {
                return 3;
            }

            if( fBuffer != NULL )
            {
                LoRaMacBuffer[pktHeaderLen] = fPort;
                
                if( fPort == 0 )
                {
                    LoRaMacPayloadEncrypt( fBuffer, fBufferSize, LoRaMacNwkSKey, AckDevAddr, DOWN_LINK, DownLinkCounter, LoRaMacPayload );
                }
                else
                {
                    LoRaMacPayloadEncrypt( fBuffer, fBufferSize, LoRaMacAppSKey, AckDevAddr, DOWN_LINK, DownLinkCounter, LoRaMacPayload );
                }
                LoRaMacMemCpy( LoRaMacPayload, LoRaMacBuffer + pktHeaderLen + 1, fBufferSize );
            }
			LoRaMacBufferPktLen = pktHeaderLen + 1 + fBufferSize;
			
			LoRaMacComputeMic( LoRaMacBuffer, LoRaMacBufferPktLen, LoRaMacNwkSKey, AckDevAddr, DOWN_LINK, DownLinkCounter, &mic );
			
            if( ( LoRaMacBufferPktLen + LORAMAC_MFR_LEN ) > LORAMAC_PHY_MAXPAYLOAD )
            {
                return 3;
            }
            LoRaMacBuffer[LoRaMacBufferPktLen + 0] = mic & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen + 1] = ( mic >> 8 ) & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen + 2] = ( mic >> 16 ) & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen + 3] = ( mic >> 24 ) & 0xFF;

			LoRaMacBufferPktLen += LORAMAC_MFR_LEN;
            break;
        default:
            return 4;
    }

    return 0;
}



static uint8_t LoRaMacSendFrameOnChannel( ChannelParams_t channel )		//先宣告成 static, 之後再改
{
/*    LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_ERROR;
    LoRaMacEventInfo.TxDatarate = Datarates[ChannelsDatarate];

    // Radio.SetChannel( channel.Frequency );
    Radio.SetChannel( 868000000 );		//jim +-, 20150911, fixed here

    if( ChannelsDatarate == DR_7 )
    { // High Speed FSK channel
        Radio.SetTxConfig( MODEM_FSK, TxPowers[ChannelsTxPower], 25e3, 0, Datarates[ChannelsDatarate] * 1e3, 0, 5, false, true, 0, 0, false, 3e6 );
        TxTimeOnAir = Radio.TimeOnAir( MODEM_FSK, LoRaMacBufferPktLen );
    }
    else if( ChannelsDatarate == DR_6 )
    { // High speed LoRa channel
        Radio.SetTxConfig( MODEM_LORA, TxPowers[ChannelsTxPower], 0, 1, Datarates[ChannelsDatarate], 1, 8, false, true, 0, 0, false, 3e6 );
        TxTimeOnAir = Radio.TimeOnAir( MODEM_LORA, LoRaMacBufferPktLen );
    }
    else
    { // Normal LoRa channel
        // Radio.SetTxConfig( MODEM_LORA, TxPowers[ChannelsTxPower], 0, 0, Datarates[ChannelsDatarate], 1, 8, false, true, 0, 0, false, 3e6 );		//jim -+, 20150909, MUST set '7', set '12' will txtimeout
        Radio.SetTxConfig( MODEM_LORA, TxPowers[ChannelsTxPower], 0, 0, 7, 3, 8, false, true, 0, 0, false, 3e6 );
        TxTimeOnAir = Radio.TimeOnAir( MODEM_LORA, LoRaMacBufferPktLen );
    }
    
    if( MaxDCycle == 255 )
    {
        return 6;
    }
    if( MaxDCycle == 0 )
    {
        AggregatedTimeOff = 0;
    }

    LoRaMacState |= MAC_TX_RUNNING;
    // Starts the MAC layer status check timer
    TimerStart( &MacStateCheckTimer );
    
    if( MAX( Bands[channel.Band].TimeOff, AggregatedTimeOff ) > ( TimerGetCurrentTime( ) ) )
    {
        // Schedule transmission
        TimerSetValue( &TxDelayedTimer, MAX( Bands[channel.Band].TimeOff, AggregatedTimeOff ) );
        TimerStart( &TxDelayedTimer );
    }
    else
    {
        // Send now
		// Radio.Write( 0x01, 0x03);
        Radio.Send( LoRaMacBuffer, LoRaMacBufferPktLen );
    }
    return 0;
*/	
	
	Radio.SetChannel( 868000000 );		//jim +-, 20150911, fixed here
	Radio.SetTxConfig( MODEM_LORA, 0, 0, 0, 7, 3, 8, false, true, 0, 0, false, 3e6 );
	TxTimeOnAir = Radio.TimeOnAir( MODEM_LORA, LoRaMacBufferPktLen );
	// Radio.Write( 0x01, 0x03);
      debug_str("MAC Send now\r\n");
      debug_str("LoRaMacBuffer = ");
      debug_buf( LoRaMacBuffer, LoRaMacBufferPktLen);
      debug_str("LoRaMacBufferPktLen = ");
      debug_hex( LoRaMacBufferPktLen);
      debug_str("\r\n");
	Radio.Send( LoRaMacBuffer, LoRaMacBufferPktLen );
}

//
static void LoRaGWMacProcessMacCommands( uint8_t *payload, uint8_t macIndex, uint8_t commandsSize )
{
    //appPayloadStartIndex(commandsSize) = 8(macIndex) + fCtrl.Bits.FOptsLen;
    debug_str("payload[macIndex] = ");
    debug_hex( payload[macIndex]);
    debug_str("\n");
    debug_str("MAC LoRaGWMacProcessMacCommands\r\n");
    while( macIndex < commandsSize )
      {
          // Decode Frame MAC commands
       switch( payload[macIndex++] )
       {
          case MOTE_MAC_LINK_CHECK_REQ://位址02
            // No payload for this command
              int8_t GwCnt;//gateway count
              GwCnt = LoRaGWMacEventInfo.NbGateways+1;
              uint8_t Margin;//link margin, range 0~254 db
              Margin = -(-148+LoRaGWMacEventInfo.RxRssi); //Link margin = receiver's sensitivity - actual received power
              GWAddMacCommand( SRV_MAC_LINK_CHECK_ANS, Margin, GwCnt ,0);
              break;
          case MOTE_MAC_LINK_ADR_ANS:
            // Margin
              break;
          case MOTE_MAC_DUTY_CYCLE_ANS:
            // No payload for this answer
              break;
          case MOTE_MAC_RX_PARAM_SETUP_ANS:
            // Status: Datarate ACK, Channel ACK
              break;
          case MOTE_MAC_DEV_STATUS_ANS:
              // 1st byte Battery
              // 2nd byte Margin
              break;
          case MOTE_MAC_NEW_CHANNEL_ANS:
              // Status: Datarate range OK, Channel frequency OK
              break;
          case MOTE_MAC_RX_TIMING_SETUP_ANS:
              // No payload for this answer
              break;
          default:
                  // Unknown command. ABORT MAC commands processing
                  return;
        }
    }
}
	
	
void OnChannelCheckTimerEvent( void )
{
    // LoRaMacState &= ~MAC_CHANNEL_CHECK;
    // if( LoRaMacSetNextChannel( ) == 0 )
    // {
        // if( ( LoRaMacState & MAC_TX_RUNNING ) == MAC_TX_RUNNING )
        // {
           // LoRaMacSendFrameOnChannel( Channels[Channel] );
        // }
    // }
}

static void OnRadioTxDone( void )
{
	DEBUG_STR("MAC OnRadioTxDone\r\n");	
	Radio.Sleep( );
	LoRaGWMacEventFlags.Bits.Tx = 1;
	OnMacStateCheckTimerEvent();
}

static void OnRadioRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr )
{
	DEBUG_STR("MAC OnRadioRxDone\r\n");	
	LoRaMacHeader_t macHdr;
	LoRaMacFrameCtrl_t fCtrl;
	
	uint8_t pktHeaderLen = 0;
	uint32_t address = 0;
	uint16_t sequenceCounter = 0;
	int32_t sequence = 0;
	uint8_t appPayloadStartIndex = 0;
    uint8_t port = 0xFF;
    uint8_t frameLen = 0;
    uint32_t mic = 0;
    uint32_t micRx = 0;
	
	MulticastParams_t *curMulticastParams = NULL;
    uint8_t *nwkSKey = LoRaMacNwkSKey;
    uint8_t *appSKey = LoRaMacAppSKey;	
	uint32_t upLinkC = 0;
	
	bool isMicOk = false;
	
	Radio.Sleep( );
debug_str("payload = ");
debug_buf( payload, size);
debug_str("\r\n");

//debug_str("size = ");
//debug_buf( size, 2);
//debug_str("\r\n");

	macHdr.Value = payload[pktHeaderLen++];
 //debug_str("macHdr.Value = ");
//uint8_t x = macHdr.Value;
//debug_buf( x, 1);
//debug_str("\r\n");

    switch( macHdr.Bits.MType )
    {
	case FRAME_TYPE_JOIN_REQ:
                        debug_str("onRxDone FRAME_TYPE_JOIN_REQ\r\n");
			break;
			
        case FRAME_TYPE_DATA_CONFIRMED_UP:
                        debug_str("onRxDone FRAME_TYPE_DATA_CONFIRMED_UP\r\n");
        case FRAME_TYPE_DATA_UNCONFIRMED_UP:
                        debug_str("onRxDone FRAME_TYPE_DATA_UNCONFIRMED_UP\r\n");
			address = payload[pktHeaderLen++];
			address |= ( payload[pktHeaderLen++] << 8 );
			address |= ( payload[pktHeaderLen++] << 16 );
			address |= ( payload[pktHeaderLen++] << 24 );		
                         //debug_buf( LoRaGWDevAddr, 32);
                        // debug_str("\r\n");

/*			if( address != LoRaGWDevAddr )
			{					
				if( LoRaGWMacEventFlags.Bits.Multicast == 0 )
				{
					// We are not the destination of this frame.
					// LoRaMacEventFlags.Bits.Tx = 1;
					LoRaGWMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_ADDRESS_FAIL;
					// LoRaMacState &= ~MAC_TX_RUNNING;
					return;
				}
			}
			else
			{
*/				// LoRaMacEventFlags.Bits.Multicast = 0;	//?? Do I need this?
				nwkSKey = LoRaMacNwkSKey;
				appSKey = LoRaMacAppSKey;
				upLinkC = UpLinkCounter;
			// }
			if( LoRaGWMacDeviceClass != CLASS_A )
			{
				// LoRaMacState |= MAC_RX;
				//// Starts the MAC layer status check timer
				// TimerStart( &MacStateCheckTimer );
			}			
			fCtrl.Value = payload[pktHeaderLen++];
                        //debug_str("fCtrl.Value=\r\n");
                        //debug_buf( fCtrl.Value, 8);
                        //debug_str("\r\n");

			sequenceCounter |= payload[pktHeaderLen++];				//sequenceCounter, 在spec裡，叫「frame counter, FCnt」
			sequenceCounter |= payload[pktHeaderLen++] << 8;
				
			appPayloadStartIndex = 8 + fCtrl.Bits.FOptsLen;			// +8 是因為？？？？？
			
			micRx |= payload[size - LORAMAC_MFR_LEN];
			micRx |= ( payload[size - LORAMAC_MFR_LEN + 1] << 8 );
			micRx |= ( payload[size - LORAMAC_MFR_LEN + 2] << 16 );
			micRx |= ( payload[size - LORAMAC_MFR_LEN + 3] << 24 );			
			
			sequence = ( int32_t )sequenceCounter - ( int32_t )( upLinkC & 0xFFFF );	//看不懂這一段 mask 的意義
			if( sequence < 0 )
			{
                                debug_str("___ if( sequence < 0 )\r");
				// sequence reset or roll over happened
				upLinkC = ( upLinkC & 0xFFFF0000 ) | ( sequenceCounter + ( uint32_t )0x10000 );
				LoRaMacComputeMic( payload, size - LORAMAC_MFR_LEN, nwkSKey, address, UP_LINK, upLinkC, &mic );
				if( micRx == mic )
				{
					isMicOk = true;
				}
				else
				{
					isMicOk = false;
					// sequence reset
					if( LoRaGWMacEventFlags.Bits.Multicast == 1 )
					{
						// curMulticastParams->DownLinkCounter = upLinkC = sequenceCounter;
					}
					else
					{
						UpLinkCounter = upLinkC = sequenceCounter;
					}
					LoRaMacComputeMic( payload, size - LORAMAC_MFR_LEN, nwkSKey, address, UP_LINK, upLinkC, &mic );
				}
			}
			else
			{
				upLinkC = ( upLinkC & 0xFFFF0000 ) | sequenceCounter;
				LoRaMacComputeMic( payload, size - LORAMAC_MFR_LEN, nwkSKey, address, UP_LINK, upLinkC, &mic );
			}

			if( ( isMicOk == true ) ||
				( micRx == mic ) )
			{
				LoRaGWMacEventFlags.Bits.Rx = 1;
				LoRaGWMacEventInfo.RxSnr = snr;
				LoRaGWMacEventInfo.RxRssi = rssi;
				LoRaGWMacEventInfo.RxBufferSize = 0;
				AdrAckCounter = 0;							//這是用來？？？？？

				//更新 Counter value, 似乎是為了下一次收到封包時，拿來計算MIC所用
				if( LoRaGWMacEventFlags.Bits.Multicast == 1 )	//更新 Counter value, 似乎是為了下一次收到封包時，拿來計算MIC所用
				{
					// curMulticastParams->DownLinkCounter = downLinkCounter;
				}
				else
				{
					// DownLinkCounter = downLinkCounter;
				}				
				
				if( macHdr.Bits.MType == FRAME_TYPE_DATA_CONFIRMED_UP )
				{
                                        //debug_str("___ SrvAckRequested = true\r\n");
					SrvAckRequested = true;
					AckDevAddr = address;		//Global var, record where we send ACK. 但是，這寫法應該有改進空間
				}
				else
				{
					SrvAckRequested = false;
				}

				if( fCtrl.Bits.FOptsLen > 0 )
				{
                                        //debug_str(" ___ fCtrl.Bits.FOptsLen > 0,LoRaGWMacProcessMacCommands\r\n");
					// Decode Options field MAC commands
					LoRaGWMacProcessMacCommands( payload, 8, appPayloadStartIndex );//因為Mac commmand是從第8 byte開始
				}				

				if( ( ( size - 4 ) - appPayloadStartIndex ) > 0 )
				{
					port = payload[appPayloadStartIndex++];
					frameLen = ( size - 4 ) - appPayloadStartIndex;
					
					if( port == 0 )
					{
						LoRaMacPayloadDecrypt( payload + appPayloadStartIndex,
											   frameLen,
											   nwkSKey,
											   address,
											   UP_LINK,
											   upLinkC,
											   LoRaMacRxPayload );
						
						// Decode frame payload MAC commands
						LoRaGWMacProcessMacCommands( LoRaMacRxPayload, 0, frameLen );
					}
					else
					{
						LoRaMacPayloadDecrypt( payload + appPayloadStartIndex,
											   frameLen,
											   appSKey,
											   address,
											   UP_LINK,
											   upLinkC,
											   LoRaMacRxPayload );

						LoRaGWMacEventFlags.Bits.RxData = 1;
						LoRaGWMacEventInfo.RxPort = port;
						LoRaGWMacEventInfo.RxBuffer = LoRaMacRxPayload;
						LoRaGWMacEventInfo.RxBufferSize = frameLen;
                                                 //debug_str("MAC port:\r");
                                                 //debug_buf( LoRaGWMacEventInfo.RxPort, LoRaGWMacEventInfo.RxBufferSize);
                                                 //debug_str("MAC LoRaGWMacEventInfo.RxBuffer = LoRaMacRxPayload:\r\n");
						 //debug_buf( LoRaGWMacEventInfo.RxBuffer, LoRaGWMacEventInfo.RxBufferSize);
						 //debug_str("\r\n");//收Payload失敗?  by yc
					}					
				}

				
				LoRaGWMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_OK;
			}
			else
			{		
				// LoRaMacEventFlags.Bits.Tx = 1;
				LoRaGWMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_MIC_FAIL;
				// LoRaMacState &= ~MAC_TX_RUNNING;
			}					

			break;
        case FRAME_TYPE_PROPRIETARY:
			break;
        default:			
			break;
	}	
	OnMacStateCheckTimerEvent();
}

static void OnRadioTxTimeout( void )
{
	DEBUG_STR("MAC OnRadioTxTimeout\r\n");
	Radio.Sleep( );
	OnMacStateCheckTimerEvent();
}
static void OnRadioRxTimeout( void )
{
	DEBUG_STR("MAC OnRadioRxTimeout\r\n");
	Radio.Sleep( );
	OnMacStateCheckTimerEvent();
}

static void OnRadioRxError( void )
{
	DEBUG_STR("MAC OnRadioRxError\r\n");
	Radio.Sleep( );
	OnMacStateCheckTimerEvent();
}





void OnTxDelayedTimerEvent( void )
{
    DEBUG_STR("MAC OnTxDelayedTimerEvent\r\n");
    Radio.Send( LoRaGWMacBuffer, LoRaGWMacBufferPktLen );
}

static void OnAckTimeoutTimerEvent( void )
{
    DEBUG_STR("MAC OnAckTimeoutTimerEvent\r\n");
    AckTimeoutRetry = true;
    LoRaMacState &= ~MAC_ACK_REQ;
}

static void OnTxAckTimerEvent( void )
{
        DEBUG_STR("MAC OnTxAckTimerEvent\r\n");
	LoRaMacHeader_t macHdr;
    LoRaMacFrameCtrl_t fCtrl;
	ChannelParams_t channel;	
	uint8_t *fOpts = NULL;	
	uint8_t fPort = 0;
	void *fBuffer = NULL;
	uint16_t fBufferSize = 0;

	
	macHdr.Value = 0;
    fCtrl.Value = 0;
	uint8_t status = 0;

	macHdr.Bits.MType = FRAME_TYPE_DATA_UNCONFIRMED_DOWN;
	
	//這5個值不重要，只是初始狀態設定
    fCtrl.Bits.FOptsLen      = 0;
    fCtrl.Bits.FPending      = 0;
    fCtrl.Bits.Ack           = true;//false by yc
    
    fCtrl.Bits.AdrAckReq     = false;
    fCtrl.Bits.Adr           = AdrCtrlOn;
	
    // if( ( LoRaMacState & MAC_TX_RUNNING ) == MAC_TX_RUNNING )
    // {
        // return 1; // MAC is busy transmitting a previous frame
    // }
        //測試new channel
        //GWAddMacCommand(SRV_MAC_NEW_CHANNEL_REQ, 0x15, 8681000, 0x50 );
        
    //GWAddMacCommand(SRV_MAC_NEW_CHANNEL_REQ, 0x15, 868100000, 0x55 );// yc +
	status = LoRaMacPrepareFrame( channel, &macHdr, &fCtrl, fOpts, fPort, fBuffer, fBufferSize );
    if( status != 0 )
    {
        // return status;
    }
	LoRaMacSendFrameOnChannel( channel );
    // LoRaMacEventInfo.TxNbRetries = 0;
    // LoRaMacEventInfo.TxAckReceived = false;	
	
    // if( LoRaMacSetNextChannel( ) == 0 )
    // {
        // return LoRaMacSendFrameOnChannel( 0 );
    // }
    // return 5;
}




void LoRaGWMacSetPublicNetwork( bool enable )
{
    PublicNetwork = enable;
    Radio.SetModem( MODEM_LORA );
    if( PublicNetwork == true )
    {
        // Change LoRa modem SyncWord
        Radio.Write( REG_LR_SYNCWORD, LORA_MAC_PUBLIC_SYNCWORD );
    }
    else
    {
        // Change LoRa modem SyncWord
        Radio.Write( REG_LR_SYNCWORD, LORA_MAC_PRIVATE_SYNCWORD );
    }
}