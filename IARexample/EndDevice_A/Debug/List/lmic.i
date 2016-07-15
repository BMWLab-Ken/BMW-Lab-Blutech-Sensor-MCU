








 











 














 












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












 






enum _cr_t { CR_4_5=0, CR_4_6, CR_4_7, CR_4_8 };
enum _sf_t { FSK=0, SF7, SF8, SF9, SF10, SF11, SF12, SFrfu };
enum _bw_t { BW125=0, BW250, BW500, BWrfu };
typedef u1_t cr_t;
typedef u1_t sf_t;
typedef u1_t bw_t;
typedef u1_t dr_t;

typedef u2_t rps_t;
typedef rps_t* xref2rps_t;

enum { ILLEGAL_RPS = 0xFF };
enum { DR_PAGE_EU868 = 0x00 };
enum { DR_PAGE_US915 = 0x10 };


enum { STD_PREAMBLE_LEN  =  8 };
enum { MAX_LEN_FRAME     = 64 };
enum { LEN_DEVNONCE      =  2 };
enum { LEN_ARTNONCE      =  3 };
enum { LEN_NETID         =  3 };
enum { DELAY_JACC1       =  5 }; 
enum { DELAY_DNW1        =  1 }; 
enum { DELAY_EXTDNW2     =  1 }; 
enum { DELAY_JACC2       =  DELAY_JACC1+(int)DELAY_EXTDNW2 }; 
enum { DELAY_DNW2        =  DELAY_DNW1 +(int)DELAY_EXTDNW2 }; 
enum { BCN_INTV_exp      = 7 };
enum { BCN_INTV_sec      = 1<<BCN_INTV_exp };
enum { BCN_INTV_ms       = BCN_INTV_sec*1000L };
enum { BCN_INTV_us       = BCN_INTV_ms*1000L };
enum { BCN_RESERVE_ms    = 2120 };   
enum { BCN_GUARD_ms      = 3000 };   
enum { BCN_SLOT_SPAN_ms  =   30 };   
enum { BCN_WINDOW_ms     = BCN_INTV_ms-(int)BCN_GUARD_ms-(int)BCN_RESERVE_ms };
enum { BCN_RESERVE_us    = 2120000 };
enum { BCN_GUARD_us      = 3000000 };
enum { BCN_SLOT_SPAN_us  =   30000 };


enum _dr_eu868_t { DR_SF12=0, DR_SF11, DR_SF10, DR_SF9, DR_SF8, DR_SF7, DR_SF7B, DR_FSK, DR_NONE };
enum { DR_DFLTMIN = DR_SF7 };
enum { DR_PAGE = DR_PAGE_EU868 };







enum { EU868_F1 = 868100000,      
       EU868_F2 = 868300000,      
       EU868_F3 = 868500000,      
       EU868_F4 = 868850000,      
       EU868_F5 = 869050000,      
       EU868_F6 = 869525000,      
       EU868_J4 = 864100000,      
       EU868_J5 = 864300000,      
       EU868_J6 = 864500000,      
};
enum { EU868_FREQ_MIN = 863000000,
       EU868_FREQ_MAX = 870000000 };

enum { CHNL_PING         = 5 };
enum { FREQ_PING         = EU868_F6 };  
enum { DR_PING           = SF9 };       
enum { CHNL_DNW2         = 5 };
enum { FREQ_DNW2         = EU868_F6 };
enum { DR_DNW2           = DR_SF12 };
enum { CHNL_BCN          = 5 };
enum { FREQ_BCN          = EU868_F6 };
enum { DR_BCN            = DR_SF9 };
enum { AIRTIME_BCN       = 144384 };  

enum {
    
    OFF_BCN_NETID    = 0,         
    OFF_BCN_TIME     = 3,
    OFF_BCN_CRC1     = 7,
    OFF_BCN_INFO     = 8,
    OFF_BCN_LAT      = 9,
    OFF_BCN_LON      = 12,
    OFF_BCN_CRC2     = 15,
    LEN_BCN          = 17
};


enum {
    
    OFF_JR_HDR      = 0,
    OFF_JR_ARTEUI   = 1,
    OFF_JR_DEVEUI   = 9,
    OFF_JR_DEVNONCE = 17,
    OFF_JR_MIC      = 19,
    LEN_JR          = 23
};
enum {
    
    OFF_JA_HDR      = 0,
    OFF_JA_ARTNONCE = 1,
    OFF_JA_NETID    = 4,
    OFF_JA_DEVADDR  = 7,
    OFF_JA_RFU      = 11,
    OFF_JA_DLSET    = 11,
    OFF_JA_RXDLY    = 12,
    OFF_CFLIST      = 13,
    LEN_JA          = 17,
    LEN_JAEXT       = 17+16
};
enum {
    
    OFF_DAT_HDR      = 0,
    OFF_DAT_ADDR     = 1,
    OFF_DAT_FCT      = 5,
    OFF_DAT_SEQNO    = 6,
    OFF_DAT_OPTS     = 8,
};
enum { MAX_LEN_PAYLOAD = MAX_LEN_FRAME-(int)OFF_DAT_OPTS-4 };
enum {
    
    HDR_FTYPE   = 0xE0,
    HDR_RFU     = 0x1C,
    HDR_MAJOR   = 0x03
};
enum { HDR_FTYPE_DNFLAG = 0x20 };  
enum {
    
    HDR_FTYPE_JREQ   = 0x00,
    HDR_FTYPE_JACC   = 0x20,
    HDR_FTYPE_DAUP   = 0x40,  
    HDR_FTYPE_DADN   = 0x60,  
    HDR_FTYPE_DCUP   = 0x80,  
    HDR_FTYPE_DCDN   = 0xA0,  
    HDR_FTYPE_REJOIN = 0xC0,  
    HDR_FTYPE_PROP   = 0xE0
};
enum {
    HDR_MAJOR_V1 = 0x00,
};
enum {
    
    FCT_ADREN  = 0x80,
    FCT_ADRARQ = 0x40,
    FCT_ACK    = 0x20,
    FCT_MORE   = 0x10,   
    FCT_OPTLEN = 0x0F,
};
enum {
    
    FCT_CLASSB = FCT_MORE
};
enum {
    NWKID_MASK = (int)0xFE000000,
    NWKID_BITS = 7
};


enum {
    
    MCMD_LCHK_REQ = 0x02, 
    MCMD_LADR_ANS = 0x03, 
    MCMD_DCAP_ANS = 0x04, 
    MCMD_DN2P_ANS = 0x05, 
    MCMD_DEVS_ANS = 0x06, 
    MCMD_SNCH_ANS = 0x07, 
    
    MCMD_PING_IND = 0x10, 
    MCMD_PING_ANS = 0x11, 
    MCMD_BCNI_REQ = 0x12, 
};


enum {
    
    MCMD_LCHK_ANS = 0x02, 
    MCMD_LADR_REQ = 0x03, 
    MCMD_DCAP_REQ = 0x04, 
    MCMD_DN2P_SET = 0x05, 
    MCMD_DEVS_REQ = 0x06, 
    MCMD_SNCH_REQ = 0x07, 
    
    MCMD_PING_SET = 0x11, 
    MCMD_BCNI_ANS = 0x12, 
};

enum {
    MCMD_BCNI_TUNIT = 30  
};
enum {
    MCMD_LADR_ANS_RFU    = 0xF8, 
    MCMD_LADR_ANS_POWACK = 0x04, 
    MCMD_LADR_ANS_DRACK  = 0x02, 
    MCMD_LADR_ANS_CHACK  = 0x01, 
};
enum {
    MCMD_DN2P_ANS_RFU    = 0xFC, 
    MCMD_DN2P_ANS_DRACK  = 0x02, 
    MCMD_DN2P_ANS_CHACK  = 0x01, 
};
enum {
    MCMD_SNCH_ANS_RFU    = 0xFC, 
    MCMD_SNCH_ANS_DRACK  = 0x02, 
    MCMD_SNCH_ANS_FQACK  = 0x01, 
};
enum {
    MCMD_PING_ANS_RFU   = 0xFE,
    MCMD_PING_ANS_FQACK = 0x01
};

enum {
    MCMD_DEVS_EXT_POWER   = 0x00, 
    MCMD_DEVS_BATT_MIN    = 0x01, 
    MCMD_DEVS_BATT_MAX    = 0xFE, 
    MCMD_DEVS_BATT_NOINFO = 0xFF, 
};


enum {
    MCMD_LADR_CHP_125ON   = 0x60,  
    MCMD_LADR_CHP_125OFF  = 0x70,  
    MCMD_LADR_N3RFU_MASK  = 0x80,
    MCMD_LADR_CHPAGE_MASK = 0xF0,
    MCMD_LADR_REPEAT_MASK = 0x0F,
    MCMD_LADR_REPEAT_1    = 0x01,
    MCMD_LADR_CHPAGE_1    = 0x10
};

enum {
    MCMD_LADR_DR_MASK    = 0xF0,
    MCMD_LADR_POW_MASK   = 0x0F,
    MCMD_LADR_DR_SHIFT   = 4,
    MCMD_LADR_POW_SHIFT  = 0,
    MCMD_LADR_SF12      = DR_SF12<<4,
    MCMD_LADR_SF11      = DR_SF11<<4,
    MCMD_LADR_SF10      = DR_SF10<<4,
    MCMD_LADR_SF9       = DR_SF9 <<4,
    MCMD_LADR_SF8       = DR_SF8 <<4,
    MCMD_LADR_SF7       = DR_SF7 <<4,
    MCMD_LADR_SF7B      = DR_SF7B<<4,
    MCMD_LADR_FSK       = DR_FSK <<4,

    MCMD_LADR_20dBm     = 0,
    MCMD_LADR_14dBm     = 1,
    MCMD_LADR_11dBm     = 2,
    MCMD_LADR_8dBm      = 3,
    MCMD_LADR_5dBm      = 4,
    MCMD_LADR_2dBm      = 5,
};


typedef u4_t devaddr_t;


enum { RSSI_OFF=64, SNR_SCALEUP=4 };

inline sf_t  getSf   (rps_t params)            { return   (sf_t)(params &  0x7); }
inline rps_t setSf   (rps_t params, sf_t sf)   { return (rps_t)((params & ~0x7) | sf); }
inline bw_t  getBw   (rps_t params)            { return  (bw_t)((params >> 3) & 0x3); }
inline rps_t setBw   (rps_t params, bw_t cr)   { return (rps_t)((params & ~0x18) | (cr<<3)); }
inline cr_t  getCr   (rps_t params)            { return  (cr_t)((params >> 5) & 0x3); }
inline rps_t setCr   (rps_t params, cr_t cr)   { return (rps_t)((params & ~0x60) | (cr<<5)); }
inline int   getNocrc(rps_t params)            { return        ((params >> 7) & 0x1); }
inline rps_t setNocrc(rps_t params, int nocrc) { return (rps_t)((params & ~0x80) | (nocrc<<7)); }
inline int   getIh   (rps_t params)            { return        ((params >> 8) & 0xFF); }
inline rps_t setIh   (rps_t params, int ih)    { return (rps_t)((params & ~0xFF00) | (ih<<8)); }
inline rps_t makeRps (sf_t sf, bw_t bw, cr_t cr, int ih, int nocrc) {
    return sf | (bw<<3) | (cr<<5) | (nocrc?(1<<7):0) | ((ih&0xFF)<<8);
}

inline int sameSfBw(rps_t r1, rps_t r2) { return ((r1^r2)&0x1F) == 0; }

extern const u1_t _DR2RPS_CRC[];
inline rps_t updr2rps (dr_t dr) { return (rps_t)_DR2RPS_CRC[dr+1]; }
inline rps_t dndr2rps (dr_t dr) { return setNocrc(updr2rps(dr),1); }
inline int isFasterDR (dr_t dr1, dr_t dr2) { return dr1 > dr2; }
inline int isSlowerDR (dr_t dr1, dr_t dr2) { return dr1 < dr2; }
inline dr_t  incDR    (dr_t dr) { return _DR2RPS_CRC[dr+2]==ILLEGAL_RPS ? dr : (dr_t)(dr+1); } 
inline dr_t  decDR    (dr_t dr) { return _DR2RPS_CRC[dr  ]==ILLEGAL_RPS ? dr : (dr_t)(dr-1); } 
inline dr_t  assertDR (dr_t dr) { return _DR2RPS_CRC[dr+1]==ILLEGAL_RPS ? DR_DFLTMIN : dr; }   
inline bit_t validDR  (dr_t dr) { return _DR2RPS_CRC[dr+1]!=ILLEGAL_RPS; } 
inline dr_t  lowerDR  (dr_t dr, u1_t n) { while(n--){dr=decDR(dr);} return dr; } 







s1_t pow2dBm (u1_t mcmd_ladr_p1);

ostime_t calcAirTime (rps_t rps, u1_t plen);

int getSensitivity (rps_t rps);





enum { MAX_FRAME_LEN      =  64 };   
enum { TXCONF_ATTEMPTS    =   8 };   
enum { MAX_MISSED_BCNS    =  20 };   
enum { MAX_RXSYMS         = 100 };   

enum { LINK_CHECK_CONT    =  12 ,    
       LINK_CHECK_DEAD    =  24 ,    
       LINK_CHECK_INIT    = -12 ,    
       LINK_CHECK_OFF     =-128 };   

enum { TIME_RESYNC        = 6*128 }; 
enum { TXRX_GUARD_ms      =  6000 };  
enum { JOIN_GUARD_ms      =  9000 };  
enum { TXRX_BCNEXT_secs   =     2 };  
enum { RETRY_PERIOD_secs  =     3 };  


enum { MAX_CHANNELS = 16 };      
enum { MAX_BANDS    =  4 };

enum { LIMIT_CHANNELS = (1<<4) };   

struct band_t {
    u2_t     txcap;     
    s1_t     txpow;     
    u1_t     lastchnl;  
    ostime_t avail;     
};
typedef band_t* xref2band_t; 



enum { DRCHG_SET, DRCHG_NOJACC, DRCHG_NOACK, DRCHG_NOADRACK, DRCHG_NWKCMD };
enum { KEEP_TXPOW = -128 };



struct rxsched_t {
    u1_t     dr;
    u1_t     intvExp;   
    u1_t     slot;      
    u1_t     rxsyms;
    ostime_t rxbase;
    ostime_t rxtime;    
    u4_t     freq;
};
typedef rxsched_t* xref2rxsched_t;  



enum { BCN_NONE    = 0x00,   
       BCN_PARTIAL = 0x01,   
       BCN_FULL    = 0x02,   
       BCN_NODRIFT = 0x04,   
       BCN_NODDIFF = 0x08 }; 

struct bcninfo_t {
    ostime_t txtime;  
    s1_t     rssi;    
    s1_t     snr;     
    u1_t     flags;   
    u4_t     time;    
    
    u1_t     info;    
    s4_t     lat;     
    s4_t     lon;     
};


enum { RADIO_RST=0, RADIO_TX=1, RADIO_RX=2, RADIO_RXON=3 };

enum { NETID_NONE=(int)~0U, NETID_MASK=(int)0xFFFFFF };

enum { OP_NONE     = 0x0000,
       OP_SCAN     = 0x0001, 
       OP_TRACK    = 0x0002, 
       OP_JOINING  = 0x0004, 
       OP_TXDATA   = 0x0008, 
       OP_POLL     = 0x0010, 
       OP_REJOIN   = 0x0020, 
       OP_SHUTDOWN = 0x0040, 
       OP_TXRXPEND = 0x0080, 
       OP_RNDTX    = 0x0100, 
       OP_PINGINI  = 0x0200, 
       OP_PINGABLE = 0x0400, 
       OP_NEXTCHNL = 0x0800, 
       OP_LINKDEAD = 0x1000, 
       OP_TESTMODE = 0x2000, 
};

enum { TXRX_ACK    = 0x80,   
       TXRX_NACK   = 0x40,   
       TXRX_NOPORT = 0x20,   
       TXRX_PORT   = 0x10,   
       TXRX_DNW1   = 0x01,   
       TXRX_DNW2   = 0x02,   
       TXRX_PING   = 0x04 }; 

enum _ev_t { EV_SCAN_TIMEOUT=1, EV_BEACON_FOUND,
             EV_BEACON_MISSED, EV_BEACON_TRACKED, EV_JOINING,
             EV_JOINED, EV_RFU1, EV_JOIN_FAILED, EV_REJOIN_FAILED,
             EV_TXCOMPLETE, EV_LOST_TSYNC, EV_RESET,
             EV_RXCOMPLETE, EV_LINK_DEAD, EV_LINK_ALIVE };
typedef enum _ev_t ev_t;


struct lmic_t {
    
    ostime_t    txend;
    ostime_t    rxtime;
    u4_t        freq;
    s1_t        rssi;
    s1_t        snr;
    rps_t       rps;
    u1_t        rxsyms;
    u1_t        dndr;
    s1_t        txpow;     

    osjob_t     osjob;

    
    band_t      bands[MAX_BANDS];
    u4_t        channelFreq[MAX_CHANNELS];
    u2_t        channelDrMap[MAX_CHANNELS];
    u2_t        channelMap;
    u1_t        txChnl;          
    u1_t        globalDutyRate;  
    ostime_t    globalDutyAvail; 
    
    u4_t        netid;        
    u2_t        opmode;
    u1_t        upRepeat;     
    s1_t        adrTxPow;     
    u1_t        datarate;     
    u1_t        errcr;        
    u1_t        rejoinCnt;    
    s2_t        drift;        
    s2_t        lastDriftDiff;
    s2_t        maxDriftDiff;

    u1_t        pendTxPort;
    u1_t        pendTxConf;   
    u1_t        pendTxLen;    
    u1_t        pendTxData[MAX_LEN_PAYLOAD];

    u2_t        devNonce;     
    u1_t        nwkKey[16];   
    u1_t        artKey[16];   
    devaddr_t   devaddr;
    u4_t        seqnoDn;      
    u4_t        seqnoUp;

    u1_t        dnConf;       
    s1_t        adrAckReq;    
    u1_t        adrChanged;

    u1_t        margin;
    bit_t       ladrAns;      
    bit_t       devsAns;      
    u1_t        adrEnabled;
    u1_t        moreData;     
    bit_t       dutyCapAns;   
    u1_t        snchAns;      
    
    u1_t        dn2Dr;
    u4_t        dn2Freq;
    u1_t        dn2Ans;       

    
    u1_t        missedBcns;   
    u1_t        bcninfoTries; 
    u1_t        pingSetAns;   
    rxsched_t   ping;         

    
    u1_t        txCnt;
    u1_t        txrxFlags;  
    u1_t        dataBeg;    
    u1_t        dataLen;    
    u1_t        frame[MAX_LEN_FRAME];

    u1_t        bcnChnl;
    u1_t        bcnRxsyms;    
    ostime_t    bcnRxtime;
    bcninfo_t   bcninfo;      
};


extern struct lmic_t LMIC; 


enum { BAND_MILLI=0, BAND_CENTI=1, BAND_DECI=2, BAND_AUX=3 };
bit_t LMIC_setupBand (u1_t bandidx, s1_t txpow, u2_t txcap);
bit_t LMIC_setupChannel (u1_t channel, u4_t freq, u2_t drmap, s1_t band);
void  LMIC_disableChannel (u1_t channel);

void  LMIC_setDrTxpow   (dr_t dr, s1_t txpow);  
void  LMIC_setAdrMode   (bit_t enabled);        
bit_t LMIC_startJoining (void);

void  LMIC_shutdown     (void);
void  LMIC_init         (void);
void  LMIC_reset        (void);
void  LMIC_clrTxData    (void);
void  LMIC_setTxData    (void);
int   LMIC_setTxData2   (u1_t port, xref2u1_t data, u1_t dlen, u1_t confirmed);
void  LMIC_sendAlive    (void);

bit_t LMIC_enableTracking  (u1_t tryBcnInfo);
void  LMIC_disableTracking (void);

void  LMIC_stopPingable  (void);
void  LMIC_setPingable   (u1_t intvExp);
void  LMIC_tryRejoin     (void);

void LMIC_setSession (u4_t netid, devaddr_t devaddr, xref2u1_t nwkKey, xref2u1_t artKey);
void LMIC_setLinkCheckMode (bit_t enabled);
void LMIC_jimrx (void);









struct lmic_t LMIC;
void onEvent(ev_t e);



static void engineUpdate(void);
static void startScan (void);






u2_t os_rlsbf2 (xref2cu1_t buf) {
    return (u2_t)(buf[0] | (buf[1]<<8));
}

u4_t os_rlsbf4 (xref2cu1_t buf) {
    return (u4_t)(buf[0] | (buf[1]<<8) | ((u4_t)buf[2]<<16) | ((u4_t)buf[3]<<24));
}


u4_t os_rmsbf4 (xref2cu1_t buf) {
    return (u4_t)(buf[3] | (buf[2]<<8) | ((u4_t)buf[1]<<16) | ((u4_t)buf[0]<<24));
}


void os_wlsbf2 (xref2u1_t buf, u2_t v) {
    buf[0] = v;
    buf[1] = v>>8;
}

void os_wlsbf4 (xref2u1_t buf, u4_t v) {
    buf[0] = v;
    buf[1] = v>>8;
    buf[2] = v>>16;
    buf[3] = v>>24;
}

void os_wmsbf4 (xref2u1_t buf, u4_t v) {
    buf[3] = v;
    buf[2] = v>>8;
    buf[1] = v>>16;
    buf[0] = v>>24;
}

u1_t os_getBattLevel (void) {
    return MCMD_DEVS_BATT_NOINFO;
}


u2_t os_crc16 (xref2u1_t data, uint len) {
    u2_t remainder = 0;
    u2_t polynomial = 0x1021;
    for( uint i = 0; i < len; i++ ) {
        remainder ^= data[i] << 8;
        for( u1_t bit = 8; bit > 0; bit--) {
            if( (remainder & 0x8000) )
                remainder = (remainder << 1) ^ polynomial;
            else 
                remainder <<= 1;
        }
    }
    return remainder;
}








static void micB0 (u4_t devaddr, u4_t seqno, int dndir, int len) {
    memset(((u1_t*)AESAUX),0,16);
    ((u1_t*)AESAUX)[0]  = 0x49;
    ((u1_t*)AESAUX)[5]  = dndir?1:0;
    ((u1_t*)AESAUX)[15] = len;
    os_wlsbf4(((u1_t*)AESAUX)+ 6,devaddr);
    os_wlsbf4(((u1_t*)AESAUX)+10,seqno);
}


static int aes_verifyMic (xref2cu1_t key, u4_t devaddr, u4_t seqno, int dndir, xref2u1_t pdu, int len) {
    micB0(devaddr, seqno, dndir, len);
    memcpy(((u1_t*)AESKEY),key,16);
    return os_aes(0x02, pdu, len) == os_rmsbf4(pdu+len);
}


static void aes_appendMic (xref2cu1_t key, u4_t devaddr, u4_t seqno, int dndir, xref2u1_t pdu, int len) {
    micB0(devaddr, seqno, dndir, len);
    memcpy(((u1_t*)AESKEY),key,16);
    
    os_wmsbf4(pdu+len, os_aes(0x02, pdu, len));
}


static void aes_appendMic0 (xref2u1_t pdu, int len) {
    os_getDevKey(((u1_t*)AESKEY));
    os_wmsbf4(pdu+len, os_aes(0x02|0x08, pdu, len));  
}


static int aes_verifyMic0 (xref2u1_t pdu, int len) {
    os_getDevKey(((u1_t*)AESKEY));
    return os_aes(0x02|0x08, pdu, len) == os_rmsbf4(pdu+len);
}


static void aes_encrypt (xref2u1_t pdu, int len) {
    os_getDevKey(((u1_t*)AESKEY));
    os_aes(0x00, pdu, len);
}


static void aes_cipher (xref2cu1_t key, u4_t devaddr, u4_t seqno, int dndir, xref2u1_t payload, int len) {
    if( len <= 0 )
        return;
    memset(((u1_t*)AESAUX),0,16);
    ((u1_t*)AESAUX)[0] = ((u1_t*)AESAUX)[15] = 1; 
    ((u1_t*)AESAUX)[5] = dndir?1:0;
    os_wlsbf4(((u1_t*)AESAUX)+ 6,devaddr);
    os_wlsbf4(((u1_t*)AESAUX)+10,seqno);
    memcpy(((u1_t*)AESKEY),key,16);
    os_aes(0x04, payload, len);
}


static void aes_sessKeys (u2_t devnonce, xref2cu1_t artnonce, xref2u1_t nwkkey, xref2u1_t artkey) {
    memset(nwkkey,0,16);
    nwkkey[0] = 0x01;
    memcpy(nwkkey+1,artnonce,LEN_ARTNONCE +LEN_NETID);
    os_wlsbf2(nwkkey+1+LEN_ARTNONCE+LEN_NETID, devnonce);
    memcpy(artkey,nwkkey,16);
    artkey[0] = 0x02;

    os_getDevKey(((u1_t*)AESKEY));
    os_aes(0x00, nwkkey, 16);
    os_getDevKey(((u1_t*)AESKEY));
    os_aes(0x00, artkey, 16);
}









const u1_t maxFrameLens [] = { 64,64,64,123 };

const u1_t _DR2RPS_CRC[] = {
    ILLEGAL_RPS,
    (u1_t)((rps_t)((SF12) | ((BW125)<<3) | ((CR_4_5)<<5) | ((0)?(1<<7):0) | ((0&0xFF)<<8))),
    (u1_t)((rps_t)((SF11) | ((BW125)<<3) | ((CR_4_5)<<5) | ((0)?(1<<7):0) | ((0&0xFF)<<8))),
    (u1_t)((rps_t)((SF10) | ((BW125)<<3) | ((CR_4_5)<<5) | ((0)?(1<<7):0) | ((0&0xFF)<<8))),
    (u1_t)((rps_t)((SF9) | ((BW125)<<3) | ((CR_4_5)<<5) | ((0)?(1<<7):0) | ((0&0xFF)<<8))),
    (u1_t)((rps_t)((SF8) | ((BW125)<<3) | ((CR_4_5)<<5) | ((0)?(1<<7):0) | ((0&0xFF)<<8))),
    (u1_t)((rps_t)((SF7) | ((BW125)<<3) | ((CR_4_5)<<5) | ((0)?(1<<7):0) | ((0&0xFF)<<8))),
    (u1_t)((rps_t)((SF7) | ((BW250)<<3) | ((CR_4_5)<<5) | ((0)?(1<<7):0) | ((0&0xFF)<<8))),
    (u1_t)((rps_t)((FSK) | ((BW125)<<3) | ((CR_4_5)<<5) | ((0)?(1<<7):0) | ((0&0xFF)<<8))),
    ILLEGAL_RPS
};

static const s1_t TXPOWLEVELS[] = {
    20, 14, 11, 8, 5, 2, 0,0, 0,0,0,0, 0,0,0,0
};


static const u1_t SENSITIVITY[7][3] = {
    
    
    { 141-109,  141-109, 141-109 },  
    { 141-127,  141-124, 141-121 },  
    { 141-129,  141-126, 141-123 },  
    { 141-132,  141-129, 141-126 },  
    { 141-135,  141-132, 141-129 },  
    { 141-138,  141-135, 141-132 },  
    { 141-141,  141-138, 141-135 }   
};

int getSensitivity (rps_t rps) {
    return -141 + SENSITIVITY[getSf(rps)][getBw(rps)];
}

ostime_t calcAirTime (rps_t rps, u1_t plen) {
    u1_t bw = getBw(rps);  
    u1_t sf = getSf(rps);  
    if( sf == FSK ) {
        return (plen+ 5+ 3+ 1+ 2) *  8
            * (s4_t)32768 /  50000;
    }
    u1_t sfx = 4*(sf+(7-SF7));
    u1_t q = sfx - (sf >= SF11 ? 8 : 0);
    int tmp = 8*plen - sfx + 28 + (getNocrc(rps)?0:16) - (getIh(rps)?20:0);
    if( tmp > 0 ) {
        tmp = (tmp + q - 1) / q;
        tmp *= getCr(rps)+5;
        tmp += 8;
    } else {
        tmp = 8;
    }
    tmp = (tmp<<2) +  49  ;
    
    
    
    
    
    
    
    
    
    sfx = sf+(7-SF7) - (3+2) - bw;
    int div = 15625;
    if( sfx > 4 ) {
        
        div >>= sfx-4;
        sfx = 4;
    }
    
    return (((ostime_t)tmp << sfx) * 32768 + div/2) / div;
}

extern inline rps_t updr2rps (dr_t dr);
extern inline rps_t dndr2rps (dr_t dr);
extern inline int isFasterDR (dr_t dr1, dr_t dr2);
extern inline int isSlowerDR (dr_t dr1, dr_t dr2);
extern inline dr_t  incDR    (dr_t dr);
extern inline dr_t  decDR    (dr_t dr);
extern inline dr_t  assertDR (dr_t dr);
extern inline dr_t  validDR  (dr_t dr);
extern inline dr_t  lowerDR  (dr_t dr, u1_t n);

extern inline sf_t  getSf    (rps_t params);
extern inline rps_t setSf    (rps_t params, sf_t sf);
extern inline bw_t  getBw    (rps_t params);
extern inline rps_t setBw    (rps_t params, bw_t cr);
extern inline cr_t  getCr    (rps_t params);
extern inline rps_t setCr    (rps_t params, cr_t cr);
extern inline int   getNocrc (rps_t params);
extern inline rps_t setNocrc (rps_t params, int nocrc);
extern inline int   getIh    (rps_t params);
extern inline rps_t setIh    (rps_t params, int ih);
extern inline rps_t makeRps  (sf_t sf, bw_t bw, cr_t cr, int ih, int nocrc);
extern inline int   sameSfBw (rps_t r1, rps_t r2);








static const u1_t DRADJUST[2+TXCONF_ATTEMPTS] = {
    
    0,
    
    0,0,1,0,1,0,1,0,0
};













static const ostime_t DR2HSYM_osticks[] = {
    ((ostime_t)( ((s8_t)(128<<7) * 32768 + 500000) / 1000000)),  
    ((ostime_t)( ((s8_t)(128<<6) * 32768 + 500000) / 1000000)),  
    ((ostime_t)( ((s8_t)(128<<5) * 32768 + 500000) / 1000000)),  
    ((ostime_t)( ((s8_t)(128<<4) * 32768 + 500000) / 1000000)),  
    ((ostime_t)( ((s8_t)(128<<3) * 32768 + 500000) / 1000000)),  
    ((ostime_t)( ((s8_t)(128<<2) * 32768 + 500000) / 1000000)),  
    ((ostime_t)( ((s8_t)(128<<1) * 32768 + 500000) / 1000000)),  
    ((ostime_t)( ((s8_t)(80) * 32768 + 500000) / 1000000))       
};


static ostime_t calcRxWindow (u1_t secs, dr_t dr) {
    ostime_t rxoff, err;
    if( secs==0 ) {
        
        rxoff = LMIC.drift;
        err = LMIC.lastDriftDiff;
    } else {
        
        rxoff = (LMIC.drift * (ostime_t)secs) >> BCN_INTV_exp;
        err = (LMIC.lastDriftDiff * (ostime_t)secs) >> BCN_INTV_exp;
    }
    u1_t rxsyms = 5;
    err += (ostime_t)LMIC.maxDriftDiff * LMIC.missedBcns;
    LMIC.rxsyms = 5 + (err / (DR2HSYM_osticks[(dr)]));

    return (rxsyms-8) * (DR2HSYM_osticks[(dr)]) + rxoff;
}



static void calcBcnRxWindowFromMillis (u1_t ms, bit_t ini) {
    if( ini ) {
        LMIC.drift = 0;
        LMIC.maxDriftDiff = 0;
        LMIC.missedBcns = 0;
        LMIC.bcninfo.flags |= BCN_NODRIFT|BCN_NODDIFF;
    }
    ostime_t hsym = (DR2HSYM_osticks[(DR_BCN)]);
    LMIC.bcnRxsyms = 5 + ((ostime_t)( ((s8_t)(ms) * 32768 + 999) / 1000)) / hsym;
    LMIC.bcnRxtime = LMIC.bcninfo.txtime + ((ostime_t)( (s8_t)(BCN_INTV_sec) * 32768)) - (LMIC.bcnRxsyms-8) * hsym;
}



static void rxschedInit (xref2rxsched_t rxsched) {
    memset(((u1_t*)AESKEY),0,16);
    memset(LMIC . frame + 8,0,8);
    os_wlsbf4(LMIC.frame, LMIC.bcninfo.time);
    os_wlsbf4(LMIC.frame+4, LMIC.devaddr);
    os_aes(0x00,LMIC.frame,16);
    u1_t intvExp = rxsched->intvExp;
    ostime_t off = os_rlsbf2(LMIC.frame) & (0x0FFF >> (7 - intvExp)); 
    rxsched->rxbase = (LMIC.bcninfo.txtime +
                       ((ostime_t)( ((s8_t)(BCN_RESERVE_ms) * 32768) / 1000)) +
                       ((ostime_t)( ((s8_t)(BCN_SLOT_SPAN_ms * off) * 32768) / 1000))); 
    rxsched->slot   = 0;
    rxsched->rxtime = rxsched->rxbase - calcRxWindow( 2+(1<<intvExp),rxsched->dr);
    rxsched->rxsyms = LMIC.rxsyms;
}


static bit_t rxschedNext (xref2rxsched_t rxsched, ostime_t cando) {
  again:
    if( rxsched->rxtime - cando >= 0 )
        return 1;
    u1_t slot;
    if( (slot=rxsched->slot) >= 128 )
        return 0;
    u1_t intv = 1<<rxsched->intvExp;
    if( (rxsched->slot = (slot += (intv))) >= 128 )
        return 0;
    rxsched->rxtime = rxsched->rxbase
        + ((((ostime_t)( ((s8_t)(BCN_WINDOW_ms) * 32768) / 1000)) * (ostime_t)slot) >> BCN_INTV_exp)
        - calcRxWindow( 2+slot+intv,rxsched->dr);
    rxsched->rxsyms = LMIC.rxsyms;
    goto again;
}


static ostime_t rndDelay (u1_t secSpan) {
    u2_t r = ((u2_t)((radio_rand1()<<8)|radio_rand1()));
    ostime_t delay = r;
    if( delay > 32768 )
        delay = r % (u2_t)32768;
    if( secSpan > 0 )
        delay += ((u1_t)r % secSpan) * 32768;
    return delay;
}


static void txDelay (ostime_t reftime, u1_t secSpan) {
    reftime += rndDelay(secSpan);
    if( LMIC.globalDutyRate == 0  ||  (reftime - LMIC.globalDutyAvail) > 0 ) {
        LMIC.globalDutyAvail = reftime;
        LMIC.opmode |= OP_RNDTX;
    }
}


static void setDrJoin (u1_t reason, u1_t dr) {
    ;
    LMIC.datarate = dr;
    ;
}


static void setDrTxpow (u1_t reason, u1_t dr, s1_t pow) {
    ;
    
    if( pow != KEEP_TXPOW )
        LMIC.adrTxPow = pow;
    if( LMIC.datarate != dr ) {
        LMIC.datarate = dr;
        ;
        LMIC.opmode |= OP_NEXTCHNL;
    }
}


void LMIC_stopPingable (void) {
    LMIC.opmode &= ~(OP_PINGABLE|OP_PINGINI);
}


void LMIC_setPingable (u1_t intvExp) {
    
    LMIC.ping.intvExp = (intvExp & 0x7);
    LMIC.opmode |= OP_PINGABLE;
    
    
    if( (LMIC.opmode & (OP_TRACK|OP_SCAN)) == 0  &&  LMIC.bcninfoTries == 0 )
        LMIC_enableTracking(0);
}






enum { NUM_DEFAULT_CHANNELS=6 };
static const u4_t iniChannelFreq[12] = {
    
    EU868_F1|BAND_MILLI, EU868_J4|BAND_MILLI,
    EU868_F2|BAND_MILLI, EU868_J5|BAND_MILLI,
    EU868_F3|BAND_MILLI, EU868_J6|BAND_MILLI,
    
    EU868_F1|BAND_CENTI, EU868_F2|BAND_CENTI, EU868_F3|BAND_CENTI,
    EU868_F4|BAND_MILLI, EU868_F5|BAND_MILLI, EU868_F6|BAND_DECI
};

static void initDefaultChannels (bit_t join) {
    memset(&LMIC . channelFreq,0,sizeof(LMIC . channelFreq));
    memset(&LMIC . channelDrMap,0,sizeof(LMIC . channelDrMap));
    memset(&LMIC . bands,0,sizeof(LMIC . bands));

    LMIC.channelMap = 0x3F;
    u1_t su = join ? 0 : 6;
    for( u1_t fu=0; fu<6; fu++,su++ ) {
        LMIC.channelFreq[fu]  = iniChannelFreq[su];
        LMIC.channelDrMap[fu] = (((u2_t)0xFFFF<<(DR_SF12)) & ((u2_t)0xFFFF>>(15-(DR_SF7))));
    }
    if( !join ) {
        LMIC.channelDrMap[5] = (((u2_t)0xFFFF<<(DR_SF12)) & ((u2_t)0xFFFF>>(15-(DR_SF7))));
        LMIC.channelDrMap[1] = (((u2_t)0xFFFF<<(DR_SF12)) & ((u2_t)0xFFFF>>(15-(DR_FSK))));
    }

    LMIC.bands[BAND_MILLI].txcap    = 1000;  
    LMIC.bands[BAND_MILLI].txpow    = 14;
    LMIC.bands[BAND_MILLI].lastchnl = radio_rand1() % MAX_CHANNELS;
    LMIC.bands[BAND_CENTI].txcap    = 100;   
    LMIC.bands[BAND_CENTI].txpow    = 14;
    LMIC.bands[BAND_CENTI].lastchnl = radio_rand1() % MAX_CHANNELS;
    LMIC.bands[BAND_DECI ].txcap    = 10;    
    LMIC.bands[BAND_DECI ].txpow    = 27;
    LMIC.bands[BAND_CENTI].lastchnl = radio_rand1() % MAX_CHANNELS;
    LMIC.bands[BAND_MILLI].avail = 
    LMIC.bands[BAND_CENTI].avail =
    LMIC.bands[BAND_DECI ].avail = os_getTime();
}

bit_t LMIC_setupBand (u1_t bandidx, s1_t txpow, u2_t txcap) {
    if( bandidx > BAND_AUX ) return 0;
    band_t* b = &LMIC.bands[bandidx];
    b->txpow = txpow;
    b->txcap = txcap;
    b->avail = os_getTime();
    b->lastchnl = radio_rand1() % MAX_CHANNELS;
    return 1;
}

bit_t LMIC_setupChannel (u1_t chidx, u4_t freq, u2_t drmap, s1_t band) {
    if( chidx >= MAX_CHANNELS )
        return 0;
    if( band == -1 ) {
        if( freq >= 869400000 && freq <= 869650000 )
            freq |= BAND_DECI;   
        else if( (freq >= 868000000 && freq <= 868600000) ||
                 (freq >= 869700000 && freq <= 870000000)  )
            freq |= BAND_CENTI;  
        else 
            freq |= BAND_MILLI;  
    } else {
        if( band > BAND_AUX ) return 0;
        freq = (freq&~3) | band;
    }
    LMIC.channelFreq [chidx] = freq;
    LMIC.channelDrMap[chidx] = drmap==0 ? (((u2_t)0xFFFF<<(DR_SF12)) & ((u2_t)0xFFFF>>(15-(DR_SF7)))) : drmap;
    LMIC.channelMap |= 1<<chidx;  
    return 1;
}

void LMIC_disableChannel (u1_t channel) {
    LMIC.channelFreq[channel] = 0;
    LMIC.channelDrMap[channel] = 0;
    LMIC.channelMap &= ~(1<<channel);
}

static u4_t convFreq (xref2u1_t ptr) {
    u4_t freq = (os_rlsbf4(ptr-1) >> 8) * 100;
    if( freq < EU868_FREQ_MIN || freq > EU868_FREQ_MAX )
        freq = 0;
    return freq;
}

static u1_t mapChannels (u1_t chpage, u2_t chmap) {
    
    if( chpage != 0 || chmap==0 || (chmap & ~LMIC.channelMap) != 0 )
        return 0;  
    for( u1_t chnl=0; chnl<MAX_CHANNELS; chnl++ ) {
        if( (chmap & (1<<chnl)) != 0 && LMIC.channelFreq[chnl] == 0 )
            chmap &= ~(1<<chnl); 
    }
    LMIC.channelMap = chmap;
    return 1;
}


static void updateTx (ostime_t txbeg) {
    u4_t freq = LMIC.channelFreq[LMIC.txChnl];
    
    ostime_t airtime = calcAirTime(LMIC.rps, LMIC.dataLen);
    
    xref2band_t band = &LMIC.bands[freq & 0x3];
    LMIC.freq  = freq & ~(u4_t)3;
    LMIC.txpow = band->txpow;
    band->avail = txbeg + airtime * band->txcap;
    if( LMIC.globalDutyRate != 0 )
        LMIC.globalDutyAvail = txbeg + (airtime<<LMIC.globalDutyRate);
}

static ostime_t nextTx (ostime_t now) {
    u1_t bmap=0xF;
    do {
        ostime_t mintime = now +  36000*32768;
        u1_t band=0;
        for( u1_t bi=0; bi<4; bi++ ) {
            if( (bmap & (1<<bi)) && mintime - LMIC.bands[bi].avail > 0 )
                mintime = LMIC.bands[band = bi].avail;
        }
        
        u1_t chnl = LMIC.bands[band].lastchnl;
        for( u1_t ci=0; ci<MAX_CHANNELS; ci++ ) {
            if( (chnl = (chnl+1)) >= MAX_CHANNELS )
                chnl -=  MAX_CHANNELS;
            if( (LMIC.channelMap & (1<<chnl)) != 0  &&  
                (LMIC.channelDrMap[chnl] & (1<<(LMIC.datarate&0xF))) != 0  &&
                band == (LMIC.channelFreq[chnl] & 0x3) ) { 
                LMIC.txChnl = LMIC.bands[band].lastchnl = chnl;
                return mintime;
            }
        }
        if( (bmap &= ~(1<<band)) == 0 ) {
            
            return mintime;
        }
    } while(1);
}


static void setBcnRxParams (void) {
    LMIC.dataLen = 0;
    LMIC.freq = LMIC.channelFreq[LMIC.bcnChnl] & ~(u4_t)3;
    LMIC.rps  = setIh(setNocrc(dndr2rps((dr_t)DR_BCN),1),LEN_BCN);
}


static void initJoinLoop (void) {
    LMIC.txChnl = radio_rand1() % 6;
    LMIC.adrTxPow = 14;
    setDrJoin(DRCHG_SET, DR_SF7);
    initDefaultChannels(1);
    if(!((LMIC . opmode & OP_NEXTCHNL)==0)) hal_failed();
    LMIC.txend = LMIC.bands[BAND_MILLI].avail + rndDelay(8);
}


static ostime_t nextJoinState (void) {
    u1_t failed = 0;

    
    
    if( ++LMIC.txChnl == 6 )
        LMIC.txChnl = 0;
    if( (++LMIC.txCnt & 1) == 0 ) {
        
        if( LMIC.datarate == DR_SF12 )
            failed = 1; 
        else
            setDrJoin(DRCHG_NOJACC, decDR((dr_t)LMIC.datarate));
    }
    
    LMIC.opmode &= ~OP_NEXTCHNL;
    
    
    ostime_t time = os_getTime();
    if( time - LMIC.bands[BAND_MILLI].avail < 0 )
        time = LMIC.bands[BAND_MILLI].avail;
    LMIC.txend = time +
        (0
         
         ? ((ostime_t)( ((s8_t)(3000) * 32768) / 1000))
         
         
         : ((ostime_t)( ((s8_t)(3000) * 32768) / 1000))+rndDelay(255>>LMIC.datarate));
    
    return failed;
}







static void runEngineUpdate (xref2osjob_t osjob) {
    engineUpdate();
}


static void reportEvent (ev_t ev) {
    ;
    onEvent(ev);
    engineUpdate();
}


static void runReset (xref2osjob_t osjob) {
    
    LMIC_reset();
    LMIC_startJoining();
    reportEvent(EV_RESET);
}

static void stateJustJoined (void) {
    LMIC.seqnoDn     = LMIC.seqnoUp = 0;
    LMIC.rejoinCnt   = 0;
    LMIC.dnConf      = LMIC.adrChanged = LMIC.ladrAns = LMIC.devsAns = 0;
    LMIC.moreData    = LMIC.dn2Ans = LMIC.snchAns = LMIC.dutyCapAns = 0;
    LMIC.pingSetAns  = 0;
    LMIC.upRepeat    = 0;
    LMIC.adrAckReq   = LINK_CHECK_INIT;
    LMIC.dn2Dr       = DR_DNW2;
    LMIC.dn2Freq     = FREQ_DNW2;
    LMIC.bcnChnl     = CHNL_BCN;
    LMIC.ping.freq   = FREQ_PING;
    LMIC.ping.dr     = DR_PING;
}







static int decodeBeacon (void) {
    if(!(LMIC . dataLen == LEN_BCN)) hal_failed(); 
    xref2u1_t d = LMIC.frame;
    if(
        d[OFF_BCN_CRC1] != (u1_t)os_crc16(d,OFF_BCN_CRC1)
        )
        return 0;   
    
    u4_t bcnnetid = os_rlsbf4(&d[OFF_BCN_NETID]) & 0xFFFFFF;
    if( bcnnetid != LMIC.netid )
        return -1;  

    LMIC.bcninfo.flags &= ~(BCN_PARTIAL|BCN_FULL);
    
    LMIC.bcninfo.snr    = LMIC.snr;
    LMIC.bcninfo.rssi   = LMIC.rssi;
    LMIC.bcninfo.txtime = LMIC.rxtime - ((ostime_t)( ((s8_t)(AIRTIME_BCN) * 32768) / 1000000));
    LMIC.bcninfo.time   = os_rlsbf4(&d[OFF_BCN_TIME]);
    LMIC.bcninfo.flags |= BCN_PARTIAL;

    
    if( os_rlsbf2(&d[OFF_BCN_CRC2]) != os_crc16(d,OFF_BCN_CRC2) )
        return 1;
    
    LMIC.bcninfo.lat    = (s4_t)os_rlsbf4(&d[OFF_BCN_LAT-1]) >> 8; 
    LMIC.bcninfo.lon    = (s4_t)os_rlsbf4(&d[OFF_BCN_LON-1]) >> 8; 
    LMIC.bcninfo.info   = d[OFF_BCN_INFO];
    LMIC.bcninfo.flags |= BCN_FULL;
    return 2;
}


static bit_t decodeFrame (void) {
    xref2u1_t d = LMIC.frame;
    u1_t hdr    = d[0];
    u1_t ftype  = hdr & HDR_FTYPE;
    int  dlen   = LMIC.dataLen;
    if( dlen < OFF_DAT_OPTS+4 ||
        (hdr & HDR_MAJOR) != HDR_MAJOR_V1 ||
        (ftype != HDR_FTYPE_DADN  &&  ftype != HDR_FTYPE_DCDN) ) {
        
        ;
      norx:
        LMIC.dataLen = 0;
        return 0;
    }
    
    
    int  fct   = d[OFF_DAT_FCT];
    u4_t addr  = os_rlsbf4(&d[OFF_DAT_ADDR]);
    u4_t seqno = os_rlsbf2(&d[OFF_DAT_SEQNO]);
    int  olen  = fct & FCT_OPTLEN;
    int  ackup = (fct & FCT_ACK) != 0 ? 1 : 0;   
    int  poff  = OFF_DAT_OPTS+olen;
    int  pend  = dlen-4;  

    if( addr != LMIC.devaddr ) {
        ;
        goto norx;
    }
    if( poff > pend ) {
        ;
        goto norx;
    }

    int port = -1;
    int replayConf = 0;

    if( pend > poff )
        port = d[poff++];

    seqno = LMIC.seqnoDn + (u2_t)(seqno - LMIC.seqnoDn);

    if( !aes_verifyMic(LMIC.nwkKey, LMIC.devaddr, seqno,  1, d, pend) ) {
        ;
        goto norx;
    }
    if( seqno < LMIC.seqnoDn ) {
        if( (s4_t)seqno > (s4_t)LMIC.seqnoDn ) {
            ;
            goto norx;
        }
        if( seqno != LMIC.seqnoDn-1 || !LMIC.dnConf || ftype != HDR_FTYPE_DCDN ) {
            ;
            goto norx;
        }
        
        
        replayConf = 1;
    }
    else {
        if( seqno > LMIC.seqnoDn ) {
            ;
        }
        LMIC.seqnoDn = seqno+1;  
        ;
        
        LMIC.dnConf = (ftype == HDR_FTYPE_DCDN ? FCT_ACK : 0);
    }

    if( LMIC.dnConf || (fct & FCT_MORE) )
        LMIC.opmode |= OP_POLL;

    
    LMIC.adrChanged = LMIC.rejoinCnt = 0;
    if( LMIC.adrAckReq != LINK_CHECK_OFF )
        LMIC.adrAckReq = LINK_CHECK_INIT;

    
    int m = LMIC.rssi - RSSI_OFF - getSensitivity(LMIC.rps);
    LMIC.margin = m < 0 ? 0 : m > 254 ? 254 : m;

    xref2u1_t opts = &d[OFF_DAT_OPTS];
    int oidx = 0;
    while( oidx < olen ) {
        switch( opts[oidx] ) {
        case MCMD_LCHK_ANS: {
            
            
            oidx += 3;
            continue;
        }
        case MCMD_LADR_REQ: {
            u1_t p1     = opts[oidx+1];            
            u2_t chmap  = os_rlsbf2(&opts[oidx+2]);
            u1_t chpage = opts[oidx+4] & MCMD_LADR_CHPAGE_MASK;     
            u1_t uprpt  = opts[oidx+4] & MCMD_LADR_REPEAT_MASK;     
            oidx += 5;

            LMIC.ladrAns = 0x80 |     
                MCMD_LADR_ANS_POWACK | MCMD_LADR_ANS_CHACK | MCMD_LADR_ANS_DRACK;
            if( !mapChannels(chpage, chmap) )
                LMIC.ladrAns &= ~MCMD_LADR_ANS_CHACK;
            dr_t dr = (dr_t)(p1>>MCMD_LADR_DR_SHIFT);
            if( !validDR(dr) ) {
                LMIC.ladrAns &= ~MCMD_LADR_ANS_DRACK;
                ;
            }
            if( (LMIC.ladrAns & 0x7F) == (MCMD_LADR_ANS_POWACK | MCMD_LADR_ANS_CHACK | MCMD_LADR_ANS_DRACK) ) {
                
                LMIC.upRepeat = uprpt;
                setDrTxpow(DRCHG_NWKCMD, dr, (TXPOWLEVELS[(p1&MCMD_LADR_POW_MASK)>>MCMD_LADR_POW_SHIFT]));
            }
            LMIC.adrChanged = 1;  
            continue;
        }
        case MCMD_DEVS_REQ: {
            LMIC.devsAns = 1;
            oidx += 1;
            continue;
        }
        case MCMD_DN2P_SET: {
            dr_t dr = (dr_t)(opts[oidx+1] & 0x0F);
            u4_t freq = convFreq(&opts[oidx+2]);
            oidx += 5;
            LMIC.dn2Ans = 0x80;   
            if( validDR(dr) )
                LMIC.dn2Ans |= MCMD_DN2P_ANS_DRACK;
            if( freq != 0 )
                LMIC.dn2Ans |= MCMD_DN2P_ANS_CHACK;
            if( LMIC.dn2Ans == (0x80|MCMD_DN2P_ANS_DRACK|MCMD_DN2P_ANS_CHACK) ) {
                LMIC.dn2Dr = dr;
                LMIC.dn2Freq = freq;
                ;
                ;
            }
            continue;
        }
        case MCMD_DCAP_REQ: {
            u1_t cap = opts[oidx+1];
            oidx += 2;
            
            if( cap==0xFF )
                LMIC.opmode |= OP_SHUTDOWN;  
            LMIC.globalDutyRate  = cap & 0xF;
            LMIC.globalDutyAvail = os_getTime();
            ;
            LMIC.dutyCapAns = 1;
            continue;
        }
        case MCMD_SNCH_REQ: {
            u1_t chidx = opts[oidx+1];  
            u4_t freq  = convFreq(&opts[oidx+2]); 
            u1_t drs   = opts[oidx+5];  
            LMIC.snchAns = 0x80;
            if( freq != 0 && LMIC_setupChannel(chidx, freq, (((u2_t)0xFFFF<<(drs&0xF)) & ((u2_t)0xFFFF>>(15-(drs>>4)))), -1) )
                LMIC.snchAns |= MCMD_SNCH_ANS_DRACK|MCMD_SNCH_ANS_FQACK;
            oidx += 6;
            continue;
        }
        case MCMD_PING_SET: {
            u4_t freq = convFreq(&opts[oidx+1]);
            oidx += 4;
            u1_t flags = 0x80;
            if( freq != 0 ) {
                flags |= MCMD_PING_ANS_FQACK;
                LMIC.ping.freq = freq;
                ;
                ;
                ;
            }
            LMIC.pingSetAns = flags;
            continue;
        }
        case MCMD_BCNI_ANS: {
            
            if( (LMIC.opmode & OP_TRACK) == 0 ) {
                LMIC.bcnChnl = opts[oidx+3];
                
                LMIC.opmode |= OP_TRACK;
                
                if(!(LMIC . bcninfoTries!=0)) hal_failed();
                
                LMIC.bcninfo.txtime = (LMIC.rxtime
                                       + ((ostime_t)( ((s8_t)(os_rlsbf2(&opts[oidx+1]) * MCMD_BCNI_TUNIT) * 32768) / 1000))
                                       + ((ostime_t)( ((s8_t)(MCMD_BCNI_TUNIT/2) * 32768 + 999) / 1000))
                                       - ((ostime_t)( (s8_t)(BCN_INTV_sec) * 32768)));
                LMIC.bcninfo.flags = 0;  
                calcBcnRxWindowFromMillis(MCMD_BCNI_TUNIT,1);  

                ;
            }
            oidx += 4;
            continue;
        }
        }
        ;
        break;
    }
    if( oidx != olen ) {
        ;
    }

    if( !replayConf ) {
        
        
        if( port >= 0  &&  pend-poff > 0 )
            aes_cipher(port <= 0 ? LMIC.nwkKey : LMIC.artKey, LMIC.devaddr, seqno,  1, d+poff, pend-poff);

        ;
    } else {
        ;
    }

    if( 
        (ackup && LMIC.txCnt == 0) ||
        
        
        
        (!ackup && LMIC.txCnt != 0) ) {
        ;
    }

    if( LMIC.txCnt != 0 ) 
        LMIC.txrxFlags |= ackup ? TXRX_ACK : TXRX_NACK;

    if( port < 0 ) {
        LMIC.txrxFlags |= TXRX_NOPORT;
        LMIC.dataBeg = poff;
        LMIC.dataLen = 0;
    } else {
        LMIC.txrxFlags |= TXRX_PORT;
        LMIC.dataBeg = poff;
        LMIC.dataLen = pend-poff;
    }
    return 1;
}






static void setupRx2 (void) {
    LMIC.txrxFlags = TXRX_DNW2;
    LMIC.rps = dndr2rps(LMIC.dn2Dr);	
    LMIC.freq = LMIC.dn2Freq;		
    LMIC.dataLen = 0;
	LMIC.rxtime = 1000;	
    os_radio(RADIO_RX);
}


static void schedRx2 (ostime_t delay, osjobcb_t func) {
    
    LMIC.rxtime = LMIC.txend + delay + (8-5)*(DR2HSYM_osticks[(LMIC . dn2Dr)]);
    os_setTimedCallback(&LMIC.osjob, LMIC.rxtime - (((ostime_t)( ((s8_t)(2000) * 32768) / 1000000))), func);
}

static void setupRx1 (osjobcb_t func) {
    LMIC.txrxFlags = TXRX_DNW1;
    
    LMIC.rps = 6;		
    LMIC.dataLen = 0;
    LMIC.osjob.func = func;
    os_radio(RADIO_RX);
}



static void txDone (ostime_t delay, osjobcb_t func) {
    if( (LMIC.opmode & (OP_TRACK|OP_PINGABLE|OP_PINGINI)) == (OP_TRACK|OP_PINGABLE) ) {
        rxschedInit(&LMIC.ping);    
        LMIC.opmode |= OP_PINGINI;
    }
    
    ;
    
    
    
    if(  LMIC.rxsyms == DR_FSK ) {
        LMIC.rxtime = LMIC.txend + delay - 1*((ostime_t)( ((s8_t)(160) * 32768 + 500000) / 1000000));
        LMIC.rxsyms = (1+5+2);
    }
    else
    {
        LMIC.rxtime = LMIC.txend + delay + (8-5)*(DR2HSYM_osticks[(LMIC . dndr)]);
        LMIC.rxsyms = 5;
    }
    os_setTimedCallback(&LMIC.osjob, LMIC.rxtime - (((ostime_t)( ((s8_t)(2000) * 32768) / 1000000))), func);
}





static void onJoinFailed (xref2osjob_t osjob) {
    
    
    reportEvent(EV_JOIN_FAILED);
}


static bit_t processJoinAccept (void) {
    if(!(LMIC . txrxFlags != TXRX_DNW1 || LMIC . dataLen != 0)) hal_failed();
    if(!((LMIC . opmode & OP_TXRXPEND)!=0)) hal_failed();

    if( LMIC.dataLen == 0 ) {
      nojoinframe:
        if( (LMIC.opmode & OP_JOINING) == 0 ) {
            if(!((LMIC . opmode & OP_REJOIN) != 0)) hal_failed();
            
            LMIC.opmode &= ~(OP_REJOIN|OP_TXRXPEND);
            if( LMIC.rejoinCnt < 10 )
                LMIC.rejoinCnt++;
            reportEvent(EV_REJOIN_FAILED);
            return 1;
        }
        LMIC.opmode &= ~OP_TXRXPEND;
        ostime_t delay = nextJoinState();
        ;
        
        
        
        os_setTimedCallback(&LMIC.osjob, os_getTime()+delay,
                            (delay&1) != 0
                            ? (&(onJoinFailed))      
                            : (&(runEngineUpdate))); 
        return 1;
    }
    u1_t hdr  = LMIC.frame[0];
    u1_t dlen = LMIC.dataLen;
    u4_t mic  = os_rlsbf4(&LMIC.frame[dlen-4]); 
    if( (dlen != LEN_JA && dlen != LEN_JAEXT)
        || (hdr & (HDR_FTYPE|HDR_MAJOR)) != (HDR_FTYPE_JACC|HDR_MAJOR_V1) ) {
        ;
      badframe:
        if( (LMIC.txrxFlags & TXRX_DNW1) != 0 )
            return 0;
        goto nojoinframe;
    }
    aes_encrypt(LMIC.frame+1, dlen-1);
    if( !aes_verifyMic0(LMIC.frame, dlen-4) ) {
        ;
        goto badframe;
    }

    u4_t addr = os_rlsbf4(LMIC.frame+OFF_JA_DEVADDR);
    LMIC.devaddr = addr;
    LMIC.netid = os_rlsbf4(&LMIC.frame[OFF_JA_NETID]) & 0xFFFFFF;

    initDefaultChannels(0);
    if( dlen > LEN_JA ) {
        dlen = OFF_CFLIST;
        for( u1_t chidx=3; chidx<8; chidx++, dlen+=3 ) {
            u4_t freq = convFreq(&LMIC.frame[dlen]);
            if( freq )
                LMIC_setupChannel(chidx, freq, 0, -1);
        }
    }

    
    aes_sessKeys(LMIC.devNonce-1, &LMIC.frame[OFF_JA_ARTNONCE], LMIC.nwkKey, LMIC.artKey);
    ;
    ;
    ;
    ;

    ;
    
    if(!((LMIC . opmode & (OP_JOINING|OP_REJOIN))!=0)) hal_failed();
    if( (LMIC.opmode & OP_REJOIN) != 0 ) {
        
        LMIC.datarate = lowerDR(LMIC.datarate, LMIC.rejoinCnt);
    }
    LMIC.opmode &= ~(OP_JOINING|OP_TRACK|OP_REJOIN|OP_TXRXPEND|OP_PINGINI) | OP_NEXTCHNL;
    stateJustJoined();
    reportEvent(EV_JOINED);
    return 1;
}


static void processRx2Jacc (xref2osjob_t osjob) {
    if( LMIC.dataLen == 0 )
        LMIC.txrxFlags = 0;  
    processJoinAccept();
}


static void setupRx2Jacc (xref2osjob_t osjob) {
    LMIC.osjob.func = (&(processRx2Jacc));
    setupRx2();
}


static void processRx1Jacc (xref2osjob_t osjob) {
    if( LMIC.dataLen == 0 || !processJoinAccept() )
        schedRx2(((ostime_t)( (s8_t)(DELAY_JACC2) * 32768)), (&(setupRx2Jacc)));
}


static void setupRx1Jacc (xref2osjob_t osjob) {
    setupRx1((&(processRx1Jacc)));
}


static void jreqDone (xref2osjob_t osjob) {
    txDone(((ostime_t)( (s8_t)(DELAY_JACC1) * 32768)), (&(setupRx1Jacc)));
}




static bit_t processDnData(void);

static void processRx2DnDataDelay (xref2osjob_t osjob) {
    processDnData();
}

static void processRx2DnData (xref2osjob_t osjob) {
    if( LMIC.dataLen == 0 ) {
        LMIC.txrxFlags = 0;  
        
        
        os_setTimedCallback(&LMIC.osjob,
                            (os_getTime() + ((ostime_t)( ((s8_t)(3000) * 32768) / 1000)) + rndDelay(2)),
                            processRx2DnDataDelay);
        return;
    }
    processDnData();
}


static void setupRx2DnData (xref2osjob_t osjob) {
    LMIC.osjob.func = (&(processRx2DnData));
    setupRx2();
}


static void processRx1DnData (xref2osjob_t osjob) {
    if( LMIC.dataLen == 0 || !processDnData() )
        schedRx2(((ostime_t)( (s8_t)(DELAY_DNW2) * 32768)), (&(setupRx2DnData)));
}


static void setupRx1DnData (xref2osjob_t osjob) {
    
	LMIC.opmode &= ~(OP_TXDATA|OP_TXRXPEND);
	onEvent(EV_TXCOMPLETE);
}


static void updataDone (xref2osjob_t osjob) {
    txDone(((ostime_t)( (s8_t)(DELAY_DNW1) * 32768)), (&(setupRx1DnData)));
}




static void buildDataFrame (void) {
    bit_t txdata = ((LMIC.opmode & (OP_TXDATA|OP_POLL)) != OP_POLL);
    u1_t dlen = txdata ? LMIC.pendTxLen : 0;

    
    
    int  end = OFF_DAT_OPTS;
    if( (LMIC.opmode & (OP_TRACK|OP_PINGABLE)) == (OP_TRACK|OP_PINGABLE) ) {
        
        LMIC.frame[end] = MCMD_PING_IND;
        LMIC.frame[end+1] = LMIC.ping.dr | (LMIC.ping.intvExp<<4);
        end += 2;
    }
    if( LMIC.dutyCapAns ) {
        LMIC.frame[end] = MCMD_DCAP_ANS;
        end += 1;
        LMIC.dutyCapAns = 0;
    }
    if( LMIC.dn2Ans ) {
        LMIC.frame[end+0] = MCMD_DN2P_ANS;
        LMIC.frame[end+1] = LMIC.dn2Ans & ~MCMD_DN2P_ANS_RFU;
        end += 2;
        LMIC.dn2Ans = 0;
    }
    if( LMIC.devsAns ) {  
        LMIC.frame[end+0] = MCMD_DEVS_ANS;
        LMIC.frame[end+1] = LMIC.margin;
        LMIC.frame[end+2] = os_getBattLevel();
        end += 3;
        LMIC.devsAns = 0;
    }
    if( LMIC.ladrAns ) {  
        LMIC.frame[end+0] = MCMD_LADR_ANS;
        LMIC.frame[end+1] = LMIC.ladrAns & ~MCMD_LADR_ANS_RFU;
        end += 2;
        LMIC.ladrAns = 0;
    }
    if( LMIC.bcninfoTries > 0 ) {
        LMIC.frame[end] = MCMD_BCNI_REQ;
        end += 1;
    }
    if( LMIC.adrChanged ) {
        if( LMIC.adrAckReq < 0 )
            LMIC.adrAckReq = 0;
        LMIC.adrChanged = 0;
    }
    if( LMIC.pingSetAns != 0 ) {
        LMIC.frame[end+0] = MCMD_PING_ANS;
        LMIC.frame[end+1] = LMIC.pingSetAns & ~MCMD_PING_ANS_RFU;
        end += 2;
        LMIC.pingSetAns = 0;
    }
    if( LMIC.snchAns ) {
        LMIC.frame[end+0] = MCMD_SNCH_ANS;
        LMIC.frame[end+1] = LMIC.snchAns & ~MCMD_SNCH_ANS_RFU;
        end += 2;
        LMIC.snchAns = 0;
    }
    if(!(end <= OFF_DAT_OPTS+16)) hal_failed();

    u1_t flen = end + (txdata ? 5+dlen : 4);
    if( flen > MAX_LEN_FRAME ) {
        
        txdata = 0;
        flen = end+4;
    }
    LMIC.frame[OFF_DAT_HDR] = HDR_FTYPE_DAUP | HDR_MAJOR_V1;
    LMIC.frame[OFF_DAT_FCT] = (LMIC.dnConf | LMIC.adrEnabled
                              | (LMIC.adrAckReq >= 0 ? FCT_ADRARQ : 0)
                              | (end-OFF_DAT_OPTS));
    os_wlsbf4(LMIC.frame+OFF_DAT_ADDR,  LMIC.devaddr);

    if( LMIC.txCnt == 0 ) {
        LMIC.seqnoUp += 1;
        ;
    } else {
        ;
    }
    os_wlsbf2(LMIC.frame+OFF_DAT_SEQNO, LMIC.seqnoUp-1);

    
    LMIC.dnConf = 0;

    if( txdata ) {
        if( LMIC.pendTxConf ) {
            
            LMIC.frame[OFF_DAT_HDR] = HDR_FTYPE_DCUP | HDR_MAJOR_V1;
            if( LMIC.txCnt == 0 ) LMIC.txCnt = 1;
        }
        LMIC.frame[end] = LMIC.pendTxPort;
        memcpy(LMIC . frame +end+1,LMIC . pendTxData,dlen);
        aes_cipher(LMIC.pendTxPort==0 ? LMIC.nwkKey : LMIC.artKey,
                   LMIC.devaddr, LMIC.seqnoUp-1,
                    0, LMIC.frame+end+1, dlen);
    }
    aes_appendMic(LMIC.nwkKey, LMIC.devaddr, LMIC.seqnoUp-1,  0, LMIC.frame, flen-4);

    ;
    LMIC.dataLen = flen;
}



static void onBcnRx (xref2osjob_t job) {
    
    os_radio(RADIO_RST);
    os_clearCallback(&LMIC.osjob);
    if( LMIC.dataLen == 0 ) {
        
        LMIC.opmode &= ~(OP_SCAN | OP_TRACK);
        reportEvent(EV_SCAN_TIMEOUT);
        return;
    }
    if( decodeBeacon() <= 0 ) {
        
        LMIC.dataLen = 0;
        os_radio(RADIO_RXON);
        os_setTimedCallback(&LMIC.osjob, LMIC.bcninfo.txtime, (&(onBcnRx)));
        return;
    }
    
    
    
    calcBcnRxWindowFromMillis(13,1);
    LMIC.opmode &= ~OP_SCAN;          
    LMIC.opmode |=  OP_TRACK;         
    reportEvent(EV_BEACON_FOUND);    
}







static void startScan (void) {
    if(!(LMIC . devaddr!=0 && (LMIC . opmode & OP_JOINING)==0)) hal_failed();
    if( (LMIC.opmode & OP_SHUTDOWN) != 0 )
        return;
    
    LMIC.txCnt = LMIC.dnConf = LMIC.bcninfo.flags = 0;
    LMIC.opmode = (LMIC.opmode | OP_SCAN) & ~(OP_TXRXPEND);
    setBcnRxParams();
    LMIC.rxtime = LMIC.bcninfo.txtime = os_getTime() + ((ostime_t)( (s8_t)(BCN_INTV_sec+1) * 32768));
    os_setTimedCallback(&LMIC.osjob, LMIC.rxtime, (&(onBcnRx)));
    os_radio(RADIO_RXON);
}


bit_t LMIC_enableTracking (u1_t tryBcnInfo) {
    if( (LMIC.opmode & (OP_SCAN|OP_TRACK|OP_SHUTDOWN)) != 0 )
        return 0;  
    
    
    if( (LMIC.bcninfoTries = tryBcnInfo) == 0 )
        startScan();
    return 1;  
}


void LMIC_disableTracking (void) {
    LMIC.opmode &= ~(OP_SCAN|OP_TRACK);
    LMIC.bcninfoTries = 0;
    engineUpdate();
}








static void buildJoinRequest (u1_t ftype) {
    
    
    xref2u1_t d = LMIC.frame;
    d[OFF_JR_HDR] = ftype;
    os_getArtEui(d + OFF_JR_ARTEUI);
    os_getDevEui(d + OFF_JR_DEVEUI);
    os_wlsbf2(d + OFF_JR_DEVNONCE, LMIC.devNonce);
    aes_appendMic0(d, OFF_JR_MIC);

    ;
    LMIC.dataLen = LEN_JR;
    LMIC.devNonce++;
    ;
}

static void startJoining (xref2osjob_t osjob) {
    reportEvent(EV_JOINING);
}


bit_t LMIC_startJoining (void) {
    if( LMIC.devaddr == 0 ) {
        
        if(!((LMIC . opmode & (OP_POLL|OP_TXRXPEND)) == 0)) hal_failed();
        
        LMIC.globalDutyRate = 0;
        
        LMIC.opmode &= ~(OP_SCAN|OP_REJOIN|OP_LINKDEAD|OP_NEXTCHNL);
        
        LMIC.rejoinCnt = LMIC.txCnt = LMIC.pendTxConf = 0;
        initJoinLoop();
        LMIC.opmode |= OP_JOINING;
        
        os_setCallback(&LMIC.osjob, (&(startJoining)));
        return 1;
    }
    return 0; 
}








static void processPingRx (xref2osjob_t osjob) {
    if( LMIC.dataLen != 0 ) {
        LMIC.txrxFlags = TXRX_PING;
        if( decodeFrame() ) {
            reportEvent(EV_RXCOMPLETE);
            return;
        }
    }
    
    engineUpdate();
}


static bit_t processDnData (void) {
    if(!((LMIC . opmode & OP_TXRXPEND)!=0)) hal_failed();

    if( LMIC.dataLen == 0 ) {
      norx:
        if( LMIC.txCnt != 0 ) {
            if( LMIC.txCnt < TXCONF_ATTEMPTS ) {
                LMIC.txCnt += 1;
                setDrTxpow(DRCHG_NOACK, lowerDR(LMIC.datarate, DRADJUST[LMIC.txCnt]), KEEP_TXPOW);
                
                txDelay(LMIC.rxtime, RETRY_PERIOD_secs);
                LMIC.opmode &= ~OP_TXRXPEND;
                engineUpdate();
                return 1;
            }
            LMIC.txrxFlags = TXRX_NACK | TXRX_NOPORT;
        } else {
            
            LMIC.txrxFlags = TXRX_NOPORT;
        }
        if( LMIC.adrAckReq != LINK_CHECK_OFF )
            LMIC.adrAckReq += 1;
        LMIC.dataBeg = LMIC.dataLen = 0;
      txcomplete:
        LMIC.opmode &= ~(OP_TXDATA|OP_TXRXPEND);
        if( (LMIC.txrxFlags & (TXRX_DNW1|TXRX_DNW2|TXRX_PING)) != 0  &&  (LMIC.opmode & OP_LINKDEAD) != 0 ) {
            LMIC.opmode &= ~OP_LINKDEAD;
            reportEvent(EV_LINK_ALIVE);
        }
        reportEvent(EV_TXCOMPLETE);
        
        
        if( LMIC.adrAckReq > LINK_CHECK_DEAD ) {
            
            
            ;
            setDrTxpow(DRCHG_NOADRACK, decDR((dr_t)LMIC.datarate), KEEP_TXPOW);
            LMIC.adrAckReq = LINK_CHECK_CONT;
            LMIC.opmode |= OP_REJOIN|OP_LINKDEAD;
            reportEvent(EV_LINK_DEAD);
        }
        
        if( LMIC.bcninfoTries > 0 ) {
            if( (LMIC.opmode & OP_TRACK) != 0 ) {
                reportEvent(EV_BEACON_FOUND);
                LMIC.bcninfoTries = 0;
            }
            else if( --LMIC.bcninfoTries == 0 ) {
                startScan();   
            }
        }
        return 1;
    }
    if( !decodeFrame() ) {
        if( (LMIC.txrxFlags & TXRX_DNW1) != 0 )
            return 0;
        goto norx;
    }
    goto txcomplete;
}


static void processBeacon (xref2osjob_t osjob) {
    ostime_t lasttx = LMIC.bcninfo.txtime;   
    u1_t flags = LMIC.bcninfo.flags;
    ev_t ev;

    if( LMIC.dataLen != 0 && decodeBeacon() >= 1 ) {
        ev = EV_BEACON_TRACKED;
        if( (flags & (BCN_PARTIAL|BCN_FULL)) == 0 ) {
            
            
            calcBcnRxWindowFromMillis(13,0);
            goto rev;
        }
        
        s2_t drift = ((ostime_t)( (s8_t)(BCN_INTV_sec) * 32768)) - (LMIC.bcninfo.txtime - lasttx);
        if( LMIC.missedBcns > 0 ) {
            drift = LMIC.drift + (drift - LMIC.drift) / (LMIC.missedBcns+1);
        }
        if( (LMIC.bcninfo.flags & BCN_NODRIFT) == 0 ) {
            s2_t diff = LMIC.drift - drift;
            if( diff < 0 ) diff = -diff;
            LMIC.lastDriftDiff = diff;
            if( LMIC.maxDriftDiff < diff )
                LMIC.maxDriftDiff = diff;
            LMIC.bcninfo.flags &= ~BCN_NODDIFF;
        }
        LMIC.drift = drift;
        LMIC.missedBcns = LMIC.rejoinCnt = 0;
        LMIC.bcninfo.flags &= ~BCN_NODRIFT;
        ;
        if(!((LMIC . bcninfo . flags & (BCN_PARTIAL|BCN_FULL)) != 0)) hal_failed();
    } else {
        ev = EV_BEACON_MISSED;
        LMIC.bcninfo.txtime += ((ostime_t)( (s8_t)(BCN_INTV_sec) * 32768)) - LMIC.drift;
        LMIC.bcninfo.time   += BCN_INTV_sec;
        LMIC.missedBcns++;
        
        txDelay(LMIC.bcninfo.txtime + ((ostime_t)( ((s8_t)(BCN_RESERVE_ms) * 32768) / 1000)), 4);
        if( LMIC.missedBcns > MAX_MISSED_BCNS )
            LMIC.opmode |= OP_REJOIN;  
        if( LMIC.bcnRxsyms > MAX_RXSYMS ) {
            LMIC.opmode &= ~(OP_TRACK|OP_PINGABLE|OP_PINGINI|OP_REJOIN);
            reportEvent(EV_LOST_TSYNC);
            return;
        }
    }
    LMIC.bcnRxtime = LMIC.bcninfo.txtime + ((ostime_t)( (s8_t)(BCN_INTV_sec) * 32768)) - calcRxWindow(0,DR_BCN);
    LMIC.bcnRxsyms = LMIC.rxsyms;    
  rev:
    if( (LMIC.opmode & OP_PINGINI) != 0 )
        rxschedInit(&LMIC.ping);  
    reportEvent(ev);
}


static void startRxBcn (xref2osjob_t osjob) {
    LMIC.osjob.func = (&(processBeacon));
    os_radio(RADIO_RX);
}


static void startRxPing (xref2osjob_t osjob) {
    LMIC.osjob.func = (&(processPingRx));
    os_radio(RADIO_RX);
}



static void engineUpdate (void) {
    
    if( (LMIC.opmode & (OP_SCAN|OP_TXRXPEND|OP_SHUTDOWN)) != 0 ) 
        return;

    if( LMIC.devaddr == 0 && (LMIC.opmode & OP_JOINING) == 0 ) {
        LMIC_startJoining();
        return;
    }

    ostime_t now    = os_getTime();
    ostime_t rxtime = 0;
    ostime_t txbeg  = 0;

    if( (LMIC.opmode & OP_TRACK) != 0 ) {
        
        if(!(now + (((ostime_t)( ((s8_t)(2000) * 32768) / 1000000))) - LMIC . bcnRxtime <= 0)) hal_failed();
        rxtime = LMIC.bcnRxtime - (((ostime_t)( ((s8_t)(2000) * 32768) / 1000000)));
    }

    if( (LMIC.opmode & (OP_JOINING|OP_REJOIN|OP_TXDATA|OP_POLL)) != 0 ) {
        
        
        bit_t jacc = ((LMIC.opmode & (OP_JOINING|OP_REJOIN)) != 0 ? 1 : 0);
        
        if( (LMIC.opmode & OP_NEXTCHNL) != 0 ) {
            txbeg = LMIC.txend = nextTx(now);
            LMIC.opmode &= ~OP_NEXTCHNL;
        } else {
            txbeg = LMIC.txend;
        }
        
        if( (LMIC.globalDutyRate != 0 || (LMIC.opmode & OP_RNDTX) != 0)  &&  (txbeg - LMIC.globalDutyAvail) < 0 )
            txbeg = LMIC.globalDutyAvail;
        
        
        if( (LMIC.opmode & OP_TRACK) != 0 &&
            txbeg + (jacc ? ((ostime_t)( ((s8_t)(JOIN_GUARD_ms) * 32768) / 1000)) : ((ostime_t)( ((s8_t)(TXRX_GUARD_ms) * 32768) / 1000))) - rxtime > 0 ) {
            
            
            txDelay(rxtime + ((ostime_t)( ((s8_t)(BCN_RESERVE_ms) * 32768) / 1000)), 16);
            txbeg = 0;
            goto checkrx;
        }
        
        if( txbeg - (now + (((ostime_t)( ((s8_t)(2000) * 32768) / 1000000)))) < 0 ) {
            
			txbeg = now;
            dr_t txdr = (dr_t)LMIC.datarate;
            if( jacc ) {
                u1_t ftype;
                if( (LMIC.opmode & OP_REJOIN) != 0 ) {
                    txdr = lowerDR(txdr, LMIC.rejoinCnt);
                    ftype = HDR_FTYPE_REJOIN;
                } else {
                    ftype = HDR_FTYPE_JREQ;
                }
                buildJoinRequest(ftype);
                LMIC.osjob.func = (&(jreqDone));
            } else {
                if( LMIC.seqnoDn >= 0xFFFFFF80 ) {
                    
                    ;
                    
                    
                  reset:
                    os_setCallback(&LMIC.osjob, (&(runReset)));
                    return;
                }
                if( (LMIC.txCnt==0 && LMIC.seqnoUp == 0xFFFFFFFF) ) {
                    
                    ;
                    
                    
                    goto reset;
                }
                buildDataFrame();
                LMIC.osjob.func = (&(updataDone));		
                
            }
            LMIC.rps    = setCr(updr2rps(txdr), (cr_t)LMIC.errcr);
            LMIC.dndr   = txdr;  
            LMIC.opmode = (LMIC.opmode & ~(OP_POLL|OP_RNDTX)) | OP_TXRXPEND | OP_NEXTCHNL;
            updateTx(txbeg);
            os_radio(RADIO_TX);
            return;
        }
        
        if( (LMIC.opmode & OP_TRACK) == 0 )
            goto txdelay; 
        
        if( txbeg == 0 ) 
            txbeg += 1;  
    } else {
        
        if( (LMIC.opmode & OP_TRACK) == 0 )
            return;
    }

    
  checkrx:
    if( (LMIC.opmode & OP_PINGINI) != 0 ) {
        
        if( rxschedNext(&LMIC.ping, now+(((ostime_t)( ((s8_t)(2000) * 32768) / 1000000)))) ) {
            if( txbeg != 0  &&  (txbeg - LMIC.ping.rxtime) < 0 )
                goto txdelay;
            LMIC.rxsyms  = LMIC.ping.rxsyms;
            LMIC.rxtime  = LMIC.ping.rxtime;
            LMIC.freq    = LMIC.ping.freq;
            LMIC.rps     = dndr2rps(LMIC.ping.dr);
            LMIC.dataLen = 0;
            if(!(LMIC . rxtime - now+(((ostime_t)( ((s8_t)(2000) * 32768) / 1000000))) >= 0)) hal_failed();
            os_setTimedCallback(&LMIC.osjob, LMIC.rxtime - (((ostime_t)( ((s8_t)(2000) * 32768) / 1000000))), (&(startRxPing)));
            return;
        }
        
    }

    if( txbeg != 0  &&  (txbeg - rxtime) < 0 )
        goto txdelay;

    setBcnRxParams();
    LMIC.rxsyms = LMIC.bcnRxsyms;
    LMIC.rxtime = LMIC.bcnRxtime;
    if( now - rxtime >= 0 ) {
        LMIC.osjob.func = (&(processBeacon));
        os_radio(RADIO_RX);
        return;
    }
    os_setTimedCallback(&LMIC.osjob, rxtime, (&(startRxBcn)));
    return;

  txdelay:
    ;
    os_setTimedCallback(&LMIC.osjob, txbeg-(((ostime_t)( ((s8_t)(2000) * 32768) / 1000000))), (&(runEngineUpdate)));
}


void LMIC_setAdrMode (bit_t enabled) {
    LMIC.adrEnabled = enabled ? FCT_ADREN : 0;
}



void LMIC_setDrTxpow (dr_t dr, s1_t txpow) {
    setDrTxpow(DRCHG_SET, dr, txpow);
}


void LMIC_shutdown (void) {
    os_clearCallback(&LMIC.osjob);
    os_radio(RADIO_RST);
    LMIC.opmode |= OP_SHUTDOWN;
}


void LMIC_reset (void) {
    ;
    os_radio(RADIO_RST);
    os_clearCallback(&LMIC.osjob);

    memset((xref2u1_t)&LMIC,0,sizeof(LMIC));
    LMIC.devaddr      =  0;
    LMIC.devNonce     =  ((u2_t)((radio_rand1()<<8)|radio_rand1()));
    LMIC.opmode       =  OP_NONE;
    LMIC.errcr        =  CR_4_5;
    LMIC.adrEnabled   =  FCT_ADREN;
    LMIC.dn2Dr        =  DR_DNW2;   
    LMIC.dn2Freq      =  FREQ_DNW2; 
    LMIC.ping.freq    =  FREQ_PING; 
    LMIC.ping.dr      =  DR_PING;   
    LMIC.ping.intvExp =  0xFF;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
}


void LMIC_init (void) {
    LMIC.opmode = OP_SHUTDOWN;
}


void LMIC_clrTxData (void) {
    LMIC.opmode &= ~(OP_TXDATA|OP_TXRXPEND|OP_POLL);
    LMIC.pendTxLen = 0;
    if( (LMIC.opmode & (OP_JOINING|OP_SCAN)) != 0 ) 
        return;
    os_clearCallback(&LMIC.osjob);
    os_radio(RADIO_RST);
    engineUpdate();
}


void LMIC_setTxData (void) {
    LMIC.opmode |= OP_TXDATA;
    if( (LMIC.opmode & OP_JOINING) == 0 )
        LMIC.txCnt = 0;             
    engineUpdate();
}



int LMIC_setTxData2 (u1_t port, xref2u1_t data, u1_t dlen, u1_t confirmed) {
    if( dlen > sizeof(LMIC . pendTxData) )
        return -2;
    if( data != (xref2u1_t)0 )
        memcpy(LMIC . pendTxData,data,dlen);
    LMIC.pendTxConf = confirmed;
    LMIC.pendTxPort = port;
    LMIC.pendTxLen  = dlen;
    LMIC_setTxData();
    return 0;
}



void LMIC_sendAlive (void) {
    LMIC.opmode |= OP_POLL;
    engineUpdate();
}



void LMIC_tryRejoin (void) {
    LMIC.opmode |= OP_REJOIN;
    engineUpdate();
}















void LMIC_setSession (u4_t netid, devaddr_t devaddr, xref2u1_t nwkKey, xref2u1_t artKey) {
    LMIC.netid = netid;
    LMIC.devaddr = devaddr;
    if( nwkKey != (xref2u1_t)0 )
        memcpy(LMIC . nwkKey,nwkKey,16);
    if( artKey != (xref2u1_t)0 )
        memcpy(LMIC . artKey,artKey,16);
    
    initDefaultChannels(0);
 
    LMIC.opmode &= ~(OP_JOINING|OP_TRACK|OP_REJOIN|OP_TXRXPEND|OP_PINGINI);
    LMIC.opmode |= OP_NEXTCHNL;
    stateJustJoined();
    ;
    ;
    ;
    ;
    ;
    ;
}









void LMIC_setLinkCheckMode (bit_t enabled) {
    LMIC.adrChanged = 0;
    LMIC.adrAckReq = enabled ? LINK_CHECK_INIT : LINK_CHECK_OFF;
}

void LMIC_jimrx( void ) {
    
    
	setupRx1((&(processRx1DnData)));
}

