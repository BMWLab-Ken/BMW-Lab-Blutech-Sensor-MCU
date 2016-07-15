/*
 / _____)             _              | |
( (____  _____ ____ _| |_ _____  ____| |__
 \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 _____) ) ____| | | || |_| ____( (___| | | |
(______/|_____)_|_|_| \__)_____)\____)_| |_|
    (C)2013 Semtech

Description: SX1272 driver specific target board functions implementation

License: Revised BSD License, see LICENSE.TXT file include in the project

Maintainer: Miguel Luis and Gregory Cristian
*/
#include "board.h"
#include "radio.h"
#include "sx1272/sx1272.h"
#include "sx1272-board.h"

/*!
 * Flag used to set the RF switch control pins in low power mode when the radio is not active.
 */
// static bool RadioIsActive = false;

#define DIO_NUM		5
static GpioIrqHandler *GpioIrqs[DIO_NUM];			//jim ++, 20150815

/*!
 * Radio driver structure initialization
 */
const struct Radio_s Radio =
{
    SX1272Init,
    SX1272GetStatus,
    SX1272SetModem,
    SX1272SetChannel,
    SX1272IsChannelFree,
    SX1272Random,
    SX1272SetRxConfig,
    SX1272SetTxConfig,
    SX1272CheckRfFrequency,
    SX1272GetTimeOnAir,
    SX1272Send,
    SX1272SetSleep,
    SX1272SetStby, 
    SX1272SetRx,
    SX1272StartCad,
    SX1272ReadRssi,
    SX1272Write,
    SX1272Read,
    SX1272WriteBuffer,
    SX1272ReadBuffer
};

/*!
 * Antenna switch GPIO pins objects
 */
Gpio_t AntRx;
Gpio_t AntTx;

void SX1272IoInit( void )
{
#if 0		//jim --		
    GpioInit( &SX1272.Spi.Nss, RADIO_NSS, PIN_OUTPUT, PIN_PUSH_PULL, PIN_PULL_UP, 1 );

    GpioInit( &SX1272.DIO0, RADIO_DIO_0, PIN_INPUT, PIN_PUSH_PULL, PIN_PULL_UP, 0 );
    GpioInit( &SX1272.DIO1, RADIO_DIO_1, PIN_INPUT, PIN_PUSH_PULL, PIN_PULL_UP, 0 );
    GpioInit( &SX1272.DIO2, RADIO_DIO_2, PIN_INPUT, PIN_PUSH_PULL, PIN_PULL_UP, 0 );
    GpioInit( &SX1272.DIO3, RADIO_DIO_3, PIN_INPUT, PIN_PUSH_PULL, PIN_PULL_UP, 0 );
    GpioInit( &SX1272.DIO4, RADIO_DIO_4, PIN_INPUT, PIN_PUSH_PULL, PIN_PULL_UP, 0 );
    GpioInit( &SX1272.DIO5, RADIO_DIO_5, PIN_INPUT, PIN_PUSH_PULL, PIN_PULL_UP, 0 );
#endif	
	sFLASH_Init();
}

void SX1272IoIrqInit( DioIrqHandler **irqHandlers )
{
#if 0	//jim --, 20150815	
    GpioSetInterrupt( &SX1272.DIO0, IRQ_RISING_EDGE, IRQ_HIGH_PRIORITY, irqHandlers[0] );
    GpioSetInterrupt( &SX1272.DIO1, IRQ_RISING_EDGE, IRQ_HIGH_PRIORITY, irqHandlers[1] );
    GpioSetInterrupt( &SX1272.DIO2, IRQ_RISING_EDGE, IRQ_HIGH_PRIORITY, irqHandlers[2] );
    GpioSetInterrupt( &SX1272.DIO3, IRQ_RISING_EDGE, IRQ_HIGH_PRIORITY, irqHandlers[3] );
    GpioSetInterrupt( &SX1272.DIO4, IRQ_RISING_EDGE, IRQ_HIGH_PRIORITY, irqHandlers[4] );
    GpioSetInterrupt( &SX1272.DIO5, IRQ_RISING_EDGE, IRQ_HIGH_PRIORITY, irqHandlers[5] );
#endif	

	uint8_t i;
	EXTI_InitTypeDef EXTI_InitStructure;
	GPIO_InitTypeDef GPIO_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC, ENABLE);	
	
    // for(i=0; i<sizeof(outputpins); i+=2) {
		// GPIO_InitStructure.GPIO_Pin = outputpins[i+1];
		// GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
		// GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;		//??GPIO_Mode_Out_PP
		// GPIO_Init(GPIOx(outputpins[i]), &GPIO_InitStructure);		
		
        // hw_set_pin(GPIOx(outputpins[i]), outputpins[i+1], 0);
    // }	
	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPD;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	GPIO_EXTILineConfig(GPIO_PortSourceGPIOA, GPIO_PinSource2);

	EXTI_InitStructure.EXTI_Line = EXTI_Line2;
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;  
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

	NVIC_InitStructure.NVIC_IRQChannel = EXTI2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x0F;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x0F;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);	

	//-----------------------------------------------------------------------------
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPD;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource0);

	EXTI_InitStructure.EXTI_Line = EXTI_Line0;
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;  
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

	NVIC_InitStructure.NVIC_IRQChannel = EXTI0_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x0F;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x0F;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);	

	//-----------------------------------------------------------------------------
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPD;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource1);

	EXTI_InitStructure.EXTI_Line = EXTI_Line1;
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;  
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

	NVIC_InitStructure.NVIC_IRQChannel = EXTI1_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0x0F;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0x0F;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);	

	for(i=0; i<DIO_NUM; i++){
		GpioIrqs[i] = irqHandlers[i];
	}	
}

void SX1272IoDeInit( void )
{
    GpioInit( &SX1272.Spi.Nss, RADIO_NSS, PIN_OUTPUT, PIN_PUSH_PULL, PIN_PULL_UP, 1 );

    GpioInit( &SX1272.DIO0, RADIO_DIO_0, PIN_INPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &SX1272.DIO1, RADIO_DIO_1, PIN_INPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &SX1272.DIO2, RADIO_DIO_2, PIN_INPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &SX1272.DIO3, RADIO_DIO_3, PIN_INPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &SX1272.DIO4, RADIO_DIO_4, PIN_INPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &SX1272.DIO5, RADIO_DIO_5, PIN_INPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
}

uint8_t SX1272GetPaSelect( uint32_t channel )
{
    return RF_PACONFIG_PASELECT_RFO;
}

void SX1272SetAntSwLowPower( bool status )
{
    // if( RadioIsActive != status )
    // {
        // RadioIsActive = status;
    
        // if( status == false )
        // {
            // SX1272AntSwInit( );
        // }
        // else
        // {
            // SX1272AntSwDeInit( );
        // }
    // }
}
#if 0
void SX1272AntSwInit( void )
{
    GpioInit( &AntTx, RADIO_ANT_SWITCH_TX, PIN_OUTPUT, PIN_PUSH_PULL, PIN_PULL_UP, 0 );
    GpioInit( &AntRx, RADIO_ANT_SWITCH_RX, PIN_OUTPUT, PIN_PUSH_PULL, PIN_PULL_UP, 1 );
}

void SX1272AntSwDeInit( void )
{
    GpioInit( &AntTx, RADIO_ANT_SWITCH_TX, PIN_ANALOGIC, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &AntRx, RADIO_ANT_SWITCH_RX, PIN_ANALOGIC, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
}
#endif
void SX1272SetAntSw( uint8_t rxTx )
{
    if( SX1272.RxTx == rxTx )
    {
        return;
    }

    SX1272.RxTx = rxTx;

    if( rxTx != 0 ) // 1: TX, 0: RX
    {
        // GpioWrite( &AntRx, 0 );
        // GpioWrite( &AntTx, 1 );
    }
    else
    {
        // GpioWrite( &AntRx, 1 );
        // GpioWrite( &AntTx, 0 );
    }
}

bool SX1272CheckRfFrequency( uint32_t frequency )
{
    // Implement check. Currently all frequencies are supportted
    return true;
}

void EXTI0_IRQHandler () {
    if( EXTI_GetITStatus( EXTI_Line0 ) != RESET )
    {
        if( GpioIrqs[0] != NULL )
        {
            GpioIrqs[0]( );
        }
        EXTI_ClearITPendingBit( EXTI_Line0 );
    }
}

void EXTI1_IRQHandler () {
    if( EXTI_GetITStatus( EXTI_Line1 ) != RESET )
    {
        if( GpioIrqs[1] != NULL )
        {
            GpioIrqs[1]( );
        }
        EXTI_ClearITPendingBit( EXTI_Line1 );
    }
}

void EXTI2_IRQHandler () {
    if( EXTI_GetITStatus( EXTI_Line2 ) != RESET )
    {
        if( GpioIrqs[2] != NULL )
        {
            GpioIrqs[2]( );
        }
        EXTI_ClearITPendingBit( EXTI_Line2 );
    }
	
}
