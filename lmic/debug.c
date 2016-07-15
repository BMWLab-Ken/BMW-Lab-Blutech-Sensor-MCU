/*******************************************************************************
 * Copyright (c) 2014-2015 IBM Corporation.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    IBM Zurich Research Lab - initial API, implementation and documentation
 *******************************************************************************/

#include "debug.h"
#include "platform_config.h"	//jim
#include "stm32f10x_gpio.h"	//jim
#include "stm32f10x_rcc.h"	//jim

#define LED_PORT        GPIOA // use GPIO PA8 (LED4 on IMST, P11/PPS/EXT1_10/GPS6 on Blipper)
#define LED_PIN         8
#define USART_TX_PORT   GPIOA
#define USART_TX_PIN    9
#define GPIO_AF_USART1  0x07



void debug_init () {

	GPIO_InitTypeDef GPIO_InitStructure;	//jim
	USART_InitTypeDef USART_InitStructure;

        RCC_APB2PeriphClockCmd(USARTy_GPIO_CLK | USARTz_GPIO_CLK | RCC_APB2Periph_AFIO , ENABLE);
	RCC_APB2PeriphClockCmd(USARTy_CLK, ENABLE);
	RCC_APB1PeriphClockCmd(USARTz_CLK, ENABLE);
        
	GPIO_InitStructure.GPIO_Pin = USARTy_TxPin;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;	
	GPIO_Init(USARTy_GPIO, &GPIO_InitStructure);
        
        GPIO_InitStructure.GPIO_Pin = USARTy_RxPin;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        GPIO_Init(USARTy_GPIO, &GPIO_InitStructure);
        
        USART_InitStructure.USART_BaudRate = 115200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
        
        /* Configure USARTy */
	USART_Init(USARTy, &USART_InitStructure);

	/* Enable the USARTy */
	USART_Cmd(USARTy, ENABLE);
  
        USART_ITConfig(USARTy, USART_IT_RXNE, ENABLE);
    
        NVIC_EnableIRQ(USARTy_IRQn);
        
        
        GPIO_InitStructure.GPIO_Pin = USARTz_TxPin;
        GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;	
        GPIO_Init(USARTz_GPIO, &GPIO_InitStructure);

        
        GPIO_InitStructure.GPIO_Pin = USARTz_RxPin;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
        GPIO_Init(USARTz_GPIO, &GPIO_InitStructure);
        
        
        USART_InitStructure.USART_BaudRate = 115200;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits = USART_StopBits_1;
	USART_InitStructure.USART_Parity = USART_Parity_No;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

	/* Configure USARTz */
	USART_Init(USARTz, &USART_InitStructure);

	/* Enable the USARTz */
	USART_Cmd(USARTz, ENABLE);
  
        USART_ITConfig(USARTz, USART_IT_RXNE, ENABLE);
    
        NVIC_EnableIRQ(USARTz_IRQn);
        
        
        

  // print banner
    debug_str("\r\n============== DEBUG STARTED ==============\r\n");
}


void debug_led (uint8_t val) {
    // hw_set_pin(LED_PORT, LED_PIN, val);
}


void debug_char (uint8_t c) {
    while( !(USART3->SR & USART_SR_TXE) );    
    USART3->DR = c;
}
void debug_char_UART1 (uint8_t c) {
    while( !(USART1->SR & USART_SR_TXE) );    
    USART1->DR = c;
}
void debug_hex (uint8_t b) {
    debug_char("0123456789ABCDEF"[b>>4]);
    debug_char("0123456789ABCDEF"[b&0xF]);
}


void debug_buf (const uint8_t* buf, uint16_t len) {
    while(len--) {
        debug_hex(*buf++);
        debug_char(' ');
    }
    debug_char('\n');
}

void debug_buf_UART1 (const uint8_t* buf, uint16_t len) {
    while(len--) {
        debug_char_UART1(*buf++);
    }
}

void debug_uint (uint32_t v) {
    for(s1_t n=24; n>=0; n-=8) {
        debug_hex(v>>n);
    }
}

void debug_u64int (uint64_t v) {
    for(s1_t n=56; n>=0; n-=8) {
        debug_hex(v>>n);
    }
}

void debug_str (const uint8_t* str) {
    while(*str) {
        debug_char(*str++);
    }
}

void debug_val (const uint8_t* label, u4_t val) {
    debug_str(label);
    debug_uint(val);
    debug_char('\r');
    debug_char('\n');
}

void debug_event (int ev) {
    static const uint8_t* evnames[] = {
        [EV_SCAN_TIMEOUT]   = "SCAN_TIMEOUT",
        [EV_BEACON_FOUND]   = "BEACON_FOUND",
        [EV_BEACON_MISSED]  = "BEACON_MISSED",
        [EV_BEACON_TRACKED] = "BEACON_TRACKED",
        [EV_JOINING]        = "JOINING",
        [EV_JOINED]         = "JOINED",
        [EV_RFU1]           = "RFU1",
        [EV_JOIN_FAILED]    = "JOIN_FAILED",
        [EV_REJOIN_FAILED]  = "REJOIN_FAILED",
        [EV_TXCOMPLETE]     = "TXCOMPLETE",
        [EV_LOST_TSYNC]     = "LOST_TSYNC",
        [EV_RESET]          = "RESET",
        [EV_RXCOMPLETE]     = "RXCOMPLETE",
        [EV_LINK_DEAD]      = "LINK_DEAD",
        [EV_LINK_ALIVE]     = "LINK_ALIVE",
    };
    debug_str(evnames[ev]);
    debug_char('\r');
    debug_char('\n');
}
