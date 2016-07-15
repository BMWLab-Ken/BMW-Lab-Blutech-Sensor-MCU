








 










 














 












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






static struct {
    osjob_t* scheduledjobs;
    osjob_t* runnablejobs;
} OS;

void os_init () {
    memset(&OS, 0x00, sizeof(OS));
    hal_init();
    radio_init();
    LMIC_init();
}

ostime_t os_getTime () {
    return hal_ticks();
}

static u1_t unlinkjob (osjob_t** pnext, osjob_t* job) {
    for( ; *pnext; pnext = &((*pnext)->next)) {
        if(*pnext == job) { 
            *pnext = job->next;
            return 1;
        }
    }
    return 0;
}


void os_clearCallback (osjob_t* job) {
    hal_disableIRQs();
    unlinkjob(&OS.scheduledjobs, job) || unlinkjob(&OS.runnablejobs, job);
    hal_enableIRQs();
}


void os_setCallback (osjob_t* job, osjobcb_t cb) {
    osjob_t** pnext;
    hal_disableIRQs();
    
    os_clearCallback(job);
    
    job->func = cb;
    job->next = 0;
    
    for(pnext=&OS.runnablejobs; *pnext; pnext=&((*pnext)->next));
    *pnext = job;
    hal_enableIRQs();
}


void os_setTimedCallback (osjob_t* job, ostime_t time, osjobcb_t cb) {
    osjob_t** pnext;
    hal_disableIRQs();
    
    os_clearCallback(job);
    
    job->deadline = time;
    job->func = cb;
    job->next = 0;
    
    for(pnext=&OS.scheduledjobs; *pnext; pnext=&((*pnext)->next)) {
        if((*pnext)->deadline - time > 0) { 
            
            job->next = *pnext;
            break;
        }
    }
    *pnext = job;
    hal_enableIRQs();
}


void os_runloop () {
    while(1) {
        osjob_t* j = 0;
        hal_disableIRQs();
        
        if(OS.runnablejobs) {
            j = OS.runnablejobs;
            OS.runnablejobs = j->next;
        } else if(OS.scheduledjobs && hal_checkTimer(OS.scheduledjobs->deadline)) { 
            j = OS.scheduledjobs;
            OS.scheduledjobs = j->next;
        } else { 
            hal_sleep(); 
        }
        hal_enableIRQs();
        if(j) { 
            j->func(j);
        }
    }
}
