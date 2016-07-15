/*



*/
#ifndef __LORAGWMAC_H__
#define __LORAGWMAC_H__

// Includes board dependent definitions such as channels frequencies
#include "LoRaMac-board.h"

#if defined(__CC_ARM) || defined(__GNUC__)
#define PACKED                                      __attribute__( ( __packed__ ) )
#elif defined( __ICCARM__ )
#define PACKED                                      __packed
#else
    #warning Not supported compiler type
#endif

typedef union
{
    uint8_t Value;
    struct
    {
        uint8_t Tx              : 1;
        uint8_t Rx              : 1;
        uint8_t RxData          : 1;
        uint8_t Multicast       : 1;
        uint8_t RxSlot          : 2;
        uint8_t LinkCheck       : 1;
        uint8_t JoinAccept      : 1;
    }PACKED Bits;
}PACKED LoRaGWMacEventFlags_t;

typedef enum
{
    LORAGWMAC_EVENT_INFO_STATUS_OK = 0,
    LORAGWMAC_EVENT_INFO_STATUS_ERROR,
    LORAGWMAC_EVENT_INFO_STATUS_TX_TIMEOUT,
    LORAGWMAC_EVENT_INFO_STATUS_RX2_TIMEOUT,
    LORAGWMAC_EVENT_INFO_STATUS_RX2_ERROR,
    LORAGWMAC_EVENT_INFO_STATUS_JOIN_FAIL,
    LORAGWMAC_EVENT_INFO_STATUS_DOWNLINK_FAIL,
    LORAGWMAC_EVENT_INFO_STATUS_ADDRESS_FAIL,
    LORAGWMAC_EVENT_INFO_STATUS_MIC_FAIL,
}PACKED LoRaGWMacEventInfoStatus_t;

typedef struct
{
    LoRaGWMacEventInfoStatus_t Status;
    bool TxAckReceived;
    uint8_t TxNbRetries;
    uint8_t TxDatarate;
    uint8_t RxPort;
    uint8_t *RxBuffer;
    uint8_t RxBufferSize;
    int16_t RxRssi;
    uint8_t RxSnr;
    uint16_t Energy;
    uint8_t DemodMargin;
    uint8_t NbGateways;
}PACKED LoRaGWMacEventInfo_t;


typedef struct sLoRaGWMacEvent
{
    void ( *GWMacEvent )( LoRaGWMacEventFlags_t *flags, LoRaGWMacEventInfo_t *info );
}PACKED LoRaGWMacEvent_t;

void LoRaGWMacInit( LoRaGWMacEvent_t *events );
void LoRaGWMacSetPublicNetwork( bool enable );
void LoRaGWStartRx();
uint8_t LoRaMacSendFrameOnChannel( ChannelParams_t channel );
uint8_t LoRaMacPrepareFrame( ChannelParams_t channel,LoRaMacHeader_t *macHdr, LoRaMacFrameCtrl_t *fCtrl, uint8_t *fOpts, uint8_t fPort, void *fBuffer, uint16_t fBufferSize );
#endif // __LORAGWMAC_H__
