






























 

 


 
 


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





 
#pragma rtmodel="__dlib_full_locale_support",   "0"




extern int __aeabi_MB_CUR_MAX(void);





                 



                 
  typedef _Wchart wchar_t;

typedef struct
{        
  int quot;
  int rem;
} div_t;

typedef struct
{        
  long quot;
  long rem;
} ldiv_t;

    #pragma language=save
    #pragma language=extended
    typedef struct
    {      
      _Longlong quot;
      _Longlong rem;
    } lldiv_t;
    #pragma language=restore

                 
  
__intrinsic __nounwind int atexit(void (*)(void));
  __intrinsic __noreturn __nounwind void _Exit(int) ;
__intrinsic __noreturn __nounwind void exit(int) ;
__intrinsic __nounwind char * getenv(const char *);
__intrinsic __nounwind int system(const char *);



             __intrinsic __noreturn __nounwind void abort(void) ;
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind int abs(int);
             __intrinsic __nounwind void * calloc(size_t, size_t);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind div_t div(int, int);
             __intrinsic __nounwind void free(void *);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind long labs(long);
_Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind ldiv_t ldiv(long, long);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind long long llabs(long long);
    _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind lldiv_t lldiv(long long, long long);
    #pragma language=restore
             __intrinsic __nounwind void * malloc(size_t);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int mblen(const char *, size_t);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind size_t mbstowcs(wchar_t *, 
                                          const char *, size_t);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind int mbtowc(wchar_t *, const char *, 
                                     size_t);
             __intrinsic __nounwind int rand(void);
             __intrinsic __nounwind void srand(unsigned int);
             __intrinsic __nounwind void * realloc(void *, size_t);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long strtol(const char *, 
                                      char **, int);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long strtoul(const char *, char **, int);
_Pragma("function_effects = no_read(1), no_write(2)") __intrinsic __nounwind size_t wcstombs(char *, 
                                          const wchar_t *, size_t);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind int wctomb(char *, wchar_t);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long long strtoll(const char *, char **, int);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long long strtoull(const char *, 
                                                          char **, int);
    #pragma language=restore




    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long __iar_Stoul(const char *, char **, 
                                                        int);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float         __iar_Stof(const char *, char **, long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double        __iar_Stod(const char *, char **, long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double   __iar_Stold(const char *, char **, 
                                                          long);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long          __iar_Stolx(const char *, char **, int, 
                                                        int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind unsigned long __iar_Stoulx(const char *, char **,
                                                         int, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float         __iar_Stofx(const char *, char **, 
                                                        long, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double        __iar_Stodx(const char *, char **, 
                                                        long, int *);
    _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double   __iar_Stoldx(const char *, char **, 
                                                         long, int *);
      #pragma language=save
      #pragma language=extended
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _Longlong   __iar_Stoll(const char *, char **, 
                                                        int);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _ULonglong   __iar_Stoull(const char *, char **, 
                                                          int);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _Longlong    __iar_Stollx(const char *, char **, 
                                                          int, int *);
      _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind _ULonglong   __iar_Stoullx(const char *, char **, 
                                                           int, int *);
      #pragma language=restore





typedef int _Cmpfun(const void *, const void *);

_Pragma("function_effects = no_write(1,2)") __intrinsic void * bsearch(const void *, 
                                                   const void *, size_t,
                                                   size_t, _Cmpfun *);
             __intrinsic void qsort(void *, size_t, size_t, 
                                               _Cmpfun *);
             __intrinsic void __qsortbbl(void *, size_t, size_t, 
                                                    _Cmpfun *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind double atof(const char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int atoi(const char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind long atol(const char *);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_write(1)") __intrinsic __nounwind long long atoll(const char *);
    #pragma language=restore
  _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind float strtof(const char *, 
                                         char **);
  _Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind long double strtold(const char *, char **);
_Pragma("function_effects = no_write(1), no_read(2)") __intrinsic __nounwind double strtod(const char *, 
                                        char **);
                                        
                                        
               __intrinsic __nounwind size_t __iar_Mbcurmax(void);

  _Pragma("function_effects = no_state, no_errno")     __intrinsic __nounwind int __iar_DLib_library_version(void);
  




  
  typedef void _Atexfun(void);
  

                 
    #pragma inline=no_body
    double atof(const char *_S)
    {       
      return (__iar_Stod(_S, 0, 0));
    }

    #pragma inline=no_body
    int atoi(const char *_S)
    {       
      return ((int)__iar_Stoul(_S, 0, 10));
    }

    #pragma inline=no_body
    long atol(const char *_S)
    {       
      return ((long)__iar_Stoul(_S, 0, 10));
    }

        #pragma language=save
        #pragma language=extended
        #pragma inline=no_body
        long long atoll(const char *_S)
        {       
            return ((long long)__iar_Stoull(_S, 0, 10));
        }
        #pragma language=restore

    #pragma inline=no_body
    double strtod(const char * _S, char ** _Endptr)
    {       
      return (__iar_Stod(_S, _Endptr, 0));
    }

      #pragma inline=no_body
      float strtof(const char * _S, char ** _Endptr)
      {       
        return (__iar_Stof(_S, _Endptr, 0));
      }

      #pragma inline=no_body
      long double strtold(const char * _S, char ** _Endptr)
      {       
        return (__iar_Stold(_S, _Endptr, 0));
      }

    #pragma inline=no_body
    long strtol(const char * _S, char ** _Endptr, 
                int _Base)
    {       
      return (__iar_Stolx(_S, _Endptr, _Base, 0));
    }

    #pragma inline=no_body
    unsigned long strtoul(const char * _S, char ** _Endptr, 
                          int _Base)
    {       
      return (__iar_Stoul(_S, _Endptr, _Base));
    }

        #pragma language=save
        #pragma language=extended
        #pragma inline=no_body
        long long strtoll(const char * _S, char ** _Endptr,
                          int _Base)
        {       
            return (__iar_Stoll(_S, _Endptr, _Base));
        }

        #pragma inline=no_body
        unsigned long long strtoull(const char * _S, 
                                    char ** _Endptr, int _Base)
        {       
            return (__iar_Stoull(_S, _Endptr, _Base));
        }
        #pragma language=restore


  #pragma inline=no_body
  int abs(int i)
  {       
    return (i < 0 ? -i : i);
  }

  #pragma inline=no_body
  long labs(long i)
  {       
    return (i < 0 ? -i : i);
  }

      #pragma language=save
      #pragma language=extended
      #pragma inline=no_body
      long long llabs(long long i)
      {       
        return (i < 0 ? -i : i);
      }
      #pragma language=restore








 

 

 

 

 





























 




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




















 






  typedef unsigned long uint_32t;

 








static const uint_8t sbox[256]  =  { (0x63), (0x7c), (0x77), (0x7b), (0xf2), (0x6b), (0x6f), (0xc5), (0x30), (0x01), (0x67), (0x2b), (0xfe), (0xd7), (0xab), (0x76), (0xca), (0x82), (0xc9), (0x7d), (0xfa), (0x59), (0x47), (0xf0), (0xad), (0xd4), (0xa2), (0xaf), (0x9c), (0xa4), (0x72), (0xc0), (0xb7), (0xfd), (0x93), (0x26), (0x36), (0x3f), (0xf7), (0xcc), (0x34), (0xa5), (0xe5), (0xf1), (0x71), (0xd8), (0x31), (0x15), (0x04), (0xc7), (0x23), (0xc3), (0x18), (0x96), (0x05), (0x9a), (0x07), (0x12), (0x80), (0xe2), (0xeb), (0x27), (0xb2), (0x75), (0x09), (0x83), (0x2c), (0x1a), (0x1b), (0x6e), (0x5a), (0xa0), (0x52), (0x3b), (0xd6), (0xb3), (0x29), (0xe3), (0x2f), (0x84), (0x53), (0xd1), (0x00), (0xed), (0x20), (0xfc), (0xb1), (0x5b), (0x6a), (0xcb), (0xbe), (0x39), (0x4a), (0x4c), (0x58), (0xcf), (0xd0), (0xef), (0xaa), (0xfb), (0x43), (0x4d), (0x33), (0x85), (0x45), (0xf9), (0x02), (0x7f), (0x50), (0x3c), (0x9f), (0xa8), (0x51), (0xa3), (0x40), (0x8f), (0x92), (0x9d), (0x38), (0xf5), (0xbc), (0xb6), (0xda), (0x21), (0x10), (0xff), (0xf3), (0xd2), (0xcd), (0x0c), (0x13), (0xec), (0x5f), (0x97), (0x44), (0x17), (0xc4), (0xa7), (0x7e), (0x3d), (0x64), (0x5d), (0x19), (0x73), (0x60), (0x81), (0x4f), (0xdc), (0x22), (0x2a), (0x90), (0x88), (0x46), (0xee), (0xb8), (0x14), (0xde), (0x5e), (0x0b), (0xdb), (0xe0), (0x32), (0x3a), (0x0a), (0x49), (0x06), (0x24), (0x5c), (0xc2), (0xd3), (0xac), (0x62), (0x91), (0x95), (0xe4), (0x79), (0xe7), (0xc8), (0x37), (0x6d), (0x8d), (0xd5), (0x4e), (0xa9), (0x6c), (0x56), (0xf4), (0xea), (0x65), (0x7a), (0xae), (0x08), (0xba), (0x78), (0x25), (0x2e), (0x1c), (0xa6), (0xb4), (0xc6), (0xe8), (0xdd), (0x74), (0x1f), (0x4b), (0xbd), (0x8b), (0x8a), (0x70), (0x3e), (0xb5), (0x66), (0x48), (0x03), (0xf6), (0x0e), (0x61), (0x35), (0x57), (0xb9), (0x86), (0xc1), (0x1d), (0x9e), (0xe1), (0xf8), (0x98), (0x11), (0x69), (0xd9), (0x8e), (0x94), (0x9b), (0x1e), (0x87), (0xe9), (0xce), (0x55), (0x28), (0xdf), (0x8c), (0xa1), (0x89), (0x0d), (0xbf), (0xe6), (0x42), (0x68), (0x41), (0x99), (0x2d), (0x0f), (0xb0), (0x54), (0xbb), (0x16) };


static const uint_8t gfm2_sbox[256] = { ((0x63 << 1) ^ (((0x63 >> 7) & 1) * 0x011b)), ((0x7c << 1) ^ (((0x7c >> 7) & 1) * 0x011b)), ((0x77 << 1) ^ (((0x77 >> 7) & 1) * 0x011b)), ((0x7b << 1) ^ (((0x7b >> 7) & 1) * 0x011b)), ((0xf2 << 1) ^ (((0xf2 >> 7) & 1) * 0x011b)), ((0x6b << 1) ^ (((0x6b >> 7) & 1) * 0x011b)), ((0x6f << 1) ^ (((0x6f >> 7) & 1) * 0x011b)), ((0xc5 << 1) ^ (((0xc5 >> 7) & 1) * 0x011b)), ((0x30 << 1) ^ (((0x30 >> 7) & 1) * 0x011b)), ((0x01 << 1) ^ (((0x01 >> 7) & 1) * 0x011b)), ((0x67 << 1) ^ (((0x67 >> 7) & 1) * 0x011b)), ((0x2b << 1) ^ (((0x2b >> 7) & 1) * 0x011b)), ((0xfe << 1) ^ (((0xfe >> 7) & 1) * 0x011b)), ((0xd7 << 1) ^ (((0xd7 >> 7) & 1) * 0x011b)), ((0xab << 1) ^ (((0xab >> 7) & 1) * 0x011b)), ((0x76 << 1) ^ (((0x76 >> 7) & 1) * 0x011b)), ((0xca << 1) ^ (((0xca >> 7) & 1) * 0x011b)), ((0x82 << 1) ^ (((0x82 >> 7) & 1) * 0x011b)), ((0xc9 << 1) ^ (((0xc9 >> 7) & 1) * 0x011b)), ((0x7d << 1) ^ (((0x7d >> 7) & 1) * 0x011b)), ((0xfa << 1) ^ (((0xfa >> 7) & 1) * 0x011b)), ((0x59 << 1) ^ (((0x59 >> 7) & 1) * 0x011b)), ((0x47 << 1) ^ (((0x47 >> 7) & 1) * 0x011b)), ((0xf0 << 1) ^ (((0xf0 >> 7) & 1) * 0x011b)), ((0xad << 1) ^ (((0xad >> 7) & 1) * 0x011b)), ((0xd4 << 1) ^ (((0xd4 >> 7) & 1) * 0x011b)), ((0xa2 << 1) ^ (((0xa2 >> 7) & 1) * 0x011b)), ((0xaf << 1) ^ (((0xaf >> 7) & 1) * 0x011b)), ((0x9c << 1) ^ (((0x9c >> 7) & 1) * 0x011b)), ((0xa4 << 1) ^ (((0xa4 >> 7) & 1) * 0x011b)), ((0x72 << 1) ^ (((0x72 >> 7) & 1) * 0x011b)), ((0xc0 << 1) ^ (((0xc0 >> 7) & 1) * 0x011b)), ((0xb7 << 1) ^ (((0xb7 >> 7) & 1) * 0x011b)), ((0xfd << 1) ^ (((0xfd >> 7) & 1) * 0x011b)), ((0x93 << 1) ^ (((0x93 >> 7) & 1) * 0x011b)), ((0x26 << 1) ^ (((0x26 >> 7) & 1) * 0x011b)), ((0x36 << 1) ^ (((0x36 >> 7) & 1) * 0x011b)), ((0x3f << 1) ^ (((0x3f >> 7) & 1) * 0x011b)), ((0xf7 << 1) ^ (((0xf7 >> 7) & 1) * 0x011b)), ((0xcc << 1) ^ (((0xcc >> 7) & 1) * 0x011b)), ((0x34 << 1) ^ (((0x34 >> 7) & 1) * 0x011b)), ((0xa5 << 1) ^ (((0xa5 >> 7) & 1) * 0x011b)), ((0xe5 << 1) ^ (((0xe5 >> 7) & 1) * 0x011b)), ((0xf1 << 1) ^ (((0xf1 >> 7) & 1) * 0x011b)), ((0x71 << 1) ^ (((0x71 >> 7) & 1) * 0x011b)), ((0xd8 << 1) ^ (((0xd8 >> 7) & 1) * 0x011b)), ((0x31 << 1) ^ (((0x31 >> 7) & 1) * 0x011b)), ((0x15 << 1) ^ (((0x15 >> 7) & 1) * 0x011b)), ((0x04 << 1) ^ (((0x04 >> 7) & 1) * 0x011b)), ((0xc7 << 1) ^ (((0xc7 >> 7) & 1) * 0x011b)), ((0x23 << 1) ^ (((0x23 >> 7) & 1) * 0x011b)), ((0xc3 << 1) ^ (((0xc3 >> 7) & 1) * 0x011b)), ((0x18 << 1) ^ (((0x18 >> 7) & 1) * 0x011b)), ((0x96 << 1) ^ (((0x96 >> 7) & 1) * 0x011b)), ((0x05 << 1) ^ (((0x05 >> 7) & 1) * 0x011b)), ((0x9a << 1) ^ (((0x9a >> 7) & 1) * 0x011b)), ((0x07 << 1) ^ (((0x07 >> 7) & 1) * 0x011b)), ((0x12 << 1) ^ (((0x12 >> 7) & 1) * 0x011b)), ((0x80 << 1) ^ (((0x80 >> 7) & 1) * 0x011b)), ((0xe2 << 1) ^ (((0xe2 >> 7) & 1) * 0x011b)), ((0xeb << 1) ^ (((0xeb >> 7) & 1) * 0x011b)), ((0x27 << 1) ^ (((0x27 >> 7) & 1) * 0x011b)), ((0xb2 << 1) ^ (((0xb2 >> 7) & 1) * 0x011b)), ((0x75 << 1) ^ (((0x75 >> 7) & 1) * 0x011b)), ((0x09 << 1) ^ (((0x09 >> 7) & 1) * 0x011b)), ((0x83 << 1) ^ (((0x83 >> 7) & 1) * 0x011b)), ((0x2c << 1) ^ (((0x2c >> 7) & 1) * 0x011b)), ((0x1a << 1) ^ (((0x1a >> 7) & 1) * 0x011b)), ((0x1b << 1) ^ (((0x1b >> 7) & 1) * 0x011b)), ((0x6e << 1) ^ (((0x6e >> 7) & 1) * 0x011b)), ((0x5a << 1) ^ (((0x5a >> 7) & 1) * 0x011b)), ((0xa0 << 1) ^ (((0xa0 >> 7) & 1) * 0x011b)), ((0x52 << 1) ^ (((0x52 >> 7) & 1) * 0x011b)), ((0x3b << 1) ^ (((0x3b >> 7) & 1) * 0x011b)), ((0xd6 << 1) ^ (((0xd6 >> 7) & 1) * 0x011b)), ((0xb3 << 1) ^ (((0xb3 >> 7) & 1) * 0x011b)), ((0x29 << 1) ^ (((0x29 >> 7) & 1) * 0x011b)), ((0xe3 << 1) ^ (((0xe3 >> 7) & 1) * 0x011b)), ((0x2f << 1) ^ (((0x2f >> 7) & 1) * 0x011b)), ((0x84 << 1) ^ (((0x84 >> 7) & 1) * 0x011b)), ((0x53 << 1) ^ (((0x53 >> 7) & 1) * 0x011b)), ((0xd1 << 1) ^ (((0xd1 >> 7) & 1) * 0x011b)), ((0x00 << 1) ^ (((0x00 >> 7) & 1) * 0x011b)), ((0xed << 1) ^ (((0xed >> 7) & 1) * 0x011b)), ((0x20 << 1) ^ (((0x20 >> 7) & 1) * 0x011b)), ((0xfc << 1) ^ (((0xfc >> 7) & 1) * 0x011b)), ((0xb1 << 1) ^ (((0xb1 >> 7) & 1) * 0x011b)), ((0x5b << 1) ^ (((0x5b >> 7) & 1) * 0x011b)), ((0x6a << 1) ^ (((0x6a >> 7) & 1) * 0x011b)), ((0xcb << 1) ^ (((0xcb >> 7) & 1) * 0x011b)), ((0xbe << 1) ^ (((0xbe >> 7) & 1) * 0x011b)), ((0x39 << 1) ^ (((0x39 >> 7) & 1) * 0x011b)), ((0x4a << 1) ^ (((0x4a >> 7) & 1) * 0x011b)), ((0x4c << 1) ^ (((0x4c >> 7) & 1) * 0x011b)), ((0x58 << 1) ^ (((0x58 >> 7) & 1) * 0x011b)), ((0xcf << 1) ^ (((0xcf >> 7) & 1) * 0x011b)), ((0xd0 << 1) ^ (((0xd0 >> 7) & 1) * 0x011b)), ((0xef << 1) ^ (((0xef >> 7) & 1) * 0x011b)), ((0xaa << 1) ^ (((0xaa >> 7) & 1) * 0x011b)), ((0xfb << 1) ^ (((0xfb >> 7) & 1) * 0x011b)), ((0x43 << 1) ^ (((0x43 >> 7) & 1) * 0x011b)), ((0x4d << 1) ^ (((0x4d >> 7) & 1) * 0x011b)), ((0x33 << 1) ^ (((0x33 >> 7) & 1) * 0x011b)), ((0x85 << 1) ^ (((0x85 >> 7) & 1) * 0x011b)), ((0x45 << 1) ^ (((0x45 >> 7) & 1) * 0x011b)), ((0xf9 << 1) ^ (((0xf9 >> 7) & 1) * 0x011b)), ((0x02 << 1) ^ (((0x02 >> 7) & 1) * 0x011b)), ((0x7f << 1) ^ (((0x7f >> 7) & 1) * 0x011b)), ((0x50 << 1) ^ (((0x50 >> 7) & 1) * 0x011b)), ((0x3c << 1) ^ (((0x3c >> 7) & 1) * 0x011b)), ((0x9f << 1) ^ (((0x9f >> 7) & 1) * 0x011b)), ((0xa8 << 1) ^ (((0xa8 >> 7) & 1) * 0x011b)), ((0x51 << 1) ^ (((0x51 >> 7) & 1) * 0x011b)), ((0xa3 << 1) ^ (((0xa3 >> 7) & 1) * 0x011b)), ((0x40 << 1) ^ (((0x40 >> 7) & 1) * 0x011b)), ((0x8f << 1) ^ (((0x8f >> 7) & 1) * 0x011b)), ((0x92 << 1) ^ (((0x92 >> 7) & 1) * 0x011b)), ((0x9d << 1) ^ (((0x9d >> 7) & 1) * 0x011b)), ((0x38 << 1) ^ (((0x38 >> 7) & 1) * 0x011b)), ((0xf5 << 1) ^ (((0xf5 >> 7) & 1) * 0x011b)), ((0xbc << 1) ^ (((0xbc >> 7) & 1) * 0x011b)), ((0xb6 << 1) ^ (((0xb6 >> 7) & 1) * 0x011b)), ((0xda << 1) ^ (((0xda >> 7) & 1) * 0x011b)), ((0x21 << 1) ^ (((0x21 >> 7) & 1) * 0x011b)), ((0x10 << 1) ^ (((0x10 >> 7) & 1) * 0x011b)), ((0xff << 1) ^ (((0xff >> 7) & 1) * 0x011b)), ((0xf3 << 1) ^ (((0xf3 >> 7) & 1) * 0x011b)), ((0xd2 << 1) ^ (((0xd2 >> 7) & 1) * 0x011b)), ((0xcd << 1) ^ (((0xcd >> 7) & 1) * 0x011b)), ((0x0c << 1) ^ (((0x0c >> 7) & 1) * 0x011b)), ((0x13 << 1) ^ (((0x13 >> 7) & 1) * 0x011b)), ((0xec << 1) ^ (((0xec >> 7) & 1) * 0x011b)), ((0x5f << 1) ^ (((0x5f >> 7) & 1) * 0x011b)), ((0x97 << 1) ^ (((0x97 >> 7) & 1) * 0x011b)), ((0x44 << 1) ^ (((0x44 >> 7) & 1) * 0x011b)), ((0x17 << 1) ^ (((0x17 >> 7) & 1) * 0x011b)), ((0xc4 << 1) ^ (((0xc4 >> 7) & 1) * 0x011b)), ((0xa7 << 1) ^ (((0xa7 >> 7) & 1) * 0x011b)), ((0x7e << 1) ^ (((0x7e >> 7) & 1) * 0x011b)), ((0x3d << 1) ^ (((0x3d >> 7) & 1) * 0x011b)), ((0x64 << 1) ^ (((0x64 >> 7) & 1) * 0x011b)), ((0x5d << 1) ^ (((0x5d >> 7) & 1) * 0x011b)), ((0x19 << 1) ^ (((0x19 >> 7) & 1) * 0x011b)), ((0x73 << 1) ^ (((0x73 >> 7) & 1) * 0x011b)), ((0x60 << 1) ^ (((0x60 >> 7) & 1) * 0x011b)), ((0x81 << 1) ^ (((0x81 >> 7) & 1) * 0x011b)), ((0x4f << 1) ^ (((0x4f >> 7) & 1) * 0x011b)), ((0xdc << 1) ^ (((0xdc >> 7) & 1) * 0x011b)), ((0x22 << 1) ^ (((0x22 >> 7) & 1) * 0x011b)), ((0x2a << 1) ^ (((0x2a >> 7) & 1) * 0x011b)), ((0x90 << 1) ^ (((0x90 >> 7) & 1) * 0x011b)), ((0x88 << 1) ^ (((0x88 >> 7) & 1) * 0x011b)), ((0x46 << 1) ^ (((0x46 >> 7) & 1) * 0x011b)), ((0xee << 1) ^ (((0xee >> 7) & 1) * 0x011b)), ((0xb8 << 1) ^ (((0xb8 >> 7) & 1) * 0x011b)), ((0x14 << 1) ^ (((0x14 >> 7) & 1) * 0x011b)), ((0xde << 1) ^ (((0xde >> 7) & 1) * 0x011b)), ((0x5e << 1) ^ (((0x5e >> 7) & 1) * 0x011b)), ((0x0b << 1) ^ (((0x0b >> 7) & 1) * 0x011b)), ((0xdb << 1) ^ (((0xdb >> 7) & 1) * 0x011b)), ((0xe0 << 1) ^ (((0xe0 >> 7) & 1) * 0x011b)), ((0x32 << 1) ^ (((0x32 >> 7) & 1) * 0x011b)), ((0x3a << 1) ^ (((0x3a >> 7) & 1) * 0x011b)), ((0x0a << 1) ^ (((0x0a >> 7) & 1) * 0x011b)), ((0x49 << 1) ^ (((0x49 >> 7) & 1) * 0x011b)), ((0x06 << 1) ^ (((0x06 >> 7) & 1) * 0x011b)), ((0x24 << 1) ^ (((0x24 >> 7) & 1) * 0x011b)), ((0x5c << 1) ^ (((0x5c >> 7) & 1) * 0x011b)), ((0xc2 << 1) ^ (((0xc2 >> 7) & 1) * 0x011b)), ((0xd3 << 1) ^ (((0xd3 >> 7) & 1) * 0x011b)), ((0xac << 1) ^ (((0xac >> 7) & 1) * 0x011b)), ((0x62 << 1) ^ (((0x62 >> 7) & 1) * 0x011b)), ((0x91 << 1) ^ (((0x91 >> 7) & 1) * 0x011b)), ((0x95 << 1) ^ (((0x95 >> 7) & 1) * 0x011b)), ((0xe4 << 1) ^ (((0xe4 >> 7) & 1) * 0x011b)), ((0x79 << 1) ^ (((0x79 >> 7) & 1) * 0x011b)), ((0xe7 << 1) ^ (((0xe7 >> 7) & 1) * 0x011b)), ((0xc8 << 1) ^ (((0xc8 >> 7) & 1) * 0x011b)), ((0x37 << 1) ^ (((0x37 >> 7) & 1) * 0x011b)), ((0x6d << 1) ^ (((0x6d >> 7) & 1) * 0x011b)), ((0x8d << 1) ^ (((0x8d >> 7) & 1) * 0x011b)), ((0xd5 << 1) ^ (((0xd5 >> 7) & 1) * 0x011b)), ((0x4e << 1) ^ (((0x4e >> 7) & 1) * 0x011b)), ((0xa9 << 1) ^ (((0xa9 >> 7) & 1) * 0x011b)), ((0x6c << 1) ^ (((0x6c >> 7) & 1) * 0x011b)), ((0x56 << 1) ^ (((0x56 >> 7) & 1) * 0x011b)), ((0xf4 << 1) ^ (((0xf4 >> 7) & 1) * 0x011b)), ((0xea << 1) ^ (((0xea >> 7) & 1) * 0x011b)), ((0x65 << 1) ^ (((0x65 >> 7) & 1) * 0x011b)), ((0x7a << 1) ^ (((0x7a >> 7) & 1) * 0x011b)), ((0xae << 1) ^ (((0xae >> 7) & 1) * 0x011b)), ((0x08 << 1) ^ (((0x08 >> 7) & 1) * 0x011b)), ((0xba << 1) ^ (((0xba >> 7) & 1) * 0x011b)), ((0x78 << 1) ^ (((0x78 >> 7) & 1) * 0x011b)), ((0x25 << 1) ^ (((0x25 >> 7) & 1) * 0x011b)), ((0x2e << 1) ^ (((0x2e >> 7) & 1) * 0x011b)), ((0x1c << 1) ^ (((0x1c >> 7) & 1) * 0x011b)), ((0xa6 << 1) ^ (((0xa6 >> 7) & 1) * 0x011b)), ((0xb4 << 1) ^ (((0xb4 >> 7) & 1) * 0x011b)), ((0xc6 << 1) ^ (((0xc6 >> 7) & 1) * 0x011b)), ((0xe8 << 1) ^ (((0xe8 >> 7) & 1) * 0x011b)), ((0xdd << 1) ^ (((0xdd >> 7) & 1) * 0x011b)), ((0x74 << 1) ^ (((0x74 >> 7) & 1) * 0x011b)), ((0x1f << 1) ^ (((0x1f >> 7) & 1) * 0x011b)), ((0x4b << 1) ^ (((0x4b >> 7) & 1) * 0x011b)), ((0xbd << 1) ^ (((0xbd >> 7) & 1) * 0x011b)), ((0x8b << 1) ^ (((0x8b >> 7) & 1) * 0x011b)), ((0x8a << 1) ^ (((0x8a >> 7) & 1) * 0x011b)), ((0x70 << 1) ^ (((0x70 >> 7) & 1) * 0x011b)), ((0x3e << 1) ^ (((0x3e >> 7) & 1) * 0x011b)), ((0xb5 << 1) ^ (((0xb5 >> 7) & 1) * 0x011b)), ((0x66 << 1) ^ (((0x66 >> 7) & 1) * 0x011b)), ((0x48 << 1) ^ (((0x48 >> 7) & 1) * 0x011b)), ((0x03 << 1) ^ (((0x03 >> 7) & 1) * 0x011b)), ((0xf6 << 1) ^ (((0xf6 >> 7) & 1) * 0x011b)), ((0x0e << 1) ^ (((0x0e >> 7) & 1) * 0x011b)), ((0x61 << 1) ^ (((0x61 >> 7) & 1) * 0x011b)), ((0x35 << 1) ^ (((0x35 >> 7) & 1) * 0x011b)), ((0x57 << 1) ^ (((0x57 >> 7) & 1) * 0x011b)), ((0xb9 << 1) ^ (((0xb9 >> 7) & 1) * 0x011b)), ((0x86 << 1) ^ (((0x86 >> 7) & 1) * 0x011b)), ((0xc1 << 1) ^ (((0xc1 >> 7) & 1) * 0x011b)), ((0x1d << 1) ^ (((0x1d >> 7) & 1) * 0x011b)), ((0x9e << 1) ^ (((0x9e >> 7) & 1) * 0x011b)), ((0xe1 << 1) ^ (((0xe1 >> 7) & 1) * 0x011b)), ((0xf8 << 1) ^ (((0xf8 >> 7) & 1) * 0x011b)), ((0x98 << 1) ^ (((0x98 >> 7) & 1) * 0x011b)), ((0x11 << 1) ^ (((0x11 >> 7) & 1) * 0x011b)), ((0x69 << 1) ^ (((0x69 >> 7) & 1) * 0x011b)), ((0xd9 << 1) ^ (((0xd9 >> 7) & 1) * 0x011b)), ((0x8e << 1) ^ (((0x8e >> 7) & 1) * 0x011b)), ((0x94 << 1) ^ (((0x94 >> 7) & 1) * 0x011b)), ((0x9b << 1) ^ (((0x9b >> 7) & 1) * 0x011b)), ((0x1e << 1) ^ (((0x1e >> 7) & 1) * 0x011b)), ((0x87 << 1) ^ (((0x87 >> 7) & 1) * 0x011b)), ((0xe9 << 1) ^ (((0xe9 >> 7) & 1) * 0x011b)), ((0xce << 1) ^ (((0xce >> 7) & 1) * 0x011b)), ((0x55 << 1) ^ (((0x55 >> 7) & 1) * 0x011b)), ((0x28 << 1) ^ (((0x28 >> 7) & 1) * 0x011b)), ((0xdf << 1) ^ (((0xdf >> 7) & 1) * 0x011b)), ((0x8c << 1) ^ (((0x8c >> 7) & 1) * 0x011b)), ((0xa1 << 1) ^ (((0xa1 >> 7) & 1) * 0x011b)), ((0x89 << 1) ^ (((0x89 >> 7) & 1) * 0x011b)), ((0x0d << 1) ^ (((0x0d >> 7) & 1) * 0x011b)), ((0xbf << 1) ^ (((0xbf >> 7) & 1) * 0x011b)), ((0xe6 << 1) ^ (((0xe6 >> 7) & 1) * 0x011b)), ((0x42 << 1) ^ (((0x42 >> 7) & 1) * 0x011b)), ((0x68 << 1) ^ (((0x68 >> 7) & 1) * 0x011b)), ((0x41 << 1) ^ (((0x41 >> 7) & 1) * 0x011b)), ((0x99 << 1) ^ (((0x99 >> 7) & 1) * 0x011b)), ((0x2d << 1) ^ (((0x2d >> 7) & 1) * 0x011b)), ((0x0f << 1) ^ (((0x0f >> 7) & 1) * 0x011b)), ((0xb0 << 1) ^ (((0xb0 >> 7) & 1) * 0x011b)), ((0x54 << 1) ^ (((0x54 >> 7) & 1) * 0x011b)), ((0xbb << 1) ^ (((0xbb >> 7) & 1) * 0x011b)), ((0x16 << 1) ^ (((0x16 >> 7) & 1) * 0x011b)) };
static const uint_8t gfm3_sbox[256] = { (((0x63 << 1) ^ (((0x63 >> 7) & 1) * 0x011b)) ^ 0x63), (((0x7c << 1) ^ (((0x7c >> 7) & 1) * 0x011b)) ^ 0x7c), (((0x77 << 1) ^ (((0x77 >> 7) & 1) * 0x011b)) ^ 0x77), (((0x7b << 1) ^ (((0x7b >> 7) & 1) * 0x011b)) ^ 0x7b), (((0xf2 << 1) ^ (((0xf2 >> 7) & 1) * 0x011b)) ^ 0xf2), (((0x6b << 1) ^ (((0x6b >> 7) & 1) * 0x011b)) ^ 0x6b), (((0x6f << 1) ^ (((0x6f >> 7) & 1) * 0x011b)) ^ 0x6f), (((0xc5 << 1) ^ (((0xc5 >> 7) & 1) * 0x011b)) ^ 0xc5), (((0x30 << 1) ^ (((0x30 >> 7) & 1) * 0x011b)) ^ 0x30), (((0x01 << 1) ^ (((0x01 >> 7) & 1) * 0x011b)) ^ 0x01), (((0x67 << 1) ^ (((0x67 >> 7) & 1) * 0x011b)) ^ 0x67), (((0x2b << 1) ^ (((0x2b >> 7) & 1) * 0x011b)) ^ 0x2b), (((0xfe << 1) ^ (((0xfe >> 7) & 1) * 0x011b)) ^ 0xfe), (((0xd7 << 1) ^ (((0xd7 >> 7) & 1) * 0x011b)) ^ 0xd7), (((0xab << 1) ^ (((0xab >> 7) & 1) * 0x011b)) ^ 0xab), (((0x76 << 1) ^ (((0x76 >> 7) & 1) * 0x011b)) ^ 0x76), (((0xca << 1) ^ (((0xca >> 7) & 1) * 0x011b)) ^ 0xca), (((0x82 << 1) ^ (((0x82 >> 7) & 1) * 0x011b)) ^ 0x82), (((0xc9 << 1) ^ (((0xc9 >> 7) & 1) * 0x011b)) ^ 0xc9), (((0x7d << 1) ^ (((0x7d >> 7) & 1) * 0x011b)) ^ 0x7d), (((0xfa << 1) ^ (((0xfa >> 7) & 1) * 0x011b)) ^ 0xfa), (((0x59 << 1) ^ (((0x59 >> 7) & 1) * 0x011b)) ^ 0x59), (((0x47 << 1) ^ (((0x47 >> 7) & 1) * 0x011b)) ^ 0x47), (((0xf0 << 1) ^ (((0xf0 >> 7) & 1) * 0x011b)) ^ 0xf0), (((0xad << 1) ^ (((0xad >> 7) & 1) * 0x011b)) ^ 0xad), (((0xd4 << 1) ^ (((0xd4 >> 7) & 1) * 0x011b)) ^ 0xd4), (((0xa2 << 1) ^ (((0xa2 >> 7) & 1) * 0x011b)) ^ 0xa2), (((0xaf << 1) ^ (((0xaf >> 7) & 1) * 0x011b)) ^ 0xaf), (((0x9c << 1) ^ (((0x9c >> 7) & 1) * 0x011b)) ^ 0x9c), (((0xa4 << 1) ^ (((0xa4 >> 7) & 1) * 0x011b)) ^ 0xa4), (((0x72 << 1) ^ (((0x72 >> 7) & 1) * 0x011b)) ^ 0x72), (((0xc0 << 1) ^ (((0xc0 >> 7) & 1) * 0x011b)) ^ 0xc0), (((0xb7 << 1) ^ (((0xb7 >> 7) & 1) * 0x011b)) ^ 0xb7), (((0xfd << 1) ^ (((0xfd >> 7) & 1) * 0x011b)) ^ 0xfd), (((0x93 << 1) ^ (((0x93 >> 7) & 1) * 0x011b)) ^ 0x93), (((0x26 << 1) ^ (((0x26 >> 7) & 1) * 0x011b)) ^ 0x26), (((0x36 << 1) ^ (((0x36 >> 7) & 1) * 0x011b)) ^ 0x36), (((0x3f << 1) ^ (((0x3f >> 7) & 1) * 0x011b)) ^ 0x3f), (((0xf7 << 1) ^ (((0xf7 >> 7) & 1) * 0x011b)) ^ 0xf7), (((0xcc << 1) ^ (((0xcc >> 7) & 1) * 0x011b)) ^ 0xcc), (((0x34 << 1) ^ (((0x34 >> 7) & 1) * 0x011b)) ^ 0x34), (((0xa5 << 1) ^ (((0xa5 >> 7) & 1) * 0x011b)) ^ 0xa5), (((0xe5 << 1) ^ (((0xe5 >> 7) & 1) * 0x011b)) ^ 0xe5), (((0xf1 << 1) ^ (((0xf1 >> 7) & 1) * 0x011b)) ^ 0xf1), (((0x71 << 1) ^ (((0x71 >> 7) & 1) * 0x011b)) ^ 0x71), (((0xd8 << 1) ^ (((0xd8 >> 7) & 1) * 0x011b)) ^ 0xd8), (((0x31 << 1) ^ (((0x31 >> 7) & 1) * 0x011b)) ^ 0x31), (((0x15 << 1) ^ (((0x15 >> 7) & 1) * 0x011b)) ^ 0x15), (((0x04 << 1) ^ (((0x04 >> 7) & 1) * 0x011b)) ^ 0x04), (((0xc7 << 1) ^ (((0xc7 >> 7) & 1) * 0x011b)) ^ 0xc7), (((0x23 << 1) ^ (((0x23 >> 7) & 1) * 0x011b)) ^ 0x23), (((0xc3 << 1) ^ (((0xc3 >> 7) & 1) * 0x011b)) ^ 0xc3), (((0x18 << 1) ^ (((0x18 >> 7) & 1) * 0x011b)) ^ 0x18), (((0x96 << 1) ^ (((0x96 >> 7) & 1) * 0x011b)) ^ 0x96), (((0x05 << 1) ^ (((0x05 >> 7) & 1) * 0x011b)) ^ 0x05), (((0x9a << 1) ^ (((0x9a >> 7) & 1) * 0x011b)) ^ 0x9a), (((0x07 << 1) ^ (((0x07 >> 7) & 1) * 0x011b)) ^ 0x07), (((0x12 << 1) ^ (((0x12 >> 7) & 1) * 0x011b)) ^ 0x12), (((0x80 << 1) ^ (((0x80 >> 7) & 1) * 0x011b)) ^ 0x80), (((0xe2 << 1) ^ (((0xe2 >> 7) & 1) * 0x011b)) ^ 0xe2), (((0xeb << 1) ^ (((0xeb >> 7) & 1) * 0x011b)) ^ 0xeb), (((0x27 << 1) ^ (((0x27 >> 7) & 1) * 0x011b)) ^ 0x27), (((0xb2 << 1) ^ (((0xb2 >> 7) & 1) * 0x011b)) ^ 0xb2), (((0x75 << 1) ^ (((0x75 >> 7) & 1) * 0x011b)) ^ 0x75), (((0x09 << 1) ^ (((0x09 >> 7) & 1) * 0x011b)) ^ 0x09), (((0x83 << 1) ^ (((0x83 >> 7) & 1) * 0x011b)) ^ 0x83), (((0x2c << 1) ^ (((0x2c >> 7) & 1) * 0x011b)) ^ 0x2c), (((0x1a << 1) ^ (((0x1a >> 7) & 1) * 0x011b)) ^ 0x1a), (((0x1b << 1) ^ (((0x1b >> 7) & 1) * 0x011b)) ^ 0x1b), (((0x6e << 1) ^ (((0x6e >> 7) & 1) * 0x011b)) ^ 0x6e), (((0x5a << 1) ^ (((0x5a >> 7) & 1) * 0x011b)) ^ 0x5a), (((0xa0 << 1) ^ (((0xa0 >> 7) & 1) * 0x011b)) ^ 0xa0), (((0x52 << 1) ^ (((0x52 >> 7) & 1) * 0x011b)) ^ 0x52), (((0x3b << 1) ^ (((0x3b >> 7) & 1) * 0x011b)) ^ 0x3b), (((0xd6 << 1) ^ (((0xd6 >> 7) & 1) * 0x011b)) ^ 0xd6), (((0xb3 << 1) ^ (((0xb3 >> 7) & 1) * 0x011b)) ^ 0xb3), (((0x29 << 1) ^ (((0x29 >> 7) & 1) * 0x011b)) ^ 0x29), (((0xe3 << 1) ^ (((0xe3 >> 7) & 1) * 0x011b)) ^ 0xe3), (((0x2f << 1) ^ (((0x2f >> 7) & 1) * 0x011b)) ^ 0x2f), (((0x84 << 1) ^ (((0x84 >> 7) & 1) * 0x011b)) ^ 0x84), (((0x53 << 1) ^ (((0x53 >> 7) & 1) * 0x011b)) ^ 0x53), (((0xd1 << 1) ^ (((0xd1 >> 7) & 1) * 0x011b)) ^ 0xd1), (((0x00 << 1) ^ (((0x00 >> 7) & 1) * 0x011b)) ^ 0x00), (((0xed << 1) ^ (((0xed >> 7) & 1) * 0x011b)) ^ 0xed), (((0x20 << 1) ^ (((0x20 >> 7) & 1) * 0x011b)) ^ 0x20), (((0xfc << 1) ^ (((0xfc >> 7) & 1) * 0x011b)) ^ 0xfc), (((0xb1 << 1) ^ (((0xb1 >> 7) & 1) * 0x011b)) ^ 0xb1), (((0x5b << 1) ^ (((0x5b >> 7) & 1) * 0x011b)) ^ 0x5b), (((0x6a << 1) ^ (((0x6a >> 7) & 1) * 0x011b)) ^ 0x6a), (((0xcb << 1) ^ (((0xcb >> 7) & 1) * 0x011b)) ^ 0xcb), (((0xbe << 1) ^ (((0xbe >> 7) & 1) * 0x011b)) ^ 0xbe), (((0x39 << 1) ^ (((0x39 >> 7) & 1) * 0x011b)) ^ 0x39), (((0x4a << 1) ^ (((0x4a >> 7) & 1) * 0x011b)) ^ 0x4a), (((0x4c << 1) ^ (((0x4c >> 7) & 1) * 0x011b)) ^ 0x4c), (((0x58 << 1) ^ (((0x58 >> 7) & 1) * 0x011b)) ^ 0x58), (((0xcf << 1) ^ (((0xcf >> 7) & 1) * 0x011b)) ^ 0xcf), (((0xd0 << 1) ^ (((0xd0 >> 7) & 1) * 0x011b)) ^ 0xd0), (((0xef << 1) ^ (((0xef >> 7) & 1) * 0x011b)) ^ 0xef), (((0xaa << 1) ^ (((0xaa >> 7) & 1) * 0x011b)) ^ 0xaa), (((0xfb << 1) ^ (((0xfb >> 7) & 1) * 0x011b)) ^ 0xfb), (((0x43 << 1) ^ (((0x43 >> 7) & 1) * 0x011b)) ^ 0x43), (((0x4d << 1) ^ (((0x4d >> 7) & 1) * 0x011b)) ^ 0x4d), (((0x33 << 1) ^ (((0x33 >> 7) & 1) * 0x011b)) ^ 0x33), (((0x85 << 1) ^ (((0x85 >> 7) & 1) * 0x011b)) ^ 0x85), (((0x45 << 1) ^ (((0x45 >> 7) & 1) * 0x011b)) ^ 0x45), (((0xf9 << 1) ^ (((0xf9 >> 7) & 1) * 0x011b)) ^ 0xf9), (((0x02 << 1) ^ (((0x02 >> 7) & 1) * 0x011b)) ^ 0x02), (((0x7f << 1) ^ (((0x7f >> 7) & 1) * 0x011b)) ^ 0x7f), (((0x50 << 1) ^ (((0x50 >> 7) & 1) * 0x011b)) ^ 0x50), (((0x3c << 1) ^ (((0x3c >> 7) & 1) * 0x011b)) ^ 0x3c), (((0x9f << 1) ^ (((0x9f >> 7) & 1) * 0x011b)) ^ 0x9f), (((0xa8 << 1) ^ (((0xa8 >> 7) & 1) * 0x011b)) ^ 0xa8), (((0x51 << 1) ^ (((0x51 >> 7) & 1) * 0x011b)) ^ 0x51), (((0xa3 << 1) ^ (((0xa3 >> 7) & 1) * 0x011b)) ^ 0xa3), (((0x40 << 1) ^ (((0x40 >> 7) & 1) * 0x011b)) ^ 0x40), (((0x8f << 1) ^ (((0x8f >> 7) & 1) * 0x011b)) ^ 0x8f), (((0x92 << 1) ^ (((0x92 >> 7) & 1) * 0x011b)) ^ 0x92), (((0x9d << 1) ^ (((0x9d >> 7) & 1) * 0x011b)) ^ 0x9d), (((0x38 << 1) ^ (((0x38 >> 7) & 1) * 0x011b)) ^ 0x38), (((0xf5 << 1) ^ (((0xf5 >> 7) & 1) * 0x011b)) ^ 0xf5), (((0xbc << 1) ^ (((0xbc >> 7) & 1) * 0x011b)) ^ 0xbc), (((0xb6 << 1) ^ (((0xb6 >> 7) & 1) * 0x011b)) ^ 0xb6), (((0xda << 1) ^ (((0xda >> 7) & 1) * 0x011b)) ^ 0xda), (((0x21 << 1) ^ (((0x21 >> 7) & 1) * 0x011b)) ^ 0x21), (((0x10 << 1) ^ (((0x10 >> 7) & 1) * 0x011b)) ^ 0x10), (((0xff << 1) ^ (((0xff >> 7) & 1) * 0x011b)) ^ 0xff), (((0xf3 << 1) ^ (((0xf3 >> 7) & 1) * 0x011b)) ^ 0xf3), (((0xd2 << 1) ^ (((0xd2 >> 7) & 1) * 0x011b)) ^ 0xd2), (((0xcd << 1) ^ (((0xcd >> 7) & 1) * 0x011b)) ^ 0xcd), (((0x0c << 1) ^ (((0x0c >> 7) & 1) * 0x011b)) ^ 0x0c), (((0x13 << 1) ^ (((0x13 >> 7) & 1) * 0x011b)) ^ 0x13), (((0xec << 1) ^ (((0xec >> 7) & 1) * 0x011b)) ^ 0xec), (((0x5f << 1) ^ (((0x5f >> 7) & 1) * 0x011b)) ^ 0x5f), (((0x97 << 1) ^ (((0x97 >> 7) & 1) * 0x011b)) ^ 0x97), (((0x44 << 1) ^ (((0x44 >> 7) & 1) * 0x011b)) ^ 0x44), (((0x17 << 1) ^ (((0x17 >> 7) & 1) * 0x011b)) ^ 0x17), (((0xc4 << 1) ^ (((0xc4 >> 7) & 1) * 0x011b)) ^ 0xc4), (((0xa7 << 1) ^ (((0xa7 >> 7) & 1) * 0x011b)) ^ 0xa7), (((0x7e << 1) ^ (((0x7e >> 7) & 1) * 0x011b)) ^ 0x7e), (((0x3d << 1) ^ (((0x3d >> 7) & 1) * 0x011b)) ^ 0x3d), (((0x64 << 1) ^ (((0x64 >> 7) & 1) * 0x011b)) ^ 0x64), (((0x5d << 1) ^ (((0x5d >> 7) & 1) * 0x011b)) ^ 0x5d), (((0x19 << 1) ^ (((0x19 >> 7) & 1) * 0x011b)) ^ 0x19), (((0x73 << 1) ^ (((0x73 >> 7) & 1) * 0x011b)) ^ 0x73), (((0x60 << 1) ^ (((0x60 >> 7) & 1) * 0x011b)) ^ 0x60), (((0x81 << 1) ^ (((0x81 >> 7) & 1) * 0x011b)) ^ 0x81), (((0x4f << 1) ^ (((0x4f >> 7) & 1) * 0x011b)) ^ 0x4f), (((0xdc << 1) ^ (((0xdc >> 7) & 1) * 0x011b)) ^ 0xdc), (((0x22 << 1) ^ (((0x22 >> 7) & 1) * 0x011b)) ^ 0x22), (((0x2a << 1) ^ (((0x2a >> 7) & 1) * 0x011b)) ^ 0x2a), (((0x90 << 1) ^ (((0x90 >> 7) & 1) * 0x011b)) ^ 0x90), (((0x88 << 1) ^ (((0x88 >> 7) & 1) * 0x011b)) ^ 0x88), (((0x46 << 1) ^ (((0x46 >> 7) & 1) * 0x011b)) ^ 0x46), (((0xee << 1) ^ (((0xee >> 7) & 1) * 0x011b)) ^ 0xee), (((0xb8 << 1) ^ (((0xb8 >> 7) & 1) * 0x011b)) ^ 0xb8), (((0x14 << 1) ^ (((0x14 >> 7) & 1) * 0x011b)) ^ 0x14), (((0xde << 1) ^ (((0xde >> 7) & 1) * 0x011b)) ^ 0xde), (((0x5e << 1) ^ (((0x5e >> 7) & 1) * 0x011b)) ^ 0x5e), (((0x0b << 1) ^ (((0x0b >> 7) & 1) * 0x011b)) ^ 0x0b), (((0xdb << 1) ^ (((0xdb >> 7) & 1) * 0x011b)) ^ 0xdb), (((0xe0 << 1) ^ (((0xe0 >> 7) & 1) * 0x011b)) ^ 0xe0), (((0x32 << 1) ^ (((0x32 >> 7) & 1) * 0x011b)) ^ 0x32), (((0x3a << 1) ^ (((0x3a >> 7) & 1) * 0x011b)) ^ 0x3a), (((0x0a << 1) ^ (((0x0a >> 7) & 1) * 0x011b)) ^ 0x0a), (((0x49 << 1) ^ (((0x49 >> 7) & 1) * 0x011b)) ^ 0x49), (((0x06 << 1) ^ (((0x06 >> 7) & 1) * 0x011b)) ^ 0x06), (((0x24 << 1) ^ (((0x24 >> 7) & 1) * 0x011b)) ^ 0x24), (((0x5c << 1) ^ (((0x5c >> 7) & 1) * 0x011b)) ^ 0x5c), (((0xc2 << 1) ^ (((0xc2 >> 7) & 1) * 0x011b)) ^ 0xc2), (((0xd3 << 1) ^ (((0xd3 >> 7) & 1) * 0x011b)) ^ 0xd3), (((0xac << 1) ^ (((0xac >> 7) & 1) * 0x011b)) ^ 0xac), (((0x62 << 1) ^ (((0x62 >> 7) & 1) * 0x011b)) ^ 0x62), (((0x91 << 1) ^ (((0x91 >> 7) & 1) * 0x011b)) ^ 0x91), (((0x95 << 1) ^ (((0x95 >> 7) & 1) * 0x011b)) ^ 0x95), (((0xe4 << 1) ^ (((0xe4 >> 7) & 1) * 0x011b)) ^ 0xe4), (((0x79 << 1) ^ (((0x79 >> 7) & 1) * 0x011b)) ^ 0x79), (((0xe7 << 1) ^ (((0xe7 >> 7) & 1) * 0x011b)) ^ 0xe7), (((0xc8 << 1) ^ (((0xc8 >> 7) & 1) * 0x011b)) ^ 0xc8), (((0x37 << 1) ^ (((0x37 >> 7) & 1) * 0x011b)) ^ 0x37), (((0x6d << 1) ^ (((0x6d >> 7) & 1) * 0x011b)) ^ 0x6d), (((0x8d << 1) ^ (((0x8d >> 7) & 1) * 0x011b)) ^ 0x8d), (((0xd5 << 1) ^ (((0xd5 >> 7) & 1) * 0x011b)) ^ 0xd5), (((0x4e << 1) ^ (((0x4e >> 7) & 1) * 0x011b)) ^ 0x4e), (((0xa9 << 1) ^ (((0xa9 >> 7) & 1) * 0x011b)) ^ 0xa9), (((0x6c << 1) ^ (((0x6c >> 7) & 1) * 0x011b)) ^ 0x6c), (((0x56 << 1) ^ (((0x56 >> 7) & 1) * 0x011b)) ^ 0x56), (((0xf4 << 1) ^ (((0xf4 >> 7) & 1) * 0x011b)) ^ 0xf4), (((0xea << 1) ^ (((0xea >> 7) & 1) * 0x011b)) ^ 0xea), (((0x65 << 1) ^ (((0x65 >> 7) & 1) * 0x011b)) ^ 0x65), (((0x7a << 1) ^ (((0x7a >> 7) & 1) * 0x011b)) ^ 0x7a), (((0xae << 1) ^ (((0xae >> 7) & 1) * 0x011b)) ^ 0xae), (((0x08 << 1) ^ (((0x08 >> 7) & 1) * 0x011b)) ^ 0x08), (((0xba << 1) ^ (((0xba >> 7) & 1) * 0x011b)) ^ 0xba), (((0x78 << 1) ^ (((0x78 >> 7) & 1) * 0x011b)) ^ 0x78), (((0x25 << 1) ^ (((0x25 >> 7) & 1) * 0x011b)) ^ 0x25), (((0x2e << 1) ^ (((0x2e >> 7) & 1) * 0x011b)) ^ 0x2e), (((0x1c << 1) ^ (((0x1c >> 7) & 1) * 0x011b)) ^ 0x1c), (((0xa6 << 1) ^ (((0xa6 >> 7) & 1) * 0x011b)) ^ 0xa6), (((0xb4 << 1) ^ (((0xb4 >> 7) & 1) * 0x011b)) ^ 0xb4), (((0xc6 << 1) ^ (((0xc6 >> 7) & 1) * 0x011b)) ^ 0xc6), (((0xe8 << 1) ^ (((0xe8 >> 7) & 1) * 0x011b)) ^ 0xe8), (((0xdd << 1) ^ (((0xdd >> 7) & 1) * 0x011b)) ^ 0xdd), (((0x74 << 1) ^ (((0x74 >> 7) & 1) * 0x011b)) ^ 0x74), (((0x1f << 1) ^ (((0x1f >> 7) & 1) * 0x011b)) ^ 0x1f), (((0x4b << 1) ^ (((0x4b >> 7) & 1) * 0x011b)) ^ 0x4b), (((0xbd << 1) ^ (((0xbd >> 7) & 1) * 0x011b)) ^ 0xbd), (((0x8b << 1) ^ (((0x8b >> 7) & 1) * 0x011b)) ^ 0x8b), (((0x8a << 1) ^ (((0x8a >> 7) & 1) * 0x011b)) ^ 0x8a), (((0x70 << 1) ^ (((0x70 >> 7) & 1) * 0x011b)) ^ 0x70), (((0x3e << 1) ^ (((0x3e >> 7) & 1) * 0x011b)) ^ 0x3e), (((0xb5 << 1) ^ (((0xb5 >> 7) & 1) * 0x011b)) ^ 0xb5), (((0x66 << 1) ^ (((0x66 >> 7) & 1) * 0x011b)) ^ 0x66), (((0x48 << 1) ^ (((0x48 >> 7) & 1) * 0x011b)) ^ 0x48), (((0x03 << 1) ^ (((0x03 >> 7) & 1) * 0x011b)) ^ 0x03), (((0xf6 << 1) ^ (((0xf6 >> 7) & 1) * 0x011b)) ^ 0xf6), (((0x0e << 1) ^ (((0x0e >> 7) & 1) * 0x011b)) ^ 0x0e), (((0x61 << 1) ^ (((0x61 >> 7) & 1) * 0x011b)) ^ 0x61), (((0x35 << 1) ^ (((0x35 >> 7) & 1) * 0x011b)) ^ 0x35), (((0x57 << 1) ^ (((0x57 >> 7) & 1) * 0x011b)) ^ 0x57), (((0xb9 << 1) ^ (((0xb9 >> 7) & 1) * 0x011b)) ^ 0xb9), (((0x86 << 1) ^ (((0x86 >> 7) & 1) * 0x011b)) ^ 0x86), (((0xc1 << 1) ^ (((0xc1 >> 7) & 1) * 0x011b)) ^ 0xc1), (((0x1d << 1) ^ (((0x1d >> 7) & 1) * 0x011b)) ^ 0x1d), (((0x9e << 1) ^ (((0x9e >> 7) & 1) * 0x011b)) ^ 0x9e), (((0xe1 << 1) ^ (((0xe1 >> 7) & 1) * 0x011b)) ^ 0xe1), (((0xf8 << 1) ^ (((0xf8 >> 7) & 1) * 0x011b)) ^ 0xf8), (((0x98 << 1) ^ (((0x98 >> 7) & 1) * 0x011b)) ^ 0x98), (((0x11 << 1) ^ (((0x11 >> 7) & 1) * 0x011b)) ^ 0x11), (((0x69 << 1) ^ (((0x69 >> 7) & 1) * 0x011b)) ^ 0x69), (((0xd9 << 1) ^ (((0xd9 >> 7) & 1) * 0x011b)) ^ 0xd9), (((0x8e << 1) ^ (((0x8e >> 7) & 1) * 0x011b)) ^ 0x8e), (((0x94 << 1) ^ (((0x94 >> 7) & 1) * 0x011b)) ^ 0x94), (((0x9b << 1) ^ (((0x9b >> 7) & 1) * 0x011b)) ^ 0x9b), (((0x1e << 1) ^ (((0x1e >> 7) & 1) * 0x011b)) ^ 0x1e), (((0x87 << 1) ^ (((0x87 >> 7) & 1) * 0x011b)) ^ 0x87), (((0xe9 << 1) ^ (((0xe9 >> 7) & 1) * 0x011b)) ^ 0xe9), (((0xce << 1) ^ (((0xce >> 7) & 1) * 0x011b)) ^ 0xce), (((0x55 << 1) ^ (((0x55 >> 7) & 1) * 0x011b)) ^ 0x55), (((0x28 << 1) ^ (((0x28 >> 7) & 1) * 0x011b)) ^ 0x28), (((0xdf << 1) ^ (((0xdf >> 7) & 1) * 0x011b)) ^ 0xdf), (((0x8c << 1) ^ (((0x8c >> 7) & 1) * 0x011b)) ^ 0x8c), (((0xa1 << 1) ^ (((0xa1 >> 7) & 1) * 0x011b)) ^ 0xa1), (((0x89 << 1) ^ (((0x89 >> 7) & 1) * 0x011b)) ^ 0x89), (((0x0d << 1) ^ (((0x0d >> 7) & 1) * 0x011b)) ^ 0x0d), (((0xbf << 1) ^ (((0xbf >> 7) & 1) * 0x011b)) ^ 0xbf), (((0xe6 << 1) ^ (((0xe6 >> 7) & 1) * 0x011b)) ^ 0xe6), (((0x42 << 1) ^ (((0x42 >> 7) & 1) * 0x011b)) ^ 0x42), (((0x68 << 1) ^ (((0x68 >> 7) & 1) * 0x011b)) ^ 0x68), (((0x41 << 1) ^ (((0x41 >> 7) & 1) * 0x011b)) ^ 0x41), (((0x99 << 1) ^ (((0x99 >> 7) & 1) * 0x011b)) ^ 0x99), (((0x2d << 1) ^ (((0x2d >> 7) & 1) * 0x011b)) ^ 0x2d), (((0x0f << 1) ^ (((0x0f >> 7) & 1) * 0x011b)) ^ 0x0f), (((0xb0 << 1) ^ (((0xb0 >> 7) & 1) * 0x011b)) ^ 0xb0), (((0x54 << 1) ^ (((0x54 >> 7) & 1) * 0x011b)) ^ 0x54), (((0xbb << 1) ^ (((0xbb >> 7) & 1) * 0x011b)) ^ 0xbb), (((0x16 << 1) ^ (((0x16 >> 7) & 1) * 0x011b)) ^ 0x16) };




static void copy_block( void *d, const void *s )
{
    ((uint_32t*)d)[ 0] = ((uint_32t*)s)[ 0];
    ((uint_32t*)d)[ 1] = ((uint_32t*)s)[ 1];
    ((uint_32t*)d)[ 2] = ((uint_32t*)s)[ 2];
    ((uint_32t*)d)[ 3] = ((uint_32t*)s)[ 3];
}

static void copy_block_nn( uint_8t * d, const uint_8t *s, uint_8t nn )
{
    while( nn-- )
        
        *d++ = *s++;
}

static void xor_block( void *d, const void *s )
{
    ((uint_32t*)d)[ 0] ^= ((uint_32t*)s)[ 0];
    ((uint_32t*)d)[ 1] ^= ((uint_32t*)s)[ 1];
    ((uint_32t*)d)[ 2] ^= ((uint_32t*)s)[ 2];
    ((uint_32t*)d)[ 3] ^= ((uint_32t*)s)[ 3];
}

static void copy_and_key( void *d, const void *s, const void *k )
{
    ((uint_32t*)d)[ 0] = ((uint_32t*)s)[ 0] ^ ((uint_32t*)k)[ 0];
    ((uint_32t*)d)[ 1] = ((uint_32t*)s)[ 1] ^ ((uint_32t*)k)[ 1];
    ((uint_32t*)d)[ 2] = ((uint_32t*)s)[ 2] ^ ((uint_32t*)k)[ 2];
    ((uint_32t*)d)[ 3] = ((uint_32t*)s)[ 3] ^ ((uint_32t*)k)[ 3];
}

static void add_round_key( uint_8t d[(4 * 4)], const uint_8t k[(4 * 4)] )
{
    xor_block(d, k);
}

static void shift_sub_rows( uint_8t st[(4 * 4)] )
{   uint_8t tt;

    st[ 0] = sbox[(st[ 0])]; st[ 4] = sbox[(st[ 4])];
    st[ 8] = sbox[(st[ 8])]; st[12] = sbox[(st[12])];

    tt = st[1]; st[ 1] = sbox[(st[ 5])]; st[ 5] = sbox[(st[ 9])];
    st[ 9] = sbox[(st[13])]; st[13] = sbox[(tt)];

    tt = st[2]; st[ 2] = sbox[(st[10])]; st[10] = sbox[(tt)];
    tt = st[6]; st[ 6] = sbox[(st[14])]; st[14] = sbox[(tt)];

    tt = st[15]; st[15] = sbox[(st[11])]; st[11] = sbox[(st[ 7])];
    st[ 7] = sbox[(st[ 3])]; st[ 3] = sbox[(tt)];
}


  static void mix_sub_columns( uint_8t dt[(4 * 4)] )
  { uint_8t st[(4 * 4)];
    copy_block(st, dt);
    dt[ 0] = gfm2_sbox[(st[0])] ^ gfm3_sbox[(st[5])] ^ sbox[(st[10])] ^ sbox[(st[15])];
    dt[ 1] = sbox[(st[0])] ^ gfm2_sbox[(st[5])] ^ gfm3_sbox[(st[10])] ^ sbox[(st[15])];
    dt[ 2] = sbox[(st[0])] ^ sbox[(st[5])] ^ gfm2_sbox[(st[10])] ^ gfm3_sbox[(st[15])];
    dt[ 3] = gfm3_sbox[(st[0])] ^ sbox[(st[5])] ^ sbox[(st[10])] ^ gfm2_sbox[(st[15])];

    dt[ 4] = gfm2_sbox[(st[4])] ^ gfm3_sbox[(st[9])] ^ sbox[(st[14])] ^ sbox[(st[3])];
    dt[ 5] = sbox[(st[4])] ^ gfm2_sbox[(st[9])] ^ gfm3_sbox[(st[14])] ^ sbox[(st[3])];
    dt[ 6] = sbox[(st[4])] ^ sbox[(st[9])] ^ gfm2_sbox[(st[14])] ^ gfm3_sbox[(st[3])];
    dt[ 7] = gfm3_sbox[(st[4])] ^ sbox[(st[9])] ^ sbox[(st[14])] ^ gfm2_sbox[(st[3])];

    dt[ 8] = gfm2_sbox[(st[8])] ^ gfm3_sbox[(st[13])] ^ sbox[(st[2])] ^ sbox[(st[7])];
    dt[ 9] = sbox[(st[8])] ^ gfm2_sbox[(st[13])] ^ gfm3_sbox[(st[2])] ^ sbox[(st[7])];
    dt[10] = sbox[(st[8])] ^ sbox[(st[13])] ^ gfm2_sbox[(st[2])] ^ gfm3_sbox[(st[7])];
    dt[11] = gfm3_sbox[(st[8])] ^ sbox[(st[13])] ^ sbox[(st[2])] ^ gfm2_sbox[(st[7])];

    dt[12] = gfm2_sbox[(st[12])] ^ gfm3_sbox[(st[1])] ^ sbox[(st[6])] ^ sbox[(st[11])];
    dt[13] = sbox[(st[12])] ^ gfm2_sbox[(st[1])] ^ gfm3_sbox[(st[6])] ^ sbox[(st[11])];
    dt[14] = sbox[(st[12])] ^ sbox[(st[1])] ^ gfm2_sbox[(st[6])] ^ gfm3_sbox[(st[11])];
    dt[15] = gfm3_sbox[(st[12])] ^ sbox[(st[1])] ^ sbox[(st[6])] ^ gfm2_sbox[(st[11])];
  }



 

return_type aes_set_key( const unsigned char key[], length_type keylen, aes_context ctx[1] )
{
    uint_8t cc, rc, hi;

    switch( keylen )
    {
    case 16:
    case 24:
    case 32:
        break;
    default: 
        ctx->rnd = 0; 
        return ( uint_8t )-1;
    }
    copy_block_nn(ctx->ksch, key, keylen);
    hi = (keylen + 28) << 2;
    ctx->rnd = (hi >> 4) - 1;
    for( cc = keylen, rc = 1; cc < hi; cc += 4 )
    {   uint_8t tt, t0, t1, t2, t3;

        t0 = ctx->ksch[cc - 4];
        t1 = ctx->ksch[cc - 3];
        t2 = ctx->ksch[cc - 2];
        t3 = ctx->ksch[cc - 1];
        if( cc % keylen == 0 )
        {
            tt = t0;
            t0 = sbox[(t1)] ^ rc;
            t1 = sbox[(t2)];
            t2 = sbox[(t3)];
            t3 = sbox[(tt)];
            rc = ((rc << 1) ^ (((rc >> 7) & 1) * 0x011b));
        }
        else if( keylen > 24 && cc % keylen == 16 )
        {
            t0 = sbox[(t0)];
            t1 = sbox[(t1)];
            t2 = sbox[(t2)];
            t3 = sbox[(t3)];
        }
        tt = cc - keylen;
        ctx->ksch[cc + 0] = ctx->ksch[tt + 0] ^ t0;
        ctx->ksch[cc + 1] = ctx->ksch[tt + 1] ^ t1;
        ctx->ksch[cc + 2] = ctx->ksch[tt + 2] ^ t2;
        ctx->ksch[cc + 3] = ctx->ksch[tt + 3] ^ t3;
    }
    return 0;
}



 

return_type aes_encrypt( const unsigned char in[(4 * 4)], unsigned char  out[(4 * 4)], const aes_context ctx[1] )
{
    if( ctx->rnd )
    {
        uint_8t s1[(4 * 4)], r;
        copy_and_key( s1, in, ctx->ksch );

        for( r = 1 ; r < ctx->rnd ; ++r )
        {
            mix_sub_columns( s1 );
            add_round_key( s1, ctx->ksch + r * (4 * 4));
        }
        shift_sub_rows( s1 );
        copy_and_key( out, s1, ctx->ksch + r * (4 * 4) );
    }
    else
        return ( uint_8t )-1;
    return 0;
}

 

return_type aes_cbc_encrypt( const unsigned char *in, unsigned char *out,
                         int n_block, unsigned char iv[(4 * 4)], const aes_context ctx[1] )
{

    while(n_block--)
    {
        xor_block(iv, in);
        if(aes_encrypt(iv, iv, ctx) != 0)
			return 1;
        
        copy_block(out, iv);
        in += (4 * 4);
        out += (4 * 4);
    }
    return 0;
}






