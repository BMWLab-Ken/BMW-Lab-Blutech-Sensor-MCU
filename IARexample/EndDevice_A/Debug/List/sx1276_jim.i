



typedef unsigned char byte;
typedef unsigned char boolean;
typedef unsigned int uint32_t;
typedef unsigned short uint16_t;
typedef unsigned char uint8_t;

typedef int int32_t;
typedef short int16_t;
typedef signed char int8_t;





int millis();
void delay(uint32_t nCount);

























































 

typedef struct 
{
	
	
 
	uint8_t dst;

	
	
 
	uint8_t src;

	
	
 
	uint8_t packnum;

	
	
 
	uint8_t length;

	
	
 
	uint8_t data[251];		

	
	
 
	uint8_t retry;
	
} pack;



 





 

	
  	


 
	uint8_t ON( void );

	
  	


 
	void OFF();

	
  	


 
	byte readReg( byte address );

	
  	


 
	void writeReg(byte address, byte data);

	
  	


 
	void clearFlags();

	
  	


 
	uint8_t setLORA();

	
  	


 
	uint8_t setFSK();

	
  	




 
	uint8_t getMode();

	
  	






 
	int8_t setMode(uint8_t mode);

	
  	




 
	uint8_t	getHeader();

	
  	


 
	int8_t	setHeaderON();

	
  	


 
	int8_t	setHeaderOFF();

	
  	



 
	uint8_t	getCRC();

	
  	


 
	uint8_t	setCRC_ON();

	
  	


 
	uint8_t	setCRC_OFF();

	
  	


 
	boolean	isSF(uint8_t spr);

	
  	


 
	int8_t	getSF();

	
  	



 
	uint8_t	setSF(uint8_t spr);

	
  	


 
	boolean	isBW(uint16_t band);

	
  	



 
	int8_t	getBW();

	
  	




 
	int8_t setBW(uint16_t band);

	
  	


 
	boolean	isCR(uint8_t cod);

	
  	



 
	int8_t	getCR();

	
  	




 
	int8_t	setCR(uint8_t cod);


	
  	


 
	boolean isChannel(uint32_t ch);

	
  	


 
	uint8_t getChannel();

	
  	



 
	int8_t setChannel(uint32_t ch);

	
  	


 
	uint8_t getPower();

	
  	




 
	int8_t setPower(char p);

	
  	



 
	int8_t setPowerNum(uint8_t pow);

	
  	


 
	uint8_t getPreambleLength();

	
  	



 
	uint8_t setPreambleLength(uint16_t l);

	
  	



 
	uint8_t getPayloadLength();

	
  	



 
	int8_t setPacketLength();

	
  	




 
	

	
  	


 
	uint8_t getNodeAddress();

	
  	



 
	int8_t setNodeAddress(uint8_t addr);

	
  	


 
	int8_t getSNR();

	
  	


 
	uint8_t getRSSI();

	
  	



 
	int16_t getRSSIpacket();

	
	



 
	uint8_t setRetries(uint8_t ret);

	
	


 
	uint8_t getMaxCurrent();

	
	



 
	int8_t setMaxCurrent(uint8_t rate);

	
  	
















 
	uint8_t getRegs();

	
	



 
	uint8_t truncPayload(uint16_t length16);

	
	


 
	uint8_t setACK();

	
  	


 
	uint8_t receive();

	
  	


 
	uint8_t receivePacketMAXTimeout();

	
  	


 
	

	
  	


 
	uint8_t receivePacketTimeout(uint32_t wait);

	
  	


 
	uint8_t receivePacketMAXTimeoutACK();

	
  	


 
	

	
  	


 
	uint8_t receivePacketTimeoutACK(uint16_t wait);

	
  	


 
	

	
  	


 
	uint8_t receiveAll(uint16_t wait);

	
  	


 
	

	
  	



 
	boolean	availableData(uint32_t wait);

	
	



 
	uint8_t setPacket(uint8_t dest, char *payload);

	
	



 
	

	
	


 
	uint8_t getPacketMAXTimeout();

	
	


 
	

	
	



 
	int8_t getPacket(uint32_t wait);

	
	


 
	uint8_t sendWithMAXTimeout();

	
	


 
	uint8_t sendWithTimeout();

	
	


 
	

	
	



 
	uint8_t sendPacketMAXTimeout(uint8_t dest, char *payload);

	
	




 
	


	
	



 
	uint8_t sendPacketTimeout(uint8_t dest, char *payload);

	
	




 
	

	
	




 
	

	
	





 
	

	
	



 
	uint8_t sendPacketMAXTimeoutACK(uint8_t dest, char *payload);

	
	




 
	

	
	



 
	uint8_t sendPacketTimeoutACK(uint8_t dest, char *payload);

	
	




 
	

	
	




 
	

	
	





 
	

	
  	


 
	int8_t setDestination(uint8_t dest);

	
  	


 
	uint8_t setTimeout();

	
  	


 
	uint8_t setPayload(char *payload);

	
  	


 
	

	
	


 
	

 	
	



 
	uint8_t getACK(uint16_t wait);

	
	



 
	uint8_t sendPacketMAXTimeoutACKRetries(uint8_t dest, char *payload);

	
	




 
	

	
	



 
	uint8_t sendPacketTimeoutACKRetries(uint8_t dest, char *payload);

	
	




 
	

	
	




 
	

	
	





 
	

	
	


 
	uint8_t getTemp();

	void maxWrite16();
	

	
	
	
	
  	
 
typedef struct
{	
	uint8_t _bandwidth;

	
	
	
	
	
  	
 
	uint8_t _codingRate;

	
	
	
	
	
	
	
	
  	
 
	uint8_t _spreadingFactor;

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
  	
 
	uint32_t _channel;

	
	
  	
 
	uint8_t _power;

	
	
  	
 
	int8_t _SNR;

	
	
  	
 
	int8_t _RSSI;

	
	
  	
 
	int16_t _RSSIpacket;

	
	
  	
 
	uint16_t _preamblelength;

	
	
  	
 
	uint16_t _payloadlength;

	
	
  	
 
	uint8_t _nodeAddress;

	
	
  	
 
	uint8_t _header;

	
	
  	
 
	uint8_t _hreceived;

	
	
  	
 
	uint8_t _CRC;

	
	
  	
 
	uint8_t _destination;

	
	
  	
 
	uint8_t _packetNumber;

	
	
  	
 
   	uint8_t _reception;

	
	
  	
 
   	uint8_t _retries;

   	
	
  	
 
   	uint8_t _maxRetries;

   	
	
  	
 
   	uint8_t _maxCurrent;

	
	
  	
 
	uint8_t _modem;

	
	
  	
 
	pack packet_sent;

	
	
  	
 
	pack packet_received;

	
	
  	
 
	pack ACK;

	
	
  	
 
	int _temp;

	
	
  	
 
	uint16_t _sendTime;

	

	char txbuf[2];
	char rxbuf[2];
} SX1276;













 












typedef unsigned char      bit_t;
typedef unsigned char      u1_t;
typedef   signed char      s1_t;
typedef unsigned short     u2_t;
typedef          short     s2_t;
typedef unsigned int       u4_t;
typedef          int       s4_t;
typedef unsigned long long u8_t;
typedef          long long s8_t;
typedef unsigned int       uint;
typedef const char* str_t;

 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 












 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 





                 



  

                 













 

   



                 



























 


  #pragma system_include

 
 
 


  #pragma system_include

 

   

 

   #pragma system_include






 




 

 


 


 

 

 

 

 

 

 

 

 

 














 












 




















 










 




















































































































 


 










 





















 















 













 








 












 











 










 









 











 









 









 









 









 














 














 
















 












 








 











 










 









 









 









 









 









 









 









 









 







 




 









 




 





 
















































 













 






 


   

  







 





 





 




 



 





 




 



 












 
   






 
  #pragma language = save 
  #pragma language = extended
  #pragma language = restore






 





 




 





 








                 




















 


                 

 

 
 

 

 

 

 



                 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 





 

                                 





                                 








                 

                 

                 

                 
                 



                 
                                 


  #pragma language=save
  #pragma language=extended
  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;
  #pragma language=restore

  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;



                 

typedef signed int  _Ptrdifft;
typedef unsigned int     _Sizet;

 

                 
  typedef _VA_LIST __Va_list;


__intrinsic __nounwind void __iar_Atexit(void (*)(void));


  typedef struct
  {        
    unsigned int _Wchar;
    unsigned int _State;
  } _Mbstatet;





typedef struct
{        
  _Longlong _Off;     
  _Mbstatet _Wstate;
} _Fpost;




                 














 


  #pragma system_include





 






















































































 

 


  
 

   


  





  #pragma language=save 
  #pragma language=extended
  __intrinsic __nounwind void __iar_dlib_perthread_initialize(void  *);
  __intrinsic __nounwind void  *__iar_dlib_perthread_allocate(void);
  __intrinsic __nounwind void __iar_dlib_perthread_destroy(void);
  __intrinsic __nounwind void __iar_dlib_perthread_deallocate(void  *);



  #pragma segment = "__DLIB_PERTHREAD" 
  #pragma segment = "__DLIB_PERTHREAD_init" 









   
  void  *__iar_dlib_perthread_access(void  *);
  #pragma language=restore








     
  



   

  


  
  typedef void *__iar_Rmtx;
  
  
  __intrinsic __nounwind void __iar_system_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxunlock(__iar_Rmtx *m);

  __intrinsic __nounwind void __iar_file_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxunlock(__iar_Rmtx *m);

  
 
  __intrinsic __nounwind void __iar_clearlocks(void);



  



  


  typedef unsigned _Once_t;

  








                 


                 
  
  
    
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock(unsigned int);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock(unsigned int);

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamicfilelock(__iar_Rmtx *);
  
  

                 


                 







 
 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 






                 
typedef _Sizet size_t;

typedef unsigned int __data_size_t;













 


  #pragma system_include


  
  

  





 


  




 




  


 

  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memcpy(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memcpy(_D, _S, _N);
    return _D;
  }

  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memmove(void * _D, const void * _S, size_t _N)
  {
    __aeabi_memmove(_D, _S, _N);
    return _D;
  }

  #pragma inline=forced_no_body
  __intrinsic __nounwind void * memset(void * _D, int _C, size_t _N)
  {
    __aeabi_memset(_D, _N, _C);
    return _D;
  }

  
  




                 

                 

_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        memcmp(const void *, const void *,
                                                size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memcpy(void *, 
                                                const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind void *     memmove(void *, const void *, size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), returns 1")    __intrinsic __nounwind void *     memset(void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strcat(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strcmp(const char *, const char *);
_Pragma("function_effects = no_write(1,2)")     __intrinsic __nounwind int        strcoll(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strcpy(char *, 
                                                const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strcspn(const char *, const char *);
                 __intrinsic __nounwind char *     strerror(int);
_Pragma("function_effects = no_state, no_errno, no_write(1)")      __intrinsic __nounwind size_t     strlen(const char *);
_Pragma("function_effects = no_state, no_errno, no_write(2), returns 1")    __intrinsic __nounwind char *     strncat(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind int        strncmp(const char *, const char *, 
                                                 size_t);
_Pragma("function_effects = no_state, no_errno, no_read(1), no_write(2), returns 1") __intrinsic __nounwind char *     strncpy(char *, 
                                                 const char *, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)")   __intrinsic __nounwind size_t     strspn(const char *, const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind char *     strtok(char *, 
                                                const char *);
_Pragma("function_effects = no_write(2)")        __intrinsic __nounwind size_t     strxfrm(char *, 
                                                 const char *, size_t);

  _Pragma("function_effects = no_write(1)")      __intrinsic __nounwind char *   strdup(const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strcasecmp(const char *, const char *);
  _Pragma("function_effects = no_write(1,2)")   __intrinsic __nounwind int      strncasecmp(const char *, const char *, 
                                                   size_t);
  _Pragma("function_effects = no_state, no_errno, no_write(2)")    __intrinsic __nounwind char *   strtok_r(char *, const char *, char **);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind size_t   strnlen(char const *, size_t);



  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *memchr(const void *_S, int _C, size_t _N);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strpbrk(const char *_S, const char *_P);
  _Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *strrchr(const char *_S, int _C);
  _Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *strstr(const char *_S, const char *_P);


                 

                 

_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind void *__iar_Memchr(const void *, int, size_t);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strchr(const char *, int);
               __intrinsic __nounwind char *__iar_Strerror(int, char *);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strpbrk(const char *, const char *);
_Pragma("function_effects = no_state, no_errno, no_write(1)")    __intrinsic __nounwind char *__iar_Strrchr(const char *, int);
_Pragma("function_effects = no_state, no_errno, no_write(1,2)") __intrinsic __nounwind char *__iar_Strstr(const char *, const char *);


                 
                 
    #pragma inline
    void *memchr(const void *_S, int _C, size_t _N)
    {
      return (__iar_Memchr(_S, _C, _N));
    }

    #pragma inline
    char *strchr(const char *_S, int _C)
    {
      return (__iar_Strchr(_S, _C));
    }

    #pragma inline
    char *strpbrk(const char *_S, const char *_P)
    {
      return (__iar_Strpbrk(_S, _P));
    }

    #pragma inline
    char *strrchr(const char *_S, int _C)
    {
      return (__iar_Strrchr(_S, _C));
    }

    #pragma inline
    char *strstr(const char *_S, const char *_P)
    {
      return (__iar_Strstr(_S, _P));
    }

  #pragma inline
  char *strerror(int _Err)
  {
    return (__iar_Strerror(_Err, 0));
  }









 









 




 
void hal_init (void);



 
void hal_pin_nss (u1_t val);



 
void hal_pin_rxtx (u1_t val);



 
void hal_pin_rst (u1_t val);





 
u1_t hal_spi (u1_t outval);





 
void hal_disableIRQs (void);



 
void hal_enableIRQs (void);



 
void hal_sleep (void);



 
u4_t hal_ticks (void);



 
void hal_waitUntil (u4_t time);





 
u1_t hal_checkTimer (u4_t targettime);





 
void hal_failed (void);



typedef     struct osjob_t osjob_t;
typedef      struct band_t band_t;
typedef   struct chnldef_t chnldef_t;
typedef   struct rxsched_t rxsched_t;
typedef   struct bcninfo_t bcninfo_t;
typedef        const u1_t* xref2cu1_t;
typedef              u1_t* xref2u1_t;



extern u4_t AESAUX[];
extern u4_t AESKEY[];

u1_t radio_rand1 (void);


void radio_init (void);
void radio_irq_handler (u1_t dio);
void os_init (void);
void os_runloop (void);






typedef s4_t  ostime_t;




struct osjob_t;  
typedef void (*osjobcb_t) (struct osjob_t*);
struct osjob_t {
    struct osjob_t* next;
    ostime_t deadline;
    osjobcb_t  func;
};
typedef osjob_t* xref2osjob_t;



void os_getDevKey (xref2u1_t buf);
void os_getArtEui (xref2u1_t buf);
void os_getDevEui (xref2u1_t buf);
void os_setCallback (xref2osjob_t job, osjobcb_t cb);
void os_setTimedCallback (xref2osjob_t job, ostime_t time, osjobcb_t cb);
void os_clearCallback (xref2osjob_t job);
ostime_t os_getTime (void);
uint os_getTimeSecs (void);
void os_radio (u1_t mode);
u1_t os_getBattLevel (void);


u4_t os_rlsbf4 (xref2cu1_t buf);

void os_wlsbf4 (xref2u1_t buf, u4_t value);

u4_t os_rmsbf4 (xref2cu1_t buf);

void os_wmsbf4 (xref2u1_t buf, u4_t value);

u2_t os_rlsbf2 (xref2cu1_t buf);

void os_wlsbf2 (xref2u1_t buf, u2_t value);


u2_t os_crc16 (xref2u1_t d, uint len);






u4_t os_aes (u1_t mode, xref2u1_t buf, u2_t len);




static uint8_t FSK = 0;



const uint8_t LORA_SLEEP_MODE = 0x80;
const uint8_t LORA_STANDBY_MODE = 0x81;
const uint8_t LORA_TX_MODE = 0x83;
const uint8_t LORA_RX_MODE = 0x85;
const uint8_t LORA_STANDBY_FSK_REGS_MODE = 0xC1;


const uint8_t FSK_SLEEP_MODE = 0x00;
const uint8_t FSK_STANDBY_MODE = 0x01;
const uint8_t FSK_TX_MODE = 0x03;
const uint8_t FSK_RX_MODE = 0x05;



const uint8_t HEADER_ON = 0;
const uint8_t HEADER_OFF = 1;
const uint8_t CRC_ON = 1;
const uint8_t CRC_OFF = 0;
const uint8_t LORA = 1;

const uint8_t BROADCAST_0 = 0x00;
const uint8_t MAX_LENGTH = 255;
const uint8_t MAX_PAYLOAD = 251;
const uint8_t MAX_LENGTH_FSK = 64;
const uint8_t MAX_PAYLOAD_FSK = 60;
const uint8_t ACK_LENGTH = 5;
const uint8_t OFFSET_PAYLOADLENGTH = 5;
const uint8_t OFFSET_RSSI = 137;
const uint8_t NOISE_FIGURE = 6.0;
const uint8_t NOISE_ABSOLUTE_ZERO = 174.0;
const uint16_t MAX_TIMEOUT = 8000;		
const uint16_t MAX_WAIT = 12000;		
const uint8_t MAX_RETRIES = 5;
const uint8_t CORRECT_PACKET = 0;
const uint8_t INCORRECT_PACKET = 1;

const double SignalBwLog[] =
{
    5.0969100130080564143587833158265,
    5.397940008672037609572522210551,
    5.6989700043360188047862611052755
};

SX1276 sx1276;	


int millis(){
	return (int)os_getTime();
}


void delay(uint32_t nCount)
{
  uint32_t index = 0; 
  for(index = (34000 * nCount); index != 0; index--)
  {
  }
}

void SX1276_init(){
		sx1276._bandwidth = 0x00;
		sx1276._codingRate = 0x01;
		sx1276._spreadingFactor = 0x07;
		sx1276._channel = 0xE4C000;
		sx1276._header = HEADER_ON;
		sx1276._CRC = CRC_OFF;
		sx1276._modem = FSK;
		sx1276._power = 15;
		sx1276._packetNumber = 0;
		sx1276._reception = CORRECT_PACKET;
		sx1276._retries = 0;
		sx1276._maxRetries = 3;
		sx1276.packet_sent.retry = sx1276._retries;	
}


uint8_t setLORA()
{
    uint8_t state = 2;
    byte st0;


	writeReg(0x01, FSK_SLEEP_MODE);    
	writeReg(0x01, LORA_SLEEP_MODE);    
	writeReg(0x01, LORA_STANDBY_MODE);	

	writeReg(0x23, MAX_LENGTH);

	delay(100);

	st0 = readReg( 0x01 );	
	if( st0 == LORA_STANDBY_MODE )
	{ 
		sx1276._modem = LORA;
		state = 0;
	}
	else
	{ 
		sx1276._modem = FSK;
		state = 1;
	}
	return state;
}


uint8_t ON()
{
	uint8_t state = 2;
	
 

  
  state = setLORA();

	
	writeReg(0x0, 0x0);
	writeReg(0x1, 0x81);
	writeReg(0x2, 0x1A);
	writeReg(0x3, 0xB);
	writeReg(0x4, 0x0);
	writeReg(0x5, 0x52);
	writeReg(0x6, 0xD8);
	writeReg(0x7, 0x99);
	writeReg(0x8, 0x99);
	writeReg(0x9, 0x0);
	writeReg(0xA, 0x9);
	writeReg(0xB, 0x3B);
	writeReg(0xC, 0x23);
	writeReg(0xD, 0x1);
	writeReg(0xE, 0x80);
	writeReg(0xF, 0x0);
	writeReg(0x10, 0x0);
	writeReg(0x11, 0x0);
	writeReg(0x12, 0x0);
	writeReg(0x13, 0x0);
	writeReg(0x14, 0x0);
	writeReg(0x15, 0x0);
	writeReg(0x16, 0x0);
	writeReg(0x17, 0x0);
	writeReg(0x18, 0x10);
	writeReg(0x19, 0x0);
	writeReg(0x1A, 0x0);
	writeReg(0x1B, 0x0);
	writeReg(0x1C, 0x0);
	writeReg(0x1D, 0x4A);
	writeReg(0x1E, 0x97);
	writeReg(0x1F, 0xFF);
	writeReg(0x20, 0x0);
	writeReg(0x21, 0x8);
	writeReg(0x22, 0xFF);
	writeReg(0x23, 0xFF);
	writeReg(0x24, 0x0);
	writeReg(0x25, 0x0);
	writeReg(0x26, 0x0);
	writeReg(0x27, 0x0);
	writeReg(0x28, 0x0);
	writeReg(0x29, 0x0);
	writeReg(0x2A, 0x0);
	writeReg(0x2B, 0x0);
	writeReg(0x2C, 0x0);
	writeReg(0x2D, 0x50);
	writeReg(0x2E, 0x14);
	writeReg(0x2F, 0x40);
	writeReg(0x30, 0x0);
	writeReg(0x31, 0x3);
	writeReg(0x32, 0x5);
	writeReg(0x33, 0x27);
	writeReg(0x34, 0x1C);
	writeReg(0x35, 0xA);
	writeReg(0x36, 0x0);
	writeReg(0x37, 0xA);
	writeReg(0x38, 0x42);
	writeReg(0x39, 0x12);
	writeReg(0x3A, 0x65);
	writeReg(0x3B, 0x1D);
	writeReg(0x3C, 0x1);
	writeReg(0x3D, 0xA1);
	writeReg(0x3E, 0x0);
	writeReg(0x3F, 0x0);
	writeReg(0x40, 0x0);
	writeReg(0x41, 0x0);
	writeReg(0x42, 0x22);
	
  return state;
}



int8_t setMode(uint8_t mode)
{
  int8_t state = 2;
  byte st0;
  
  


  st0 = readReg( 0x01 );		

  if( sx1276._modem == FSK )
  {
	  setLORA();
  }
	writeReg(0x01, LORA_STANDBY_MODE);	

    switch (mode)
    {
        
        case 1:     setCR(0x01);        
                    setSF(0x0C);       
                    setBW(0x00);      
                    break;
 
        
        case 2:     setCR(0x01);        
                    setSF(0x0C);       
                    setBW(0x01);      
                    break;
 
        
        case 3:     setCR(0x01);        
                    setSF(0x0A);       
                    setBW(0x00);      
                    break;
 
        
        case 4:     setCR(0x01);        
                    setSF(0x0C);       
                    setBW(0x02);      
                    break;
 
        
        case 5:     setCR(0x01);        
                    setSF(0x0A);       
                    setBW(0x01);      
                    break;
 
        
        case 6:     setCR(0x01);        
                    setSF(0x0B);       
                    setBW(0x02);      
                    break;
 
        
        case 7:     setCR(0x01);        
                    setSF(0x09);        
                    setBW(0x01);      
                    break;
 
        
        case 8:     setCR(0x01);        
                    setSF(0x09);        
                    setBW(0x02);      
                    break;
 
        
        case 9:     setCR(0x01);        
                    setSF(0x08);        
                    setBW(0x02);      
                    break;
 
        
        case 10:    setCR(0x01);        
                    setSF(0x07);        
                    setBW(0x02);      
                    break;
 
        default:    state = -1; 
 
    };






















































































































 
	state = 0;  

  writeReg(0x01, st0);	
  delay(100);
  return state;
}


int8_t	setCR(uint8_t cod)
{
  byte st0;
  int8_t state = 2;
  byte config1;


  st0 = readReg( 0x01 );		

  if( sx1276._modem == FSK )
  {
	  state = setLORA();
  }
  writeReg(0x01, LORA_STANDBY_MODE);		

  config1 = readReg( 0x1D );	
  switch(cod)
  {
	 case 0x01: config1 = config1 & 0xf3;	
				config1 = config1 | 0x02;	
				break;
	 case 0x02: config1 = config1 & 0xf5;	
				config1 = config1 | 0x04;	
				break;
	 case 0x03: config1 = config1 & 0xf7;	
				config1 = config1 | 0x06;	
			break;
	 case 0x04: config1 = config1 & 0xf9;	
				config1 = config1 | 0x08;	
				break;
  }
  writeReg(0x1D, config1);		

  delay(100);

  config1 = readReg( 0x1D );
  
  switch(cod)
  {
	 case 0x01: if( ((config1 >> 1) & 0x07) == 0x01 )	
				{
					state = 0;
				}
			break;
	 case 0x02: if( ((config1 >> 1) & 0x07) == 0x02 )
				{
					state = 0;
				}
				break;
	 case 0x03: if( ((config1 >> 1) & 0x07) == 0x03 )
				{
					state = 0;
				}
				break;
	 case 0x04: if( ((config1 >> 1) & 0x07) == 0x04 )
				{
					state = 0;
				}
				break;
  }

  if( isCR(cod) )
  {
	  sx1276._codingRate = cod;
  }
  else
  {
	  state = 1;
  }
  writeReg(0x01, st0);	
  delay(100);
  return state;
}


boolean	isCR(uint8_t cod)
{

  
  switch(cod)
  {
	  case 0x01:
	  case 0x02:
	  case 0x03:
	  case 0x04:	return 1;
					break;

	  default:		return 0;
  }
}



uint8_t	setSF(uint8_t spr)
{
  byte st0;
  int8_t state = 2;
  byte config1;
  byte config2;
  byte config3;


  st0 = readReg( 0x01 );	

  if( sx1276._modem == FSK )
  {
	  state = setLORA();				
  }
  else
  { 
	writeReg(0x01, LORA_STANDBY_MODE);	
	config1 = (readReg( 0x1D ));	
	config2 = (readReg( 0x1E ));	
	config3 = (readReg( 0x26 ));	
	switch(spr)
	{
		case 0x06: 	config2 = config2 & 0x6f;	
					config2 = config2 | 0x60;	
					setHeaderOFF();		
					break;
		case 0x07: 	config2 = config2 & 0x7f;	
					config2 = config2 | 0x70;	
					break;
		case 0x08: 	config2 = config2 & 0x8f;	
					config2 = config2 | 0x80;	
					break;
		case 0x09: 	config2 = config2 & 0x9f;	
					config2 = config2 | 0x90;	
					break;
		case 0x0A:	config2 = config2 & 0xaf;	
					config2 = config2 | 0xa0;	
					break;
		case 0x0B:	config2 = config2 & 0xbf;	
					config2 = config2 | 0xb0;	
					getBW();
					if( sx1276._bandwidth == 0x00 )
					{ 
						
						config3 = config3 | 0x08;
					}
					break;
		case 0x0C: config2 = config2 & 0xcf;	
					config2 = config2 | 0xc0;	
					if( sx1276._bandwidth == 0x00 )
					{ 
						
						config3 = config3 | 0x08;
					}
					break;
	}

	
    if( spr == 0x06 )
    {       
        
        setHeaderOFF(); 
        
        
        
        writeReg(0x31, 0x05);
        
        
        writeReg(0x37, 0x0C);
    }
    else
    {
        
        writeReg(0x31, 0x03);
        
        
        writeReg(0x37, 0x0A);       
    }
 
    
    config2 = config2 | 0x03;	
    config3 = config3 | 0x04;	



	writeReg(0x1D, config1);		
	writeReg(0x1E, config2);		
	writeReg(0x26, config3);		

	delay(100);

	config1 = (readReg( 0x1D ));	
	config2 = (readReg( 0x1E ));	
	
	
















































 
  }

  writeReg(0x01, st0);	
  delay(100);

  if( isSF(spr) )
  { 
		state = 0;
		sx1276._spreadingFactor = spr;
  }
  else
  {
	  if( state != 0 )
	  {
	  }
  }
  return state;
}


boolean	isSF(uint8_t spr)
{

  
  switch(spr)
  {
	  case 0x06:
	  case 0x07:
	  case 0x08:
	  case 0x09:
	  case 0x0A:
	  case 0x0B:
	  case 0x0C:	return 1;
					break;

	  default:		return 0;
  }
}



int8_t	getBW()
{
  uint8_t state = 2;
  byte config1;


  if( sx1276._modem == FSK )
  {
	  state = -1;		
  }
  else
  {
	  
	  config1 = (readReg( 0x1D )) >> 4;		
	  sx1276._bandwidth = config1;

	  if( (config1 == sx1276._bandwidth) && isBW(sx1276._bandwidth) )
	  {
		  state = 0;
	  }
	  else
	  {
		  state = 1;
	  }
  }
  return state;
}


boolean	isBW(uint16_t band)
{

  
  switch(band)
  {
	  case 0x00:
	  case 0x01:
	  case 0x02:	return 1;
					break;

	  default:		return 0;
  }
}



int8_t	setHeaderOFF()
{
  uint8_t state = 2;
  byte config1;


  if( sx1276._modem == FSK )
  { 
	  state = -1;
  }
  else
  {
	  config1 = readReg( 0x1D );	
	  
	  config1 = config1 | 0x01;	
	  writeReg(0x1D, config1);		

	  config1 = readReg( 0x1D );
	  if( (((config1) >> (0)) & 0x01) == HEADER_OFF )
	  { 
			state = 0;
			sx1276._header = HEADER_OFF;

	  }
	  else
	  {
		  state = 1;
	  }
  }
  return state;
}



int8_t	setHeaderON()
{
  int8_t state = 2;
  byte config1;


  if( sx1276._modem == FSK )
  {
	  state = -1;		
  }
  else
  {
	config1 = readReg( 0x1D );	
	if( sx1276._spreadingFactor == 6 )
	{
		state = -1;		
	}
	else
	{
		config1 = config1 & 0xfe;	
		writeReg(0x1D, config1);	
	}
	if( sx1276._spreadingFactor != 6 )
	{ 
		config1 = readReg( 0x1D );
		if( (((config1) >> (0)) & 0x01) == HEADER_ON )
		{
			state = 0;
			sx1276._header = HEADER_ON;
		}
		else
		{
			state = 1;
		}
	}
  }
  return state;
}



int8_t	setBW(uint16_t band)
{
  byte st0;
  int8_t state = 2;
  byte config1;


  st0 = readReg( 0x01 );	

  if( sx1276._modem == FSK )
  {
	  state = setLORA();
  }
  writeReg(0x01, LORA_STANDBY_MODE);	
  config1 = (readReg( 0x1D ));	
  switch(band)
  {		
	  case 0x00:  config1 = config1 & 0x3f;	
					getSF();
					if( sx1276._spreadingFactor == 11 )
					{ 
						config1 = config1 | 0x01;	
					}
					if( sx1276._spreadingFactor == 12 )
					{ 
						config1 = config1 | 0x01;	
					}
					break;
	  case 0x01:  config1 = config1 & 0x8f;	
					config1 = config1 | 0x80;	
					break;
	  case 0x02:  config1 = config1 & 0x9f;	
					config1 = config1 | 0x90;	
					break;
  }
  writeReg(0x1D, config1);		

  delay(100);

  config1 = (readReg( 0x1D ));
  








































 
  if( !isBW(band) )
  {
	  state = 1;
  }
  else
  {
	  sx1276._bandwidth = band;
  }
  writeReg(0x01, st0);	
  delay(100);
  return state;
}



int8_t	getSF()
{
  int8_t state = 2;
  byte config2;


  if( sx1276._modem == FSK )
  {
	  state = -1;		
  }
  else
  {
	
	config2 = (readReg( 0x1E )) >> 4;
	sx1276._spreadingFactor = config2;
	state = 1;

	if( (config2 == sx1276._spreadingFactor) && isSF(sx1276._spreadingFactor) )
	{
		state = 0;
	}
  }
  return state;
}



int8_t setChannel(uint32_t ch)
{
  byte st0;
  int8_t state = 2;
  unsigned int freq3;
  unsigned int freq2;
  uint8_t freq1;
  uint32_t freq;


  st0 = readReg( 0x01 );	
  if( sx1276._modem == LORA )
  {
	  
	  writeReg(0x01, LORA_STANDBY_MODE);
  }
  else
  {
	  
	  writeReg(0x01, FSK_STANDBY_MODE);
  }

  freq3 = ((ch >> 16) & 0x0FF);		
  freq2 = ((ch >> 8) & 0x0FF);		
  freq1 = (ch & 0xFF);				

  writeReg(0x06, freq3);
  writeReg(0x07, freq2);
  writeReg(0x08, freq1);

  delay(100);

  
  freq3 = (readReg( 0x06 ));
  freq = (freq3 << 8) & 0xFFFFFF;

  
  freq2 = (readReg( 0x07 ));
  freq = (freq << 8) + ((freq2 << 8) & 0xFFFFFF);

  
  freq = freq + ((readReg( 0x08 )) & 0xFFFFFF);

  if( freq == ch )
  {
    state = 0;
    sx1276._channel = ch;
  }
  else
  {
    state = 1;
  }

  if( !isChannel(ch) )
  {
	 state = -1;
  }

  writeReg(0x01, st0);	
  delay(100);
  return state;
}


boolean	isChannel(uint32_t ch)
{

  
  switch(ch)
  {
	  case 0xD84CCC:
	  case 0xD86000:
	  case 0xD87333:
	  case 0xD88666:
	  case 0xD89999:
	  case 0xD8ACCC:
	  case 0xD8C000:
	  case 0xD90000:
	  case 0xE1C51E:
	  case 0xE24F5C:
	  case 0xE2D999:
	  case 0xE363D7:
	  case 0xE3EE14:
	  case 0xE47851:
	  case 0xE5028F:
	  case 0xE58CCC:
	  case 0xE6170A:
	  case 0xE6A147:
	  case 0xE72B85:
	  case 0xE7B5C2:	return 1;
						break;

	  default:			return 0;
  }
}



uint8_t	setCRC_ON()
{
  uint8_t state = 2;
  byte config1;


  if( sx1276._modem == LORA )
  { 
	config1 = readReg( 0x1E );	
	config1 = config1 | 0x04;	
	writeReg(0x1E, config1);

	state = 1;

	config1 = readReg( 0x1E );
	if( (((config1) >> (2)) & 0x01) == CRC_ON )
	{ 
		state = 0;
		sx1276._CRC = CRC_ON;
	}
  }
  else
  { 
	config1 = readReg( 0x31 );	
	config1 = config1 | 0x10;	
	writeReg(0x30, config1);

	state = 1;

	config1 = readReg( 0x30 );
	if( (((config1) >> (4)) & 0x01) == CRC_ON )
	{ 
		state = 0;
		sx1276._CRC = CRC_ON;
	}
  }
  if( state != 0 )
  {
	  state = 1;
  }
  return state;
}




int8_t setPower(char p)
{
  byte st0;
  int8_t state = 2;
  byte value = 0x00;


  st0 = readReg( 0x01 );	  
  if( sx1276._modem == LORA )
  { 
	  writeReg(0x01, LORA_STANDBY_MODE);
  }
  else
  { 
	  writeReg(0x01, FSK_STANDBY_MODE);
  }

  switch (p)
  {
    
    
    

    case 'M':  sx1276._power = 0x0F;
               break;

    case 'L':  sx1276._power = 0x00;
               break;

    case 'H':  sx1276._power = 0x07;
               break;

    default:   state = -1;
               break;
  }

  writeReg(0x09, sx1276 . _power);	
  value = readReg( 0x09 );

  if( value == sx1276._power )
  {
	  state = 0;
  }
  else
  {
	  state = 1;
  }

  writeReg(0x01, st0);	
  delay(100);
  return state;
}


uint8_t sendPacketTimeout(uint8_t dest, char *payload)
{
	uint8_t state = 2;


	state = setPacket(dest, payload);	
	if (state == 0)								
	{
		state = sendWithTimeout();	
	}
	return state;
}



uint8_t setPacket(uint8_t dest, char *payload)
{
	int8_t state = 2;



	clearFlags();	

	if( sx1276._modem == LORA )
	{ 
		writeReg(0x01, LORA_STANDBY_MODE);	
	}
	else
	{ 
		writeReg(0x01, FSK_STANDBY_MODE);	
	}

	sx1276._reception = CORRECT_PACKET;	
	if( sx1276._retries == 0 )
	{ 
		state = setDestination(dest);	
		if( state == 0 )
		{
			state = setPayload(payload);
		}
	}
	else
	{
		if( sx1276._retries == 1 )
		{
			sx1276.packet_sent.length++;
		}
		state = setPacketLength();
		sx1276.packet_sent.retry = sx1276._retries;
			debug_str(" Retrying to send last packet " );
			
			debug_str(" time  \n" );
	}
	writeReg(0x0D, 0x80);  
	if( state == 0 )
	{
		state = 1;
		
		writeReg(0x00, sx1276 . packet_sent . dst); 		
		writeReg(0x00, sx1276 . packet_sent . src);		
		writeReg(0x00, sx1276 . packet_sent . packnum);	
		writeReg(0x00, sx1276 . packet_sent . length); 	
		for(unsigned int i = 0; i <sx1276._payloadlength; i++)
		{
			writeReg(0x00, sx1276 . packet_sent . data[i]);  
		}
		writeReg(0x00, sx1276 . packet_sent . retry);		
		state = 0;
				debug_str(" Packet set and written in FIFO ## \n" );
				
				debug_str(" ## Packet to send:  \n" );
				debug_str("Destination: " );
				
				debug_str("Source: " );
				
				debug_str("Packet number: " );
				
				debug_str("Packet length: " );
				
				debug_str("Data: " );
				
				
					
				
				debug_str("\n" );
				debug_str("Retry number: " );
				
				debug_str(" ##\n" );
				debug_str("\n" );
	}

	return state;
}



int8_t setDestination(uint8_t dest)
{
	int8_t state = 2;


	state = 1;
	sx1276._destination = dest; 
	sx1276.packet_sent.dst = dest;	 
	sx1276.packet_sent.src = sx1276._nodeAddress; 
	sx1276.packet_sent.packnum = sx1276._packetNumber;	
	sx1276._packetNumber++;
	state = 0;

	return state;
}


int8_t setNodeAddress(uint8_t addr)
{
	
	
	uint8_t state = 2;


	if( addr > 255 )
	{
		state = -1;
	}
	else
	{
		
		sx1276._nodeAddress = addr;



































 
		
	}
	return state;
}



uint8_t sendWithTimeout()
{
	setTimeout();

		uint8_t state = 2;
	  byte value = 0x00;
	  unsigned long previous;
	  unsigned long temp_time;
	uint16_t wait = MAX_TIMEOUT;

	 

	  
	  previous = millis();		
	  if( sx1276._modem == LORA )
	  { 
		  clearFlags();	
		  writeReg(0x01, LORA_TX_MODE);  

		  value = readReg( 0x12 );
		  temp_time = millis() - previous;
		  
		  
		  while (((((value) >> (3)) & 0x01) == 0) && (temp_time < wait))
		  {
			  value = readReg( 0x12 );
			  
			  if( millis() < previous )
			  {
				  previous = millis();
			  }
			  temp_time = millis() - previous;
		  }
		  state = 1;
	  }
	  else
	  { 
		  writeReg(0x01, FSK_TX_MODE);  

		  value = readReg( 0x3F );
		  
		  while (((((value) >> (3)) & 0x01) == 0) && (millis() - previous < wait))
		  {
			  value = readReg( 0x3F );
			  
			  if( millis() < previous )
			  {
				  previous = millis();
			  }
		  }
		  state = 1;
	  }
	  if( (((value) >> (3)) & 0x01) == 1 )
	  {
		  state = 0;	
	  }
	  else
	  {
		  if( state == 1 )
		  {
		  }
		  else
		  {
		  }
	  }

	  clearFlags();		
	  return state;
}



uint8_t setTimeout()
{
	uint8_t state = 2;
	uint16_t delay;


	state = 1;
	if( sx1276._modem == LORA )
	{
		switch(sx1276._spreadingFactor)
		{	
			case 0x06:	switch(sx1276._bandwidth)
						{	
							case 0x00:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 335;
														break;
												case 0x02: sx1276._sendTime = 352;
														break;
												case 0x03: sx1276._sendTime = 368;
														break;
												case 0x04: sx1276._sendTime = 386;
														break;
											}
											break;
							case 0x01:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 287;
														break;
												case 0x02: sx1276._sendTime = 296;
														break;
												case 0x03: sx1276._sendTime = 305;
														break;
												case 0x04: sx1276._sendTime = 312;
														break;
											}
											break;
							case 0x02:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 242;
														break;
												case 0x02: sx1276._sendTime = 267;
														break;
												case 0x03: sx1276._sendTime = 272;
														break;
												case 0x04: sx1276._sendTime = 276;
														break;
											}
											break;
						}
						break;

			case 0x07:	switch(sx1276._bandwidth)
						{	
							case 0x00:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 408;
														break;
												case 0x02: sx1276._sendTime = 438;
														break;
												case 0x03: sx1276._sendTime = 468;
														break;
												case 0x04: sx1276._sendTime = 497;
														break;
											}
											break;
							case 0x01:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 325;
														break;
												case 0x02: sx1276._sendTime = 339;
														break;
												case 0x03: sx1276._sendTime = 355;
														break;
												case 0x04: sx1276._sendTime = 368;
														break;
											}
											break;
							case 0x02:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 282;
														break;
												case 0x02: sx1276._sendTime = 290;
														break;
												case 0x03: sx1276._sendTime = 296;
														break;
												case 0x04: sx1276._sendTime = 305;
														break;
											}
											break;
						}
						break;

			case 0x08:	switch(sx1276._bandwidth)
						{	
							case 0x00:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 537;
														break;
												case 0x02: sx1276._sendTime = 588;
														break;
												case 0x03: sx1276._sendTime = 640;
														break;
												case 0x04: sx1276._sendTime = 691;
														break;
											}
											break;
							case 0x01:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 388;
														break;
												case 0x02: sx1276._sendTime = 415;
														break;
												case 0x03: sx1276._sendTime = 440;
														break;
												case 0x04: sx1276._sendTime = 466;
														break;
											}
											break;
							case 0x02:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 315;
														break;
												case 0x02: sx1276._sendTime = 326;
														break;
												case 0x03: sx1276._sendTime = 340;
														break;
												case 0x04: sx1276._sendTime = 352;
														break;
											}
											break;
						}
						break;

			case 0x09:	switch(sx1276._bandwidth)
						{	
							case 0x00:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 774;
														break;
												case 0x02: sx1276._sendTime = 864;
														break;
												case 0x03: sx1276._sendTime = 954;
														break;
												case 0x04: sx1276._sendTime = 1044;
														break;
											}
											break;
							case 0x01:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 506;
														break;
												case 0x02: sx1276._sendTime = 552;
														break;
												case 0x03: sx1276._sendTime = 596;
														break;
												case 0x04: sx1276._sendTime = 642;
														break;
											}
											break;
							case 0x02:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 374;
														break;
												case 0x02: sx1276._sendTime = 396;
														break;
												case 0x03: sx1276._sendTime = 418;
														break;
												case 0x04: sx1276._sendTime = 441;
														break;
											}
											break;
						}
						break;

			case 0x0A:	switch(sx1276._bandwidth)
						{	
							case 0x00:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 1226;
														break;
												case 0x02: sx1276._sendTime = 1388;
														break;
												case 0x03: sx1276._sendTime = 1552;
														break;
												case 0x04: sx1276._sendTime = 1716;
														break;
											}
											break;
							case 0x01:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 732;
														break;
												case 0x02: sx1276._sendTime = 815;
														break;
												case 0x03: sx1276._sendTime = 896;
														break;
												case 0x04: sx1276._sendTime = 977;
														break;
											}
											break;
							case 0x02:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 486;
														break;
												case 0x02: sx1276._sendTime = 527;
														break;
												case 0x03: sx1276._sendTime = 567;
														break;
												case 0x04: sx1276._sendTime = 608;
														break;
											}
											break;
						}
						break;

			case 0x0B:	switch(sx1276._bandwidth)
						{	
							case 0x00:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 2375;
														break;
												case 0x02: sx1276._sendTime = 2735;
														break;
												case 0x03: sx1276._sendTime = 3095;
														break;
												case 0x04: sx1276._sendTime = 3456;
														break;
											}
											break;
							case 0x01:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 1144;
														break;
												case 0x02: sx1276._sendTime = 1291;
														break;
												case 0x03: sx1276._sendTime = 1437;
														break;
												case 0x04: sx1276._sendTime = 1586;
														break;
											}
											break;
							case 0x02:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 691;
														break;
												case 0x02: sx1276._sendTime = 766;
														break;
												case 0x03: sx1276._sendTime = 838;
														break;
												case 0x04: sx1276._sendTime = 912;
														break;
											}
											break;
						}
						break;

			case 0x0C: switch(sx1276._bandwidth)
						{	
							case 0x00:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 4180;
														break;
												case 0x02: sx1276._sendTime = 4836;
														break;
												case 0x03: sx1276._sendTime = 5491;
														break;
												case 0x04: sx1276._sendTime = 6146;
														break;
											}
											break;
							case 0x01:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 1965;
														break;
												case 0x02: sx1276._sendTime = 2244;
														break;
												case 0x03: sx1276._sendTime = 2521;
														break;
												case 0x04: sx1276._sendTime = 2800;
														break;
											}
											break;
							case 0x02:	switch(sx1276._codingRate)
											{	
												case 0x01: sx1276._sendTime = 1102;
														break;
												case 0x02: sx1276._sendTime = 1241;
														break;
												case 0x03: sx1276._sendTime = 1381;
														break;
												case 0x04: sx1276._sendTime = 1520;
														break;
											}
											break;
						}
						break;
			default: sx1276._sendTime = MAX_TIMEOUT;
		}
	}
	else
	{
		sx1276._sendTime = MAX_TIMEOUT;
	}
	delay = ((0.1*sx1276._sendTime) + 1);
	sx1276._sendTime = (uint16_t) ((sx1276._sendTime * 1.2) + (15%delay));		
	state = 0;
	return state;
}


void clearFlags()
{
    byte st0;

	st0 = readReg( 0x01 );		

	if( sx1276._modem == LORA )
	{ 
		writeReg(0x01, LORA_STANDBY_MODE);	
		writeReg(0x12, 0xFF);	
		writeReg(0x01, st0);		
	}
	else
	{ 
		writeReg(0x01, FSK_STANDBY_MODE);	
		writeReg(0x3E, 0xFF); 
		writeReg(0x3F, 0xFF); 
		writeReg(0x01, st0);		
	}
}



int8_t setPacketLength()
{
	

	uint8_t l = sx1276._payloadlength + OFFSET_PAYLOADLENGTH;
	byte st0;
	byte value = 0x00;
	int8_t state = 2;


	st0 = readReg( 0x01 );	
	sx1276.packet_sent.length = l;

	if( sx1276._modem == LORA )
  	{ 
  		writeReg(0x01, LORA_STANDBY_MODE);    
		writeReg(0x22, sx1276 . packet_sent . length);
		
		value = readReg( 0x22 );
	}
	else
	{ 
		writeReg(0x01, FSK_STANDBY_MODE);    
		writeReg(0x32, sx1276 . packet_sent . length);
		
		value = readReg( 0x32 );
	}

	if( sx1276.packet_sent.length == value )
	{
		state = 0;
	}
	else
	{
		state = 1;
	}

	writeReg(0x01, st0);	
  	delay(250);
	return state;
}




uint8_t setPayload(char *payload)
{
	uint8_t state = 2;
	uint8_t state_f = 2;
	uint16_t length16;


	state = 1;
	length16 = (uint16_t)strlen(payload);
	state = truncPayload(length16);
	if( state == 0 )
	{
		
		for(unsigned int i = 0; i < sx1276._payloadlength; i++)
		{
			sx1276.packet_sent.data[i] = payload[i];
		}
	}
	else
	{
		state_f = state;
	}
	if( ( sx1276._modem == FSK ) && ( sx1276._payloadlength > MAX_PAYLOAD_FSK ) )
	{
		sx1276._payloadlength = MAX_PAYLOAD_FSK;
		state = 1;
	}
	
	state_f = setPacketLength();	
	return state_f;
}



uint8_t truncPayload(uint16_t length16)
{
	uint8_t state = 2;

	state = 1;


	if( length16 > MAX_PAYLOAD )
	{
		sx1276._payloadlength = MAX_PAYLOAD;
	}
	else
	{
		sx1276._payloadlength = (length16 & 0xFF);
	}
	state = 0;

	return state;
}



uint8_t receivePacketTimeout(uint32_t wait)
{
	uint8_t state = 2;
	uint8_t state_f = 2;


	state = receive();
	if( state == 0 )
	{
		if( availableData(wait) )
		{
			
			
			state_f = getPacket(MAX_TIMEOUT);
		}
		else
		{
			state_f = 1;
		}
	}
	else
	{
		state_f = state;
	}
	return state_f;
}



uint8_t receive()
{
	  uint8_t state = 2;


	  
	  memset( &sx1276.packet_received, 0x00, sizeof(sx1276.packet_received) );

		
   		 
    	
    	writeReg(0x0A, 0x09);

	  writeReg(0x0C, 0x23);			
	  writeReg(0x0D, 0x00);  
  	  
      writeReg(0x1F, 0xFF);
  	  writeReg(0x25, 0x00); 
	  clearFlags();						
	  state = 1;
	  if( sx1276._modem == LORA )
	  { 
sx1276._payloadlength = MAX_LENGTH - OFFSET_PAYLOADLENGTH;
	  	  state = setPacketLength();	
		  writeReg(0x01, LORA_RX_MODE);  	  
	  }
	  else
	  { 
		  state = setPacketLength();
		  writeReg(0x01, FSK_RX_MODE);  
	  }
	  return state;
}



boolean	availableData(uint32_t wait)
{
	byte value;
	byte header = 0;
	boolean forme = 0;
	boolean	_hreceived = 0;
	uint32_t previous;
	uint32_t temp_time;


		debug_str("\n" );
		debug_str("Starting 'availableData'\n" );

	previous = millis();
	if( sx1276._modem == LORA )
	{ 
		value = readReg( 0x12 );
		
		temp_time = millis() - previous;
		while( ((((value) >> (4)) & 0x01) == 0) && (temp_time <  wait) )
		{
			value = readReg( 0x12 );
			
			if( millis() < previous )
			{
				previous = millis();
			}
			temp_time = millis() - previous;
		} 
		if( (((value) >> (4)) & 0x01) == 1 )
		{ 
				debug_str("  Valid Header received in LoRa mode  \n" );
			sx1276._hreceived = 1;
			temp_time = millis() - previous;
			
			while( (header == 0) && (temp_time <  wait) )
			{ 
				header = readReg( 0x25 );
				
				if( millis() < previous )
				{
					previous = millis();
				}
				temp_time = millis() - previous;
			}
			if( header != 0 )
			{ 
				sx1276._destination = readReg( 0x00 );
			}
		}
		else
		{
			forme = 0;
			_hreceived = 0;
				debug_str("  The timeout has expired \n" );
				debug_str("\n" );
		}
	}
	else
	{ 
		value = readReg( 0x3F );
		
		while( ((((value) >> (2)) & 0x01) == 0) && (millis() - previous < wait) )
		{
			value = readReg( 0x3F );
			
			if( millis() < previous )
			{
				previous = millis();
			}
		}
		if( (((value) >> (2)) & 0x01) == 1 )	
		{
			sx1276._hreceived = 1;
				debug_str("  Valid Preamble detected in FSK mode  \n" );
			
			sx1276._destination = readReg( 0x00 );
		}
		else
		{
			forme = 0;
			_hreceived = 0;
				debug_str("  The timeout has expired  \n" );
				debug_str("\n" );
		}
	}


	if( sx1276._hreceived )
	{ 
			debug_str("  Checking destination \n" );
		if( (sx1276._destination == sx1276._nodeAddress) || (sx1276._destination == BROADCAST_0) )
		{ 
			forme = 1;
				debug_str(" Packet received is for me  \n" );
		}
		else
		{
			forme = 0;
				debug_str("  Packet received is not for me  \n" );
				debug_str("\n" );
			if( sx1276._modem == LORA )	
			{ 
				writeReg(0x01, LORA_STANDBY_MODE);	
			}
			else
			{ 
				writeReg(0x01, FSK_STANDBY_MODE);	
			}
		}
	}



	return forme;
}



int8_t getPacket(uint32_t wait)
{
	uint8_t state = 2;
	byte value = 0x00;
	uint32_t previous;
	uint32_t temp_time;
	boolean p_received = 0;

		debug_str("\n" );
		debug_str("Starting 'getPacket'\n" );

	previous = millis();
	if( sx1276._modem == LORA )
	{ 
		value = readReg( 0x12 );
		temp_time = millis() - previous;
		
		while( ((((value) >> (6)) & 0x01) == 0) && (temp_time <  wait) )
		{
			value = readReg( 0x12 );
			
			if( millis() < previous )
			{
				previous = millis();
			}
			temp_time = millis() - previous;
		} 

		if( ((((value) >> (6)) & 0x01) == 1) && ((((value) >> (5)) & 0x01) == 0) )
		{ 
			p_received = 1;	
			sx1276._reception = CORRECT_PACKET;
				debug_str(" Packet correctly received in LoRa mode \n" );
		}
		else
		{
			if( (((value) >> (5)) & 0x01) != 0 )
			{ 
				sx1276._reception = INCORRECT_PACKET;
				state = 3;
					debug_str(" The CRC is incorrect \n" );
					debug_str("\n" );
			}
		}
		
	}
	else
	{ 
		value = readReg( 0x3F );
		while( ((((value) >> (2)) & 0x01) == 0) && (millis() - previous < wait) )
		{
			value = readReg( 0x3F );
			
			if( millis() < previous )
			{
				previous = millis();
			}
		} 
		if( (((value) >> (2)) & 0x01) == 1 )
		{ 
 			if( (((value) >> (1)) & 0x01) == 1 )
			{ 
				sx1276._reception = CORRECT_PACKET;
				p_received = 1;
					debug_str("  Packet correctly received in FSK mode  \n" );
			}
			else
			{ 
				sx1276._reception = INCORRECT_PACKET;
				state = 3;
				p_received = 0;
					debug_str(" Packet incorrectly received in FSK mode  \n" );
			}
		}
		else
		{
				debug_str("  The timeout has expired  \n" );
				debug_str("\n" );
		}
		writeReg(0x01, FSK_STANDBY_MODE);	
	}
	if( p_received )
	{
		
		if( sx1276._modem == LORA )
		{
			writeReg(0x0D, 0x00);  		
			sx1276.packet_received.dst = readReg( 0x00 );	
		}
		else
		{
			value = readReg( 0x30 );		
			if( ((((value) >> (2)) & 0x01) == 0) && ((((value) >> (1)) & 0x01) == 0) )
			{
				sx1276.packet_received.dst = readReg( 0x00 ); 
			}
			else
			{
				sx1276.packet_received.dst = sx1276._destination;			
			}
		}
		sx1276.packet_received.src = readReg( 0x00 );		
		sx1276.packet_received.packnum = readReg( 0x00 );	
		sx1276.packet_received.length = readReg( 0x00 );	
		if( sx1276._modem == LORA )
		{
			sx1276._payloadlength = sx1276.packet_received.length - OFFSET_PAYLOADLENGTH;
		}
		if( sx1276.packet_received.length > (MAX_LENGTH + 1) )
		{
				debug_str("Corrupted packet, length must be less than 256\n" );
		}
		else
		{
			for(unsigned int i = 0; i < sx1276._payloadlength; i++)
			{
				sx1276.packet_received.data[i] = readReg( 0x00 ); 
			}
			sx1276.packet_received.retry = readReg( 0x00 );
			
				debug_str(" Packet received:\n" );
				debug_str("Destination: " );
				
				debug_str("Source: " );
				
				debug_str("Packet number: " );
				
				debug_str("Packet length: " );
				
				debug_str("Data: " );
				
				
					
				
				debug_str("\n" );
				debug_str("Retry number: " );
				
				
				debug_str("\n" );
			state = 0;
		}
	}
	else
	{
		state = 1;
		if( (sx1276._reception == INCORRECT_PACKET) && (sx1276._retries < sx1276._maxRetries) )
		{
			sx1276._retries++;
				debug_str(" ## Retrying to send the last packet ## \n" );
				debug_str("\n" );
		}
	}
	if( sx1276._modem == LORA )
	{
		writeReg(0x0D, 0x00);  
	}
	clearFlags();	
	if( wait > MAX_WAIT )
	{
		state = -1;
			debug_str(" The timeout must be smaller than 12.5 seconds  \n" );
			debug_str("\n" );
	}

	return state;
}



