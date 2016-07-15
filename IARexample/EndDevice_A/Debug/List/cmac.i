
































 






























 




typedef unsigned char uint_8t;

typedef uint_8t return_type;



 

typedef uint_8t length_type;

typedef struct
{   uint_8t ksch[(14 + 1) * (4 * 4)];
    uint_8t rnd;
} aes_context;







 


return_type aes_set_key( const unsigned char key[],
                         length_type keylen,
                         aes_context ctx[1] );


return_type aes_encrypt( const unsigned char in[(4 * 4)],
                         unsigned char out[(4 * 4)],
                         const aes_context ctx[1] );

return_type aes_cbc_encrypt( const unsigned char *in,
                         unsigned char *out,
                         int n_block,
                         unsigned char iv[(4 * 4)],
                         const aes_context ctx[1] );




















 






































 


  
 

typedef unsigned char  u_int8_t;
typedef unsigned int u_int;
typedef struct _AES_CMAC_CTX {
            aes_context    rijndael;
            u_int8_t        X[16];
            u_int8_t        M_last[16];
            u_int           M_n;
    } AES_CMAC_CTX;
   

    

void     AES_CMAC_Init(AES_CMAC_CTX * ctx);
void     AES_CMAC_SetKey(AES_CMAC_CTX * ctx, const u_int8_t key[16]);
void     AES_CMAC_Update(AES_CMAC_CTX * ctx, const u_int8_t * data, u_int len);
          
void     AES_CMAC_Final(u_int8_t digest[16], AES_CMAC_CTX  * ctx);
            



 
 

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

 

                 

  typedef struct __va_list
  {
    char  *_Ap;
  } __va_list;
  typedef __va_list __Va_list;


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









 

    



void memcpy1( u_int8_t *dst, const u_int8_t *src, u_int size );
void memset1( u_int8_t *dst, u_int8_t value, u_int size );















 

void AES_CMAC_Init(AES_CMAC_CTX *ctx)
{
            memset1(ctx->X, 0, sizeof ctx->X);
            ctx->M_n = 0;
	    memset1(ctx->rijndael.ksch, '\0', 240);
}
    
void AES_CMAC_SetKey(AES_CMAC_CTX *ctx, const u_int8_t key[16])
{
           
	   aes_set_key( key, 16, &ctx->rijndael);
}
    
void AES_CMAC_Update(AES_CMAC_CTX *ctx, const u_int8_t *data, u_int len)
{
            u_int mlen;
	    unsigned char in[16];
    
            if (ctx->M_n > 0) {
                  mlen = (((16 - ctx->M_n)<(len))?(16 - ctx->M_n):(len));
                    memcpy1(ctx->M_last + ctx->M_n, data, mlen);
                    ctx->M_n += mlen;
                    if (ctx->M_n < 16 || len == mlen)
                            return;
                   do { int i; for (i = 0; i < 16; i++) { (ctx->X)[i] = (ctx->X)[i] ^ (ctx->M_last)[i]; } } while (0);
                    
		    aes_encrypt( ctx->X, ctx->X, &ctx->rijndael);
                    data += mlen;
                    len -= mlen;
            }
            while (len > 16) {       
		 
                    do { int i; for (i = 0; i < 16; i++) { (ctx->X)[i] = (ctx->X)[i] ^ (data)[i]; } } while (0);
                    

                    memcpy1(in, &ctx->X[0], 16); 
		    aes_encrypt( in, in, &ctx->rijndael);
                    memcpy1(&ctx->X[0], in, 16);

                    data += 16;
                    len -= 16;
            }
             
            memcpy1(ctx->M_last, data, len);
            ctx->M_n = len;
}
   
void AES_CMAC_Final(u_int8_t digest[16], AES_CMAC_CTX *ctx)
{
            u_int8_t K[16];
	    unsigned char in[16];
             
            memset1(K, '\0', 16);

            

    	    aes_encrypt( K, K, &ctx->rijndael);

            if (K[0] & 0x80) {
                    do { int i; for (i = 0; i < 15; i++) (K)[i] = (K)[i] << 1 | (K)[i + 1] >> 7; (K)[15] = (K)[15] << 1; } while (0);
                   K[15] ^= 0x87;
            } else
                    do { int i; for (i = 0; i < 15; i++) (K)[i] = (K)[i] << 1 | (K)[i + 1] >> 7; (K)[15] = (K)[15] << 1; } while (0);

	   
            if (ctx->M_n == 16) {
                     
                    do { int i; for (i = 0; i < 16; i++) { (ctx->M_last)[i] = (ctx->M_last)[i] ^ (K)[i]; } } while (0);

           } else {
                    
                  if (K[0] & 0x80) {
                          do { int i; for (i = 0; i < 15; i++) (K)[i] = (K)[i] << 1 | (K)[i + 1] >> 7; (K)[15] = (K)[15] << 1; } while (0);
                          K[15] ^= 0x87;
                  } else
                           do { int i; for (i = 0; i < 15; i++) (K)[i] = (K)[i] << 1 | (K)[i + 1] >> 7; (K)[15] = (K)[15] << 1; } while (0);

                    
                   ctx->M_last[ctx->M_n] = 0x80;
                   while (++ctx->M_n < 16)
                         ctx->M_last[ctx->M_n] = 0;
   
                  do { int i; for (i = 0; i < 16; i++) { (ctx->M_last)[i] = (ctx->M_last)[i] ^ (K)[i]; } } while (0);
		  
		   
           }
           do { int i; for (i = 0; i < 16; i++) { (ctx->X)[i] = (ctx->X)[i] ^ (ctx->M_last)[i]; } } while (0);
	  
           
	
	   memcpy1(in, &ctx->X[0], 16); 
   	   aes_encrypt(in, digest, &ctx->rijndael);
           memset1(K, 0, sizeof K);

}

