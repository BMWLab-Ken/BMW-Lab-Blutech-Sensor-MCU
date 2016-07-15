











 
 
 


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








 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 

  #pragma system_include



 
 

 

  #pragma system_include






 















 








                 



_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind short        __iar_Dtest(double);
_Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int          __iar_Dsign(double);

  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind short        __iar_FDtest(float);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int          __iar_FDsign(float);




                 
typedef union
{        
  unsigned short _Word[8 / 2];
  float _Float;
  double _Double;
  long double _Long_double;
} _Dconst;

                 
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Cosh(double, double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Erfc(double);
_Pragma("function_effects = no_state") __intrinsic __nounwind short        __iar_Exp(double *, double, long);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Log(double, int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Log_small(double, int);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Logpoly(double);
_Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_Quad(double *);
_Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_QuadXp(double *);
_Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_Quadph(double *, double);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Rint(double);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Sin(double, unsigned int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Sin_small(double, unsigned int);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Sinh(double, double);
_Pragma("function_effects = no_state") __intrinsic __nounwind double       __iar_Tgamma(double *, short *pex);

                 
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FCosh(float, float);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind short        __iar_FDtest(float);
  _Pragma("function_effects = no_state, no_errno") __intrinsic __nounwind int          __iar_FDsign(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FErfc(float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind short        __iar_FExp(float *, float, long);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FLog(float, int);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Log_smallf(float, int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FLogpoly(float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_FQuad(float *);
  _Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_FQuadXp(float *);
  _Pragma("function_effects = no_state") __intrinsic __nounwind unsigned int __iar_FQuadph(float *, float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FRint(float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FSin(float, unsigned int);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Sin_smallf(float, unsigned int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FSinh(float, float);
  _Pragma("function_effects = no_state") __intrinsic __nounwind float        __iar_FTgamma(float *, short *pex);

                 


 extern float const __aeabi_HUGE_VALF;
 extern float const __aeabi_INFINITY;
 extern float const __aeabi_NAN;
 extern double const __aeabi_HUGE_VAL;
 extern long double const __aeabi_HUGE_VALL;

                 
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (atan2l)(long double, long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (cosl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (expl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (ldexpl)(long double, int);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (logl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (powl)(long double, long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (sinl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (sqrtl)(long double);
_Pragma("function_effects = no_state") __intrinsic __nounwind long double (tanl)(long double);
                 
_Pragma("function_effects = no_state") __intrinsic __nounwind float (atan2f)(float, float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (cosf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (expf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (ldexpf)(float, int);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (logf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (powf)(float, float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (sinf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (sqrtf)(float);
_Pragma("function_effects = no_state") __intrinsic __nounwind float (tanf)(float);









 
 
 

  #pragma system_include









 






  typedef float float_t;
  typedef double double_t;



                 
_Pragma("function_effects = no_state")    __intrinsic __nounwind double acos(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double asin(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double atan(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double atan2(double, double);
_Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double ceil(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double exp(double);
_Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fabs(double);
_Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double floor(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double fmod(double, double);
_Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind double frexp(double, int *);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double ldexp(double, int);
_Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind double modf(double, double *);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double pow(double, double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double sqrt(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double tan(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double tanh(double);

_Pragma("function_effects = no_state")    __intrinsic __nounwind double cos(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double cosh(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double log(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double log10(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double sin(double);
_Pragma("function_effects = no_state")    __intrinsic __nounwind double sinh(double);


                 
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double acosh(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double asinh(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double atanh(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double cbrt(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double copysign(double, double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double erf(double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double erfc(double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double expm1(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double exp2(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fdim(double, double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double fma(double, double, double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fmax(double, double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double fmin(double, double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double hypot(double, double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind int    ilogb(double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double lgamma(double);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state") __intrinsic __nounwind _Longlong llrint(double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind _Longlong llround(double);
    #pragma language=restore
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double log1p(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double log2(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double logb(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long   lrint(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long   lround(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double nan(const char *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double nearbyint(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double nextafter(double, double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double nexttoward(double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double remainder(double, double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double remquo(double, double, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double rint(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double round(double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double scalbn(double, int);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind double scalbln(double, long);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind double tgamma(double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind double trunc(double);

                 
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float acosf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float asinf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float atanf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float atan2f(float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float ceilf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float expf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fabsf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float floorf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float fmodf(float, float);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind float frexpf(float, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float ldexpf(float, int);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind float modff(float, float *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float powf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float sqrtf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float tanf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float tanhf(float);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind float acoshf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float asinhf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float atanhf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float cbrtf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float copysignf(float, float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float erff(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float erfcf(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float expm1f(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float exp2f(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fdimf(float, float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float fmaf(float, float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fmaxf(float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float fminf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float hypotf(float, float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind int   ilogbf(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float lgammaf(float);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llrintf(float);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llroundf(float);
    #pragma language=restore
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float log1pf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float log2f(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float logbf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long  lrintf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long  lroundf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float nanf(const char *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float nearbyintf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float nextafterf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float nexttowardf(float, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float remainderf(float, float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float remquof(float, float, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float rintf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float roundf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float scalbnf(float, int);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float scalblnf(float, long);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind float tgammaf(float);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind float truncf(float);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind float cosf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float coshf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float logf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float log10f(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float sinf(float);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind float sinhf(float);

                 
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double acosl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double asinl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double atanl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double atan2l(long double, long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double ceill(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double expl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fabsl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double floorl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double fmodl(long double, long double);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind long double frexpl(long double, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double ldexpl(long double, int);
  _Pragma("function_effects = no_state, no_errno, no_read(2)") __intrinsic __nounwind long double modfl(long double, long double *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double powl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double sqrtl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double tanl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double tanhl(long double);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double acoshl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double asinhl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double atanhl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double cbrtl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double copysignl(long double, long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double erfl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double erfcl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double expm1l(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double exp2l(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fdiml(long double, long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double fmal(long double, long double, 
                                              long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fmaxl(long double, long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double fminl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double hypotl(long double, long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind int         ilogbl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double lgammal(long double);
    #pragma language=save
    #pragma language=extended
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llrintl(long double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind _Longlong llroundl(long double);
    #pragma language=restore
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double log1pl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double log2l(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double logbl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long        lrintl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long lroundl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double nanl(const char *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double nearbyintl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double nextafterl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double nexttowardl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double remainderl(long double, long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double remquol(long double, long double, int *);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double rintl(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double roundl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double scalbnl(long double, int);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double scalblnl(long double, long);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind long double tgammal(long double);
  _Pragma("function_effects = no_state, no_errno")    __intrinsic __nounwind long double truncl(long double);

  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double cosl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double coshl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double logl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double log10l(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double sinl(long double);
  _Pragma("function_effects = no_state")    __intrinsic __nounwind long double sinhl(long double);

                   
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_tan_accurate(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_cos_accurate(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_sin_accurate(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_pow_accurate(double, double);

  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Sin_accurate(double, unsigned int);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_Pow_accurate(double, double, short *pex);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_tan_accuratef(float);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_cos_accuratef(float);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_sin_accuratef(float);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_pow_accuratef(float, float);

      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Sin_accuratef(float, unsigned int);
      _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_Pow_accuratef(float, float, short *pex);

      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_tan_accuratel(long double);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_cos_accuratel(long double);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_sin_accuratel(long double);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_pow_accuratel(long double, 
                                                            long double);

      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_Sin_accuratel(long double, 
                                                            unsigned int);
      _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_Pow_accuratel(long double, 
                                                            long double,
                                                            short *pex);

                   
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_cos_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_exp_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_log_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_log2_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_log10_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_pow_small(double, double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_sin_small(double);
  _Pragma("function_effects = no_state") __intrinsic __nounwind double __iar_tan_small(double);
  
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_cos_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_exp_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_log_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_log2_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_log10_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_pow_smallf(float, float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_sin_smallf(float);
    _Pragma("function_effects = no_state") __intrinsic __nounwind float __iar_tan_smallf(float);

    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_cos_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_exp_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_log_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_log2_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_log10_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_pow_smalll(long double, long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_sin_smalll(long double);
    _Pragma("function_effects = no_state") __intrinsic __nounwind long double __iar_tan_smalll(long double);










                 

 

  #pragma inline=no_body
  double cos(double _X)
  {        
    return __iar_Sin(_X, 1);
  }

  #pragma inline=no_body
  double cosh(double _X)
  {        
    return __iar_Cosh(_X, 1);
  }

  #pragma inline=no_body
  double log(double _X)
  {        
    return __iar_Log(_X, 0);
  }

  #pragma inline=no_body
  double log10(double _X)
  {        
    return __iar_Log(_X, 1);
  }

  #pragma inline=no_body
  double sin(double _X)
  {        
    return __iar_Sin(_X, 0);
  }

  #pragma inline=no_body
  double sinh(double _X)
  {        
    return __iar_Sinh(_X, 1);
  }


                 
    #pragma inline=no_body
    double log2(double _Left)
    {    
      return (__iar_Log(_Left, -1));
    }

    #pragma inline=no_body
    double nan(const char *s)
    {    
      return (0.Nan);
    }

    #pragma inline=no_body
    double nextafter(double x, double y)
    {    
      return (nexttoward(x, (long double)y));
    }

    #pragma inline=no_body
    double remainder(double x, double y)
    {    
      return (remquo(x, y, 0));
    }


                 
    #pragma inline=no_body
    float cosf(float _X)
    {        
      return (__iar_FSin(_X, 1));
    }

    #pragma inline=no_body
    float coshf(float _X)
    {        
      return (__iar_FCosh(_X,  1.0F));
    }

    #pragma inline=no_body
    float logf(float _X)
    {        
      return (__iar_FLog(_X, 0));
    }

    #pragma inline=no_body 
    float log2f(float _Left)
    {        
      return (__iar_FLog(_Left, -1));
    }

    #pragma inline=no_body
    float log10f(float _X)
    {        
      return (__iar_FLog(_X, 1));
    }

    #pragma inline=no_body
    float nanf(const char *s)
    {    
      return (0.Nan);
    }

    #pragma inline=no_body
    float nextafterf(float x, float y)
    {    
      return (nexttowardf(x, (long double)y));
    }

    #pragma inline=no_body
    float remainderf(float x, float y)
    {    
      return (remquof(x, y, 0));
    }

    #pragma inline=no_body
    float sinf(float _X)
    {        
      return (__iar_FSin(_X, 0));
    }

    #pragma inline=no_body
    float sinhf(float _X)
    {        
      return (__iar_FSinh(_X,  1.0F));
    }

                 
    #pragma inline=no_body
    long double cosl(long double _X)
    {        
      return (__iar_Sin(_X, 1));
    }

    #pragma inline=no_body
    long double coshl(long double _X)
    {        
      return (__iar_Cosh(_X, (double) 1.0L));
    }

    #pragma inline=no_body
    long double logl(long double _X)
    {        
      return (__iar_Log(_X, 0));
    }

    #pragma inline=no_body 
    long double log2l(long double _Left)
    {        
      return (__iar_Log(_Left, -1));
    }

    #pragma inline=no_body
    long double log10l(long double _X)
    {        
      return (__iar_Log(_X, 1));
    }

    #pragma inline=no_body
    long double nanl(const char *s)
    {    
      return (0.Nan);
    }

    #pragma inline=no_body
    long double nextafterl(long double x, long double y)
    {    
      return (nexttowardl(x, y));
    }

    #pragma inline=no_body
    long double remainderl(long double x, long double y)
    {    
      return (remquol(x, y, 0));
    }

    #pragma inline=no_body
    long double sinl(long double _X)
    {        
      return (__iar_Sin(_X, 0));
    }

    #pragma inline=no_body
    long double sinhl(long double _X)
    {        
      return (__iar_Sinh(_X, (double) 1.0L));
    }



   






   
  
  
  _Pragma("function_effects = no_state")    __intrinsic __nounwind int __iar_Dcomp(double, double);
    _Pragma("function_effects = no_state")    __intrinsic __nounwind int __iar_FDcomp(float, float);
  
  
  
      


    

  #pragma inline=no_body
  int __iar_Dcomp(double x, double y)
  {
    if ((__c99_generic(x,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(x) == 2) || (__c99_generic(y,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(y) == 2))
    {
      return 0;
    }
    if (x > y)
    {
      return 4;
    }
    if (x < y)
    {
      return 1;
    }
    if (x == y)
    {
      return 2;
    }
    return 0;
  }

    #pragma inline=no_body
    int __iar_FDcomp(float x, float y)
    {
      if ((__c99_generic(x,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(x) == 2) || (__c99_generic(y,,, __iar_Dtest, __iar_FDtest, __iar_Dtest,,,)(y) == 2))
      {
        return 0;
      }
      if (x > y)
      {
        return 4;
      }
      if (x < y)
      {
        return 1;
      }
      if (x == y)
      {
        return 2;
      }
      return 0;
    }




                 







 












 

 
 

 


  #pragma system_include










 
 
 






 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 



 
 

  #pragma system_include



  

 

__intrinsic __nounwind int remove(const char *);
__intrinsic __nounwind int rename(const char *, const char *);









 



 
#pragma rtmodel="__dlib_file_descriptor","0"

                 









                 
typedef _Fpost fpos_t;

                 
#pragma language=save
#pragma language=extended




              
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * __gets(char *, int);
_Pragma("function_effects = no_read(1)")    __intrinsic __nounwind char * gets(char *);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind void perror(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int printf(const char *, ...);
_Pragma("function_effects = no_write(1)")    __intrinsic __nounwind int puts(const char *);
_Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int scanf(const char *, ...);
_Pragma("function_effects = no_read(1), no_write(2)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int sprintf(char *, 
                                                 const char *, ...);
_Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int sscanf(const char *, 
                                                const char *, ...);
             __intrinsic __nounwind char * tmpnam(char *);
              
             __intrinsic __nounwind int __ungetchar(int);
_Pragma("function_effects = no_write(1)")    _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vprintf(const char *,
                                                 __Va_list);
  _Pragma("function_effects = no_write(1)")    _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vscanf(const char *, 
                                                  __Va_list);
  _Pragma("function_effects = no_write(1,2)") _Pragma("__scanf_args") _Pragma("library_default_requirements _Scanf = unknown")  __intrinsic __nounwind int vsscanf(const char *, 
                                                   const char *, 
                                                   __Va_list);
_Pragma("function_effects = no_read(1), no_write(2)")  _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsprintf(char *, 
                                                   const char *,
                                                   __Va_list);
               
_Pragma("function_effects = no_write(1)")      __intrinsic __nounwind size_t __write_array(const void *, size_t, size_t);
  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int snprintf(char *, size_t, 
                                                    const char *, ...);
  _Pragma("function_effects = no_read(1), no_write(3)") _Pragma("__printf_args") _Pragma("library_default_requirements _Printf = unknown") __intrinsic __nounwind int vsnprintf(char *, size_t,
                                                     const char *, 
                                                     __Va_list);

              __intrinsic __nounwind int getchar(void);
              __intrinsic __nounwind int putchar(int);



#pragma language=restore








 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 












 


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









 
 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 






 
  typedef signed char   int8_t;
  typedef unsigned char uint8_t;

  typedef signed short int   int16_t;
  typedef unsigned short int uint16_t;

  typedef signed int   int32_t;
  typedef unsigned int uint32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int   int64_t;
  typedef unsigned long long int uint64_t;
  #pragma language=restore


 
typedef signed char   int_least8_t;
typedef unsigned char uint_least8_t;

typedef signed short int   int_least16_t;
typedef unsigned short int uint_least16_t;

typedef signed int   int_least32_t;
typedef unsigned int uint_least32_t;

 
  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_least64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_least64_t;
  #pragma language=restore



 
typedef signed int   int_fast8_t;
typedef unsigned int uint_fast8_t;

typedef signed int   int_fast16_t;
typedef unsigned int uint_fast16_t;

typedef signed int   int_fast32_t;
typedef unsigned int uint_fast32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_fast64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_fast64_t;
  #pragma language=restore

 
#pragma language=save
#pragma language=extended
typedef signed long long int   intmax_t;
typedef unsigned long long int uintmax_t;
#pragma language=restore


 
typedef signed long int   intptr_t;
typedef unsigned long int uintptr_t;

 
typedef int __data_intptr_t; typedef unsigned int __data_uintptr_t;

 

























 














 








































 



 



 
    

  


 
  


 



















 









            





 




 



 



 



 




 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMPER_IRQn                 = 2,       
  RTC_IRQn                    = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Channel1_IRQn          = 11,      
  DMA1_Channel2_IRQn          = 12,      
  DMA1_Channel3_IRQn          = 13,      
  DMA1_Channel4_IRQn          = 14,      
  DMA1_Channel5_IRQn          = 15,      
  DMA1_Channel6_IRQn          = 16,      
  DMA1_Channel7_IRQn          = 17,      





  ADC1_2_IRQn                 = 18,      
  USB_HP_CAN1_TX_IRQn         = 19,      
  USB_LP_CAN1_RX0_IRQn        = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_IRQn               = 24,      
  TIM1_UP_IRQn                = 25,      
  TIM1_TRG_COM_IRQn           = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTCAlarm_IRQn               = 41,      
  USBWakeUp_IRQn              = 42,      
  TIM8_BRK_IRQn               = 43,      
  TIM8_UP_IRQn                = 44,      
  TIM8_TRG_COM_IRQn           = 45,      
  TIM8_CC_IRQn                = 46,      
  ADC3_IRQn                   = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_IRQn                   = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Channel1_IRQn          = 56,      
  DMA2_Channel2_IRQn          = 57,      
  DMA2_Channel3_IRQn          = 58,      
  DMA2_Channel4_5_IRQn        = 59       



} IRQn_Type;



 


 




 

























 


 #pragma system_include          


 
 





 














 




 



 

 







 



 




 

























 


 #pragma system_include          



 



 

 










 



#pragma system_include









 


 
 

 

  #pragma system_include






 















 





  #pragma system_include



 



#pragma language=save
#pragma language=extended

__intrinsic __nounwind void    __no_operation(void);

__intrinsic __nounwind void    __disable_interrupt(void);
__intrinsic __nounwind void    __enable_interrupt(void);

typedef unsigned long __istate_t;

__intrinsic __nounwind __istate_t __get_interrupt_state(void);
__intrinsic __nounwind void __set_interrupt_state(__istate_t);


 
__intrinsic __nounwind unsigned long __get_PSR( void );
__intrinsic __nounwind unsigned long __get_IPSR( void );
__intrinsic __nounwind unsigned long __get_MSP( void );
__intrinsic __nounwind void          __set_MSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PSP( void );
__intrinsic __nounwind void          __set_PSP( unsigned long );
__intrinsic __nounwind unsigned long __get_PRIMASK( void );
__intrinsic __nounwind void          __set_PRIMASK( unsigned long );
__intrinsic __nounwind unsigned long __get_CONTROL( void );
__intrinsic __nounwind void          __set_CONTROL( unsigned long );


 
__intrinsic __nounwind unsigned long __get_FAULTMASK( void );
__intrinsic __nounwind void          __set_FAULTMASK(unsigned long);
__intrinsic __nounwind unsigned long __get_BASEPRI( void );
__intrinsic __nounwind void          __set_BASEPRI( unsigned long );


__intrinsic __nounwind void __disable_fiq(void);
__intrinsic __nounwind void __enable_fiq(void);


 

__intrinsic __nounwind unsigned long __SWP( unsigned long, volatile unsigned long * );
__intrinsic __nounwind unsigned char __SWPB( unsigned char, volatile unsigned char * );

typedef unsigned long __ul;


 
__intrinsic __nounwind void          __MCR( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind void          __MCR2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );

 
__intrinsic __nounwind void __LDC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);

 
__intrinsic __nounwind void __STC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);

 
__intrinsic __nounwind void __LDC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind void __STC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind unsigned long __get_APSR( void );
__intrinsic __nounwind void          __set_APSR( unsigned long );

 
__intrinsic __nounwind unsigned long __get_FPSCR( void );
__intrinsic __nounwind void __set_FPSCR( unsigned long );

 
__intrinsic __nounwind unsigned char __CLZ( unsigned long );

 

__intrinsic __nounwind int         __QCFlag( void );
__intrinsic __nounwind void __reset_QC_flag( void );

__intrinsic __nounwind signed long __SMUL( signed short, signed short );

 
__intrinsic __nounwind unsigned long __REV( unsigned long );
__intrinsic __nounwind signed long __REVSH( short );

__intrinsic __nounwind unsigned long __REV16( unsigned long );
__intrinsic __nounwind unsigned long __RBIT( unsigned long );

__intrinsic __nounwind unsigned char  __LDREXB( volatile unsigned char const * );
__intrinsic __nounwind unsigned short __LDREXH( volatile unsigned short const * );
__intrinsic __nounwind unsigned long  __LDREX ( volatile unsigned long const * );
__intrinsic __nounwind unsigned long long __LDREXD( volatile unsigned long long const * );

__intrinsic __nounwind unsigned long  __STREXB( unsigned char, volatile unsigned char * );
__intrinsic __nounwind unsigned long  __STREXH( unsigned short, volatile unsigned short * );
__intrinsic __nounwind unsigned long  __STREX ( unsigned long, volatile unsigned long * );
__intrinsic __nounwind unsigned long  __STREXD( unsigned long long, volatile unsigned long long * );

__intrinsic __nounwind void __CLREX( void );

__intrinsic __nounwind void __SEV( void );
__intrinsic __nounwind void __WFE( void );
__intrinsic __nounwind void __WFI( void );
__intrinsic __nounwind void __YIELD( void );

__intrinsic __nounwind void __PLI( volatile void const * );
__intrinsic __nounwind void __PLD( volatile void const * );
__intrinsic __nounwind void __PLDW( volatile void const * );

__intrinsic __nounwind   signed long __SSAT     (unsigned long val,
                                      unsigned int __constrange( 1, 32 ) sat );
__intrinsic __nounwind unsigned long __USAT     (unsigned long val,
                                      unsigned int __constrange( 0, 31 ) sat );



 
__intrinsic __nounwind void __DMB(void);
__intrinsic __nounwind void __DSB(void);
__intrinsic __nounwind void __ISB(void);


__intrinsic __nounwind unsigned long __get_LR(void);
__intrinsic __nounwind void __set_LR(unsigned long);

__intrinsic __nounwind unsigned long __get_SP(void);
__intrinsic __nounwind void __set_SP(unsigned long);

#pragma language=restore




#pragma diag_suppress=Pe940
#pragma diag_suppress=Pe177






static uint32_t __get_xPSR(void)
{
  return __get_PSR();    
}










static inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;
  __asm("RRX %0, %1" : "=r"(result) : "r" (value) );
  return(result);
}

static inline uint8_t __LDRBT(volatile uint8_t *addr)
{
  uint32_t result;
  __asm("LDRBT %0, [%1]" : "=r" (result) : "r" (addr) : "memory" );
  return ((uint8_t) result);
}

static inline uint16_t __LDRHT(volatile uint16_t *addr)
{
  uint32_t result;
  __asm("LDRHT %0, [%1]" : "=r" (result) : "r" (addr) : "memory" );
  return ((uint16_t) result);
}

static inline uint32_t __LDRT(volatile uint32_t *addr)
{
  uint32_t result;
  __asm("LDRT %0, [%1]" : "=r" (result) : "r" (addr) : "memory" );
  return(result);
}

static inline void __STRBT(uint8_t value, volatile uint8_t *addr)
{
  __asm("STRBT %1, [%0]" : : "r" (addr), "r" ((uint32_t)value) : "memory" );
}

static inline void __STRHT(uint16_t value, volatile uint16_t *addr)
{
  __asm("STRHT %1, [%0]" : : "r" (addr), "r" ((uint32_t)value) : "memory" );
}

static inline void __STRT(uint32_t value, volatile uint32_t *addr)
{
  __asm("STRT %1, [%0]" : : "r" (addr), "r" (value) : "memory" );
}



static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  return (op1 >> op2) | (op1 << ((sizeof(op1)*8)-op2));
}

#pragma diag_default=Pe940
#pragma diag_default=Pe177


 

   

 




 

























 


 #pragma system_include          



 



 

 

 

 







 

 






 

 

 












 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:27;               
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 








 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 




 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:15;               
    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 











 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t _reserved1:30;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 


 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 

 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 





 










 


 







 



 






 














 



 



 





 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    
        uint32_t RESERVED1[1U];
} SCnSCB_Type;

 

 




 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 




 

 

 



 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[29U];
  volatile  uint32_t IWR;                     
  volatile const  uint32_t IRR;                     
  volatile uint32_t IMCR;                    
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 

 









 

 

 

 



   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 


















 

 

 

 

 

 

 









   







 



 
typedef struct
{
  volatile uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 

 

 




 


 

 







 

 







 

 

 






 


   









 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 












 


 













 







 






 






 

 







 

 



 










 


 



 





 









 
static inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U)                      );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}






 
static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}






 
static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}








 
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}






 
static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}






 
static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}








 
static inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}








 
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) < 0)
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
}










 
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) < 0)
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4)));
  }
  else
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               >> (8U - 4)));
  }
}












 
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}





 
static inline void NVIC_SystemReset(void)
{
  __DSB();                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  __DSB();                                                           

  for(;;)                                                            
  {
    __no_operation();
  }
}

 



 





 












 
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  NVIC_SetPriority (SysTick_IRQn, (1UL << 4) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}


 



 





 

extern volatile int32_t ITM_RxBuffer;                     









 
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __no_operation();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5U)
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5U;        
  }

  return (ch);
}







 
static inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == 0x5AA55AA5U)
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 

























 



 



   
  


 




 



 




 

extern uint32_t SystemCoreClock;           



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 





 
  


   
 
 
 





 



   

 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;

typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

 


 



    



 

typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;



 

typedef struct
{
  uint32_t  RESERVED0;
  volatile uint16_t DR1;
  uint16_t  RESERVED1;
  volatile uint16_t DR2;
  uint16_t  RESERVED2;
  volatile uint16_t DR3;
  uint16_t  RESERVED3;
  volatile uint16_t DR4;
  uint16_t  RESERVED4;
  volatile uint16_t DR5;
  uint16_t  RESERVED5;
  volatile uint16_t DR6;
  uint16_t  RESERVED6;
  volatile uint16_t DR7;
  uint16_t  RESERVED7;
  volatile uint16_t DR8;
  uint16_t  RESERVED8;
  volatile uint16_t DR9;
  uint16_t  RESERVED9;
  volatile uint16_t DR10;
  uint16_t  RESERVED10; 
  volatile uint16_t RTCCR;
  uint16_t  RESERVED11;
  volatile uint16_t CR;
  uint16_t  RESERVED12;
  volatile uint16_t CSR;
  uint16_t  RESERVED13[5];
  volatile uint16_t DR11;
  uint16_t  RESERVED14;
  volatile uint16_t DR12;
  uint16_t  RESERVED15;
  volatile uint16_t DR13;
  uint16_t  RESERVED16;
  volatile uint16_t DR14;
  uint16_t  RESERVED17;
  volatile uint16_t DR15;
  uint16_t  RESERVED18;
  volatile uint16_t DR16;
  uint16_t  RESERVED19;
  volatile uint16_t DR17;
  uint16_t  RESERVED20;
  volatile uint16_t DR18;
  uint16_t  RESERVED21;
  volatile uint16_t DR19;
  uint16_t  RESERVED22;
  volatile uint16_t DR20;
  uint16_t  RESERVED23;
  volatile uint16_t DR21;
  uint16_t  RESERVED24;
  volatile uint16_t DR22;
  uint16_t  RESERVED25;
  volatile uint16_t DR23;
  uint16_t  RESERVED26;
  volatile uint16_t DR24;
  uint16_t  RESERVED27;
  volatile uint16_t DR25;
  uint16_t  RESERVED28;
  volatile uint16_t DR26;
  uint16_t  RESERVED29;
  volatile uint16_t DR27;
  uint16_t  RESERVED30;
  volatile uint16_t DR28;
  uint16_t  RESERVED31;
  volatile uint16_t DR29;
  uint16_t  RESERVED32;
  volatile uint16_t DR30;
  uint16_t  RESERVED33; 
  volatile uint16_t DR31;
  uint16_t  RESERVED34;
  volatile uint16_t DR32;
  uint16_t  RESERVED35;
  volatile uint16_t DR33;
  uint16_t  RESERVED36;
  volatile uint16_t DR34;
  uint16_t  RESERVED37;
  volatile uint16_t DR35;
  uint16_t  RESERVED38;
  volatile uint16_t DR36;
  uint16_t  RESERVED39;
  volatile uint16_t DR37;
  uint16_t  RESERVED40;
  volatile uint16_t DR38;
  uint16_t  RESERVED41;
  volatile uint16_t DR39;
  uint16_t  RESERVED42;
  volatile uint16_t DR40;
  uint16_t  RESERVED43;
  volatile uint16_t DR41;
  uint16_t  RESERVED44;
  volatile uint16_t DR42;
  uint16_t  RESERVED45;    
} BKP_TypeDef;
  


 

typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t  RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t  RESERVED2;
  volatile uint32_t FS1R;
  uint32_t  RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t  RESERVED4;
  volatile uint32_t FA1R;
  uint32_t  RESERVED5[8];
  CAN_FilterRegister_TypeDef sFilterRegister[14];
} CAN_TypeDef;



 
typedef struct
{
  volatile uint32_t CFGR;
  volatile uint32_t OAR;
  volatile uint32_t PRES;
  volatile uint32_t ESR;
  volatile uint32_t CSR;
  volatile uint32_t TXD;
  volatile uint32_t RXD;  
} CEC_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;
  volatile uint8_t  IDR;
  uint8_t   RESERVED0;
  uint16_t  RESERVED1;
  volatile uint32_t CR;
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;
} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;	
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
       uint32_t RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
       uint32_t RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
       uint32_t RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
       uint32_t RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
       uint32_t RESERVED4[5];
  volatile uint32_t MMCTGFCR;
       uint32_t RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
       uint32_t RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
       uint32_t RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
       uint32_t RESERVED8[567];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
       uint32_t RESERVED9[9];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;
} FLASH_TypeDef;



 
  
typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;



 

typedef struct
{
  volatile uint32_t BTCR[8];   
} FSMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR2; 
} FSMC_Bank2_TypeDef;  



 
  
typedef struct
{
  volatile uint32_t PCR3;
  volatile uint32_t SR3;
  volatile uint32_t PMEM3;
  volatile uint32_t PATT3;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR3; 
} FSMC_Bank3_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t PCR4;
  volatile uint32_t SR4;
  volatile uint32_t PMEM4;
  volatile uint32_t PATT4;
  volatile uint32_t PIO4; 
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;  
} AFIO_TypeDef;


 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t OAR1;
  uint16_t  RESERVED2;
  volatile uint16_t OAR2;
  uint16_t  RESERVED3;
  volatile uint16_t DR;
  uint16_t  RESERVED4;
  volatile uint16_t SR1;
  uint16_t  RESERVED5;
  volatile uint16_t SR2;
  uint16_t  RESERVED6;
  volatile uint16_t CCR;
  uint16_t  RESERVED7;
  volatile uint16_t TRISE;
  uint16_t  RESERVED8;
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;


} RCC_TypeDef;



 

typedef struct
{
  volatile uint16_t CRH;
  uint16_t  RESERVED0;
  volatile uint16_t CRL;
  uint16_t  RESERVED1;
  volatile uint16_t PRLH;
  uint16_t  RESERVED2;
  volatile uint16_t PRLL;
  uint16_t  RESERVED3;
  volatile uint16_t DIVH;
  uint16_t  RESERVED4;
  volatile uint16_t DIVL;
  uint16_t  RESERVED5;
  volatile uint16_t CNTH;
  uint16_t  RESERVED6;
  volatile uint16_t CNTL;
  uint16_t  RESERVED7;
  volatile uint16_t ALRH;
  uint16_t  RESERVED8;
  volatile uint16_t ALRL;
  uint16_t  RESERVED9;
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  uint32_t  RESERVED0[2];
  volatile const uint32_t FIFOCNT;
  uint32_t  RESERVED1[13];
  volatile uint32_t FIFO;
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SR;
  uint16_t  RESERVED2;
  volatile uint16_t DR;
  uint16_t  RESERVED3;
  volatile uint16_t CRCPR;
  uint16_t  RESERVED4;
  volatile uint16_t RXCRCR;
  uint16_t  RESERVED5;
  volatile uint16_t TXCRCR;
  uint16_t  RESERVED6;
  volatile uint16_t I2SCFGR;
  uint16_t  RESERVED7;
  volatile uint16_t I2SPR;
  uint16_t  RESERVED8;  
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SMCR;
  uint16_t  RESERVED2;
  volatile uint16_t DIER;
  uint16_t  RESERVED3;
  volatile uint16_t SR;
  uint16_t  RESERVED4;
  volatile uint16_t EGR;
  uint16_t  RESERVED5;
  volatile uint16_t CCMR1;
  uint16_t  RESERVED6;
  volatile uint16_t CCMR2;
  uint16_t  RESERVED7;
  volatile uint16_t CCER;
  uint16_t  RESERVED8;
  volatile uint16_t CNT;
  uint16_t  RESERVED9;
  volatile uint16_t PSC;
  uint16_t  RESERVED10;
  volatile uint16_t ARR;
  uint16_t  RESERVED11;
  volatile uint16_t RCR;
  uint16_t  RESERVED12;
  volatile uint16_t CCR1;
  uint16_t  RESERVED13;
  volatile uint16_t CCR2;
  uint16_t  RESERVED14;
  volatile uint16_t CCR3;
  uint16_t  RESERVED15;
  volatile uint16_t CCR4;
  uint16_t  RESERVED16;
  volatile uint16_t BDTR;
  uint16_t  RESERVED17;
  volatile uint16_t DCR;
  uint16_t  RESERVED18;
  volatile uint16_t DMAR;
  uint16_t  RESERVED19;
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;
  uint16_t  RESERVED0;
  volatile uint16_t DR;
  uint16_t  RESERVED1;
  volatile uint16_t BRR;
  uint16_t  RESERVED2;
  volatile uint16_t CR1;
  uint16_t  RESERVED3;
  volatile uint16_t CR2;
  uint16_t  RESERVED4;
  volatile uint16_t CR3;
  uint16_t  RESERVED5;
  volatile uint16_t GTPR;
  uint16_t  RESERVED6;
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;



 
  


 





 











 
  


   




 



 
  
  

 
    
 
 
 

 
 
 
 
 

 


 


 

 
 
 
 
 

 


 



 

 
 
 
 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 

 


 
 


 


 


 


 


 




 




 


 


 








 










 





 








 










 


 


   


 
 
 
 
 
 

 


















 


















 

 

 


 

 

 

 

 


 


 


 


 


 


 



 


 



 

 

 

   

 

 

 

 

   

 

 

 

 

   

 

 

 

 

   

 




 
 
 
 
 

 

 

 

 

 
 
 
 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


 


 

 

 

 

 
 
 
 

 

 

 

 

 

 
 
 
 
 

 

 

 

 

 

 

 
 
 
 
 

 

 

 





 





 





 





 





 





 





 

 

 

 

 

 

 

 

 

 


 

 

 


 

 

 

 


 

 

 

 

 
 
 
 
 

 

 





  
 





 








 










 

 

 

 

 

 

 





 






 






 





 

 

 

 

 

 
 
 
 
 

 









 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 
 

 

 

 

 

 

 

 
 
 
 
 

 




 



 






 

 

 

 








 





 








 





 

 

 

 

 

 

 

 

 

 



 


 

 
 
 
 
 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 

 

 

 

 

 
 
 
 
 

 


 



 

 
 
 
 
 

 




 




 




 




 







 







 







 







 






 






 






 






 






 






 






 

 

 

 




 




 




 




 




 




 




 

 

 
 
 
 
 

 

 



 

 



 

 

 

 

 

 

 

 

 



 

 

 

 

 

 

 
 
 
 
 

 
 







 







 







 







 







 







 







 







 
 

 

 

 


     

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 



 



 



 



 



 



 



 



 

 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 
 
 
 
 

 
 

 

 



 

 

 

 



 

 
 

 

 

 

 

 

 

 

 

   

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 

 



 

 

 

 

 

 

 







 

 
 
 
 
 

 

 


 



 

 

 

 

 

 

 
 
 
 
 

 

 

 

 

 



 

 


 
 
 
 
 

 


 



 
 
 
 
 

 


 

 

 

 

 

 


 

 

 

 

 

 

 

 

 

 




 

 

  




















  

 

 
 




























 

 


 







































 



 



 
    



 

  

 

 



 



 



 



 

typedef enum
{
  EXTI_Mode_Interrupt = 0x00,
  EXTI_Mode_Event = 0x04
}EXTIMode_TypeDef;




 

typedef enum
{
  EXTI_Trigger_Rising = 0x08,
  EXTI_Trigger_Falling = 0x0C,  
  EXTI_Trigger_Rising_Falling = 0x10
}EXTITrigger_TypeDef;



 

typedef struct
{
  uint32_t EXTI_Line;               
 
   
  EXTIMode_TypeDef EXTI_Mode;       
 

  EXTITrigger_TypeDef EXTI_Trigger; 
 

  FunctionalState EXTI_LineCmd;     
  
}EXTI_InitTypeDef;



 



 



 

                                          

                    


 



 



 



 



 

void EXTI_DeInit(void);
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);
FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line);
void EXTI_ClearFlag(uint32_t EXTI_Line);
ITStatus EXTI_GetITStatus(uint32_t EXTI_Line);
void EXTI_ClearITPendingBit(uint32_t EXTI_Line);




 



 



 

 




















 

 


 



 



 



 



 

typedef enum
{ 
  FLASH_BUSY = 1,
  FLASH_ERROR_PG,
  FLASH_ERROR_WRP,
  FLASH_COMPLETE,
  FLASH_TIMEOUT
}FLASH_Status;



 



 



 



 



 



 



 



 



 

 

 

 







 



 




 



 




 



 




 


 




 



 

 



 



 



 



 



 

 
void FLASH_SetLatency(uint32_t FLASH_Latency);
void FLASH_HalfCycleAccessCmd(uint32_t FLASH_HalfCycleAccess);
void FLASH_PrefetchBufferCmd(uint32_t FLASH_PrefetchBuffer);
void FLASH_Unlock(void);
void FLASH_Lock(void);
FLASH_Status FLASH_ErasePage(uint32_t Page_Address);
FLASH_Status FLASH_EraseAllPages(void);
FLASH_Status FLASH_EraseOptionBytes(void);
FLASH_Status FLASH_ProgramWord(uint32_t Address, uint32_t Data);
FLASH_Status FLASH_ProgramHalfWord(uint32_t Address, uint16_t Data);
FLASH_Status FLASH_ProgramOptionByteData(uint32_t Address, uint8_t Data);
FLASH_Status FLASH_EnableWriteProtection(uint32_t FLASH_Pages);
FLASH_Status FLASH_ReadOutProtection(FunctionalState NewState);
FLASH_Status FLASH_UserOptionByteConfig(uint16_t OB_IWDG, uint16_t OB_STOP, uint16_t OB_STDBY);
uint32_t FLASH_GetUserOptionByte(void);
uint32_t FLASH_GetWriteProtectionOptionByte(void);
FlagStatus FLASH_GetReadOutProtectionStatus(void);
FlagStatus FLASH_GetPrefetchBufferStatus(void);
void FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState);
FlagStatus FLASH_GetFlagStatus(uint32_t FLASH_FLAG);
void FLASH_ClearFlag(uint32_t FLASH_FLAG);
FLASH_Status FLASH_GetStatus(void);
FLASH_Status FLASH_WaitForLastOperation(uint32_t Timeout);

 
void FLASH_UnlockBank1(void);
void FLASH_LockBank1(void);
FLASH_Status FLASH_EraseAllBank1Pages(void);
FLASH_Status FLASH_GetBank1Status(void);
FLASH_Status FLASH_WaitForLastBank1Operation(uint32_t Timeout);





 



 



 

 





















 

 


 



 



 



 

                                     


 

typedef enum
{ 
  GPIO_Speed_10MHz = 1,
  GPIO_Speed_2MHz, 
  GPIO_Speed_50MHz
}GPIOSpeed_TypeDef;



 

typedef enum
{ GPIO_Mode_AIN = 0x0,
  GPIO_Mode_IN_FLOATING = 0x04,
  GPIO_Mode_IPD = 0x28,
  GPIO_Mode_IPU = 0x48,
  GPIO_Mode_Out_OD = 0x14,
  GPIO_Mode_Out_PP = 0x10,
  GPIO_Mode_AF_OD = 0x1C,
  GPIO_Mode_AF_PP = 0x18
}GPIOMode_TypeDef;




 

typedef struct
{
  uint16_t GPIO_Pin;             
 

  GPIOSpeed_TypeDef GPIO_Speed;  
 

  GPIOMode_TypeDef GPIO_Mode;    
 
}GPIO_InitTypeDef;




 

typedef enum
{ Bit_RESET = 0,
  Bit_SET
}BitAction;




 



 



 






 



 





                              


  



 





 



 





 



  




                                                 


 



 



 



 

void GPIO_DeInit(GPIO_TypeDef* GPIOx);
void GPIO_AFIODeInit(void);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_EventOutputConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_EventOutputCmd(FunctionalState NewState);
void GPIO_PinRemapConfig(uint32_t GPIO_Remap, FunctionalState NewState);
void GPIO_EXTILineConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_ETH_MediaInterfaceConfig(uint32_t GPIO_ETH_MediaInterface);




 



 



 

 






















 

 


 



 



  



  



  



  



  



 



 



 



 

 


 



 




 



 



 



 



 

void PWR_DeInit(void);
void PWR_BackupAccessCmd(FunctionalState NewState);
void PWR_PVDCmd(FunctionalState NewState);
void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel);
void PWR_WakeUpPinCmd(FunctionalState NewState);
void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry);
void PWR_EnterSTANDBYMode(void);
FlagStatus PWR_GetFlagStatus(uint32_t PWR_FLAG);
void PWR_ClearFlag(uint32_t PWR_FLAG);




 



 



 

 




















 

 


 



 



 



 

typedef struct
{
  uint32_t SYSCLK_Frequency;   
  uint32_t HCLK_Frequency;     
  uint32_t PCLK1_Frequency;    
  uint32_t PCLK2_Frequency;    
  uint32_t ADCCLK_Frequency;   
}RCC_ClocksTypeDef;



 



 



 




  



 





  



 



 



 


 




 


 





 



 



 



  



 



 



 






 



 




 


  



 



 



 



 



 



 



 




 



 




  



 

 



 



 





 



 





 



 



 



 



 

void RCC_DeInit(void);
void RCC_HSEConfig(uint32_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);



void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLK1Config(uint32_t RCC_HCLK);
void RCC_PCLK2Config(uint32_t RCC_HCLK);
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);

 void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource);

void RCC_ADCCLKConfig(uint32_t RCC_PCLK2);


void RCC_LSEConfig(uint8_t RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);


void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(uint8_t RCC_MCO);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);




 



 



  

 






















 

 


 



 



  



 



 

typedef struct
{
  uint16_t SPI_Direction;           
 

  uint16_t SPI_Mode;                
 

  uint16_t SPI_DataSize;            
 

  uint16_t SPI_CPOL;                
 

  uint16_t SPI_CPHA;                
 

  uint16_t SPI_NSS;                 

 
 
  uint16_t SPI_BaudRatePrescaler;   



 

  uint16_t SPI_FirstBit;            
 

  uint16_t SPI_CRCPolynomial;        
}SPI_InitTypeDef;



 

typedef struct
{

  uint16_t I2S_Mode;         
 

  uint16_t I2S_Standard;     
 

  uint16_t I2S_DataFormat;   
 

  uint16_t I2S_MCLKOutput;   
 

  uint32_t I2S_AudioFreq;    
 

  uint16_t I2S_CPOL;         
 
}I2S_InitTypeDef;



 



 





 
  


 



 



 



 



  



 



 



 



 



 



  



 



  



 



 



 



 



 



 



 



  



 



 



 




  



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 

void SPI_I2S_DeInit(SPI_TypeDef* SPIx);
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct);
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct);
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState);
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, uint16_t SPI_I2S_DMAReq, FunctionalState NewState);
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data);
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft);
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize);
void SPI_TransmitCRC(SPI_TypeDef* SPIx);
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState);
uint16_t SPI_GetCRC(SPI_TypeDef* SPIx, uint8_t SPI_CRC);
uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx);
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, uint16_t SPI_Direction);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);




 



 



 

 




















 

 


 



 



  



  




 

typedef struct
{
  uint16_t TIM_Prescaler;         
 

  uint16_t TIM_CounterMode;       
 

  uint16_t TIM_Period;            

  

  uint16_t TIM_ClockDivision;     
 

  uint8_t TIM_RepetitionCounter;  






 
} TIM_TimeBaseInitTypeDef;       



 

typedef struct
{
  uint16_t TIM_OCMode;        
 

  uint16_t TIM_OutputState;   
 

  uint16_t TIM_OutputNState;  

 

  uint16_t TIM_Pulse;         
 

  uint16_t TIM_OCPolarity;    
 

  uint16_t TIM_OCNPolarity;   

 

  uint16_t TIM_OCIdleState;   

 

  uint16_t TIM_OCNIdleState;  

 
} TIM_OCInitTypeDef;



 

typedef struct
{

  uint16_t TIM_Channel;      
 

  uint16_t TIM_ICPolarity;   
 

  uint16_t TIM_ICSelection;  
 

  uint16_t TIM_ICPrescaler;  
 

  uint16_t TIM_ICFilter;     
 
} TIM_ICInitTypeDef;




 

typedef struct
{

  uint16_t TIM_OSSRState;        
 

  uint16_t TIM_OSSIState;        
 

  uint16_t TIM_LOCKLevel;        
  

  uint16_t TIM_DeadTime;         

 

  uint16_t TIM_Break;            
 

  uint16_t TIM_BreakPolarity;    
 

  uint16_t TIM_AutomaticOutput;  
 
} TIM_BDTRInitTypeDef;



 


 

 

 
									                                 
 

                                             

 

 

                                         

 
                                                                                                                                                                                                                          


  



 



 



 



  



 



  



 



 



 



  



 



 



 
  


 



 



  



 



  



 



  



 



  



 



  



 



  



 



  



 



  



 



 



 



  



 



  



 



  



 



  



 



  



 



  



 




  



 



  



 



  



 




  



 



  



 



  



 



  



  


 



 



  



 



  



 



  




 




  



 



  



 



  



 

                                     


  



 



  



 



  



 



  



 



  



 

                               
                               


  



 



  



 



  



 



 



 



 



  



 

void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource);
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState);
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter);
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter);
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode);
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, uint16_t Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint16_t Autoreload);
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint16_t Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint16_t Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint16_t Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint16_t Compare4);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD);
uint16_t TIM_GetCapture1(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture2(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture3(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture4(TIM_TypeDef* TIMx);
uint16_t TIM_GetCounter(TIM_TypeDef* TIMx);
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT);




  



  



 

 




















 

 


 



 



  



  



  
  
typedef struct
{
  uint32_t USART_BaudRate;            


 

  uint16_t USART_WordLength;          
 

  uint16_t USART_StopBits;            
 

  uint16_t USART_Parity;              




 
 
  uint16_t USART_Mode;                
 

  uint16_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  
  
typedef struct
{

  uint16_t USART_Clock;   
 

  uint16_t USART_CPOL;    
 

  uint16_t USART_CPHA;    
 

  uint16_t USART_LastBit; 

 
} USART_ClockInitTypeDef;



  



  
  




  
  
                                    


  



  
  


  



  
  


  



  
  


  



  


  



  


  



 
  



  



 




 



 



  



 
  


 



 




  



 



 



 
  


 



 



  



 

                              



  



  



  



  



 

void USART_DeInit(USART_TypeDef* USARTx);
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState);
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState);
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);
void USART_SendBreak(USART_TypeDef* USARTx);
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT);




  



  



  

 






















 

 


 



 



 



 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  

 

  uint8_t NVIC_IRQChannelSubPriority;         

 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 


 



 
























 



 



 



 



 



 



 



 








 



 



 



 



 



 



 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);





 



 



 

 

 
 

 
 

 


 



 










 





 

  

 

 












 







 







 






 








 
static inline uint8_t __ffs( uint32_t value )
{
    return( uint32_t )( 32 - __CLZ( value & ( -value ) ) );
}







 
int32_t randr( int32_t min, int32_t max );









 
void memcpy1( uint8_t *dst, uint8_t *src, uint16_t size );









 
void memset1( uint8_t *dst, uint8_t value, uint16_t size );







 
int8_t Nibble2HexChar( uint8_t a );













 



 
typedef struct TimerEvent_s
{
    uint32_t Timestamp;         
    uint32_t ReloadValue;       
    _Bool IsRunning;             
    void ( *Callback )( void ); 
    struct TimerEvent_s *Next;  
}TimerEvent_t;



 
typedef uint64_t TimerTime_t;





 
void TimerSetLowPowerEnable( _Bool enable );





 
_Bool TimerGetLowPowerEnable( void );









 
void TimerInit( TimerEvent_t *obj, void ( *callback )( void ) );



 
void TimerIrqHandler( void );





 
void TimerStart( TimerEvent_t *obj );





 
void TimerStop( TimerEvent_t *obj );





 
void TimerReset( TimerEvent_t *obj );






 
void TimerSetValue( TimerEvent_t *obj, uint32_t value );





 
TimerTime_t TimerGetCurrentTime( void );



 
void TimerLowPowerHandler( void );













 



 
void Delay( float s );



 
void DelayMs( uint32_t ms );


















 













 



 
    












 





 
typedef enum 
{
    PA_0 = 0, PA_1, PA_2, PA_3, PA_4, PA_5, PA_6, PA_7, PA_8, PA_9, PA_10, PA_11, PA_12, PA_13, PA_14, PA_15, PB_0, PB_1, PB_2, PB_3, PB_4, PB_5, PB_6, PB_7, PB_8, PB_9, PB_10, PB_11, PB_12, PB_13, PB_14, PB_15, PC_0, PC_1, PC_2, PC_3, PC_4, PC_5, PC_6, PC_7, PC_8, PC_9, PC_10, PC_11, PC_12, PC_13, PC_14, PC_15, PD_0, PD_1, PD_2, PD_3, PD_4, PD_5, PD_6, PD_7, PD_8, PD_9, PD_10, PD_11, PD_12, PD_13, PD_14, PD_15, PE_0, PE_1, PE_2, PE_3, PE_4, PE_5, PE_6, PE_7, PE_8, PE_9, PE_10, PE_11, PE_12, PE_13, PE_14, PE_15, PF_0, PF_1, PF_2, PF_3, PF_4, PF_5, PF_6, PF_7, PF_8, PF_9, PF_10, PF_11, PF_12, PF_13, PF_14, PF_15, PH_0, PH_1, PH_2, PH_3, PH_4, PH_5, PH_6, PH_7, PH_8, PH_9, PH_10, PH_11, PH_12, PH_13, PH_14, PH_15,
    IOE_0, IOE_1, IOE_2, IOE_3, IOE_4, IOE_5, IOE_6, IOE_7, IOE_8, IOE_9, IOE_10, IOE_11, IOE_12, IOE_13, IOE_14, IOE_15,
    
    
    NC = (int)0xFFFFFFFF
}PinNames;



 
typedef enum
{
    PIN_INPUT = 0,
    PIN_OUTPUT,
    PIN_ALTERNATE_FCT,
    PIN_ANALOGIC
}PinModes;



 
typedef enum
{
    PIN_NO_PULL = 0,
    PIN_PULL_UP,
    PIN_PULL_DOWN
}PinTypes;



 
typedef enum
{
    PIN_PUSH_PULL = 0,
    PIN_OPEN_DRAIN
}PinConfigs;



 
typedef enum
{
    NO_IRQ = 0,
    IRQ_RISING_EDGE,
    IRQ_FALLING_EDGE,  
    IRQ_RISING_FALLING_EDGE
}IrqModes;



 
typedef enum
{
    IRQ_VERY_LOW_PRIORITY = 0,
    IRQ_LOW_PRIORITY,
    IRQ_MEDIUM_PRIORITY,  
    IRQ_HIGH_PRIORITY,
    IRQ_VERY_HIGH_PRIORITY
}IrqPriorities;



 
typedef struct 
{
    PinNames  pin;
    uint16_t pinIndex;
    void *port;
    uint16_t portIndex;
}Gpio_t;



 
typedef void( GpioIrqHandler )( void );











 
void GpioInit( Gpio_t *obj, PinNames pin, PinModes mode, PinConfigs config, PinTypes type, uint32_t value );











 
void GpioSetInterrupt( Gpio_t *obj, IrqModes irqMode, IrqPriorities irqPriority, GpioIrqHandler *irqHandler );





 
void GpioRemoveInterrupt( Gpio_t *obj );






 
void GpioWrite( Gpio_t *obj, uint32_t value );






 
uint32_t GpioRead( Gpio_t *obj );













 













 



 
struct Spi_s
{
    SPI_TypeDef *Spi;
    Gpio_t Mosi;
    Gpio_t Miso;
    Gpio_t Sclk;
    Gpio_t Nss;
};




 
typedef struct Spi_s Spi_t;












 
void SpiInit( Spi_t *obj, PinNames mosi, PinNames miso, PinNames sclk, PinNames nss );





 
void SpiDeInit( Spi_t *obj );











 
void SpiFormat( Spi_t *obj, int8_t bits, int8_t cpol, int8_t cpha, int8_t slave );






 
void SpiFrequency( Spi_t *obj, uint32_t hz );







 
uint16_t SpiInOut( Spi_t *obj, uint16_t outData );













 



 
typedef struct
{
    I2C_TypeDef *I2c;
    Gpio_t Scl;
    Gpio_t Sda;
}I2c_t;







 
void I2cInit( I2c_t *obj, PinNames scl, PinNames sda );





 
void I2cDeInit( I2c_t *obj );





 
void I2cResetBus( I2c_t *obj );








 
uint8_t I2cWrite( I2c_t *obj, uint8_t deviceAddr, uint16_t addr, uint8_t data );









 
uint8_t I2cWriteBuffer( I2c_t *obj, uint8_t deviceAddr, uint16_t addr, uint8_t *buffer, uint16_t size );








 
uint8_t I2cRead( I2c_t *obj, uint8_t deviceAddr, uint16_t addr, uint8_t *data );









 
uint8_t I2cReadBuffer( I2c_t *obj, uint8_t deviceAddr, uint16_t addr, uint8_t *buffer, uint16_t size );













 



 
typedef enum
{
    MODEM_FSK = 0,
    MODEM_LORA,
}RadioModems_t;



 
typedef enum
{
    RF_IDLE = 0,
    RF_RX_RUNNING,
    RF_TX_RUNNING,
    RF_CAD,
}RadioState_t;



 
typedef struct
{
    

 
    void    ( *TxDone )( void );
    

 
    void    ( *TxTimeout )( void );
    








 
    void    ( *RxDone )( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr );
    

 
    void    ( *RxTimeout )( void );
    

 
    void    ( *RxError )( void );
    



 
    void ( *FhssChangeChannel )( uint8_t currentChannel );

    



 
    void ( *CadDone ) ( _Bool channelActivityDetected );
}RadioEvents_t;



 
struct Radio_s
{
    



 
    void    ( *Init )( RadioEvents_t *events );
    



 
    RadioState_t ( *Status )( void );
    



 
    void    ( *SetModem )( RadioModems_t modem );
    



 
    void    ( *SetChannel )( uint32_t freq );
    







 
    _Bool    ( *IsChannelFree )( RadioModems_t modem, uint32_t freq, int16_t rssiThresh );
    








 
    uint32_t ( *Random )( void );
    





































 
    void    ( *SetRxConfig )( RadioModems_t modem, uint32_t bandwidth,
                              uint32_t datarate, uint8_t coderate,
                              uint32_t bandwidthAfc, uint16_t preambleLen,
                              uint16_t symbTimeout, _Bool fixLen,
                              uint8_t payloadLen,
                              _Bool crcOn, _Bool FreqHopOn, uint8_t HopPeriod,
                              _Bool iqInverted, _Bool rxContinuous );
    

































 
    void    ( *SetTxConfig )( RadioModems_t modem, int8_t power, uint32_t fdev, 
                              uint32_t bandwidth, uint32_t datarate,
                              uint8_t coderate, uint16_t preambleLen,
                              _Bool fixLen, _Bool crcOn, _Bool FreqHopOn,
                              uint8_t HopPeriod, _Bool iqInverted, uint32_t timeout );
    




 
    _Bool    ( *CheckRfFrequency )( uint32_t frequency );
    








 
    uint32_t  ( *TimeOnAir )( RadioModems_t modem, uint8_t pktLen );
    





 
    void    ( *Send )( uint8_t *buffer, uint8_t size );
    

 
    void    ( *Sleep )( void );
    

 
    void    ( *Standby )( void );
    



 
    void    ( *Rx )( uint32_t timeout );
    

 
    void    ( *StartCad )( void );
    



 
    int16_t ( *Rssi )( RadioModems_t modem );
    




 
    void    ( *Write )( uint8_t addr, uint8_t data );
    




 
    uint8_t ( *Read )( uint8_t addr );
    





 
    void    ( *WriteBuffer )( uint8_t addr, uint8_t *buffer, uint8_t size );
    





 
    void    ( *ReadBuffer )( uint8_t addr, uint8_t *buffer, uint8_t size );
};






 
extern const struct Radio_s Radio;













 













 





 
















 



 



 






 



 



 




 


 


 




 




 




 








 




 



 



 



 




 




 





 



 





 





 
 


 



 



 



 





 



 



 



 



 




 



 








 



 








 
 







 



 



 



 




 









 





 




 



 



 








 



 




 










 










 






 





 



 



 



 



 



 



 



 



 



 



 













 





 














 



 



 







 



 


 


 




 




 





 



 



 



 



 



 



 



 



 



 



 



 
 


 



 



 



 
                                                    




 
                                                    
                                                    



 


 



 



 



 



 



 



 



 



 




 



 



 



 



 



 



 



 



 






 





 



 



 



 



 



 



 



 



 



 



 




 



 
typedef struct
{
    int8_t   Power;
    uint32_t Fdev;
    uint32_t Bandwidth;
    uint32_t BandwidthAfc;
    uint32_t Datarate;
    uint16_t PreambleLen;
    _Bool     FixLen;
    uint8_t  PayloadLen;
    _Bool     CrcOn;
    _Bool     IqInverted;
    _Bool     RxContinuous;
    uint32_t TxTimeout;
}RadioFskSettings_t;



 
typedef struct
{
    uint8_t  PreambleDetected;
    uint8_t  SyncWordDetected;
    int8_t   RssiValue;
    int32_t  AfcValue;
    uint8_t  RxGain;
    uint16_t Size;
    uint16_t NbBytes;
    uint8_t  FifoThresh;
    uint8_t  ChunkSize;
}RadioFskPacketHandler_t;



 
typedef struct
{
    int8_t   Power;
    uint32_t Bandwidth;
    uint32_t Datarate;
    _Bool     LowDatarateOptimize;
    uint8_t  Coderate;
    uint16_t PreambleLen;
    _Bool     FixLen;
    uint8_t  PayloadLen;
    _Bool     CrcOn;
    _Bool     FreqHopOn;
    uint8_t  HopPeriod;
    _Bool     IqInverted;
    _Bool     RxContinuous;
    uint32_t TxTimeout;
}RadioLoRaSettings_t;



 
typedef struct
{
    int8_t SnrValue;
    int16_t RssiValue;
    uint8_t Size;
}RadioLoRaPacketHandler_t;



 
typedef struct
{
    RadioState_t             State;
    RadioModems_t            Modem;
    uint32_t                 Channel;
    RadioFskSettings_t       Fsk;
    RadioFskPacketHandler_t  FskPacketHandler;
    RadioLoRaSettings_t      LoRa;
    RadioLoRaPacketHandler_t LoRaPacketHandler;
}RadioSettings_t;



 
typedef struct SX1276_s
{
    Gpio_t        Reset;
    Gpio_t        DIO0;
    Gpio_t        DIO1;
    Gpio_t        DIO2;
    Gpio_t        DIO3;
    Gpio_t        DIO4;
    Gpio_t        DIO5;
    Spi_t         Spi;
    uint8_t       RxTx;
    RadioSettings_t Settings;
}SX1276_t;



 
typedef void ( DioIrqHandler )( void );



 






 





 
void SX1276Init( RadioEvents_t *events );





 
RadioState_t SX1276GetStatus( void );





 
void SX1276SetModem( RadioModems_t modem );





 
void SX1276SetChannel( uint32_t freq );









 
_Bool SX1276IsChannelFree( RadioModems_t modem, uint32_t freq, int16_t rssiThresh );










 
uint32_t SX1276Random( void );









































 
void SX1276SetRxConfig( RadioModems_t modem, uint32_t bandwidth,
                         uint32_t datarate, uint8_t coderate,
                         uint32_t bandwidthAfc, uint16_t preambleLen,
                         uint16_t symbTimeout, _Bool fixLen,
                         uint8_t payloadLen,
                         _Bool crcOn, _Bool FreqHopOn, uint8_t HopPeriod,
                         _Bool iqInverted, _Bool rxContinuous );





































 
void SX1276SetTxConfig( RadioModems_t modem, int8_t power, uint32_t fdev, 
                        uint32_t bandwidth, uint32_t datarate,
                        uint8_t coderate, uint16_t preambleLen,
                        _Bool fixLen, _Bool crcOn, _Bool FreqHopOn,
                        uint8_t HopPeriod, _Bool iqInverted, uint32_t timeout );










 
uint32_t SX1276GetTimeOnAir( RadioModems_t modem, uint8_t pktLen );







 
void SX1276Send( uint8_t *buffer, uint8_t size );
    


 
void SX1276SetSleep( void );



 
void SX1276SetStby( void );




 
void SX1276SetRx( uint32_t timeout );



 
void SX1276StartCad( void );





 
int16_t SX1276ReadRssi( RadioModems_t modem );






 
void SX1276Write( uint8_t addr, uint8_t data );






 
uint8_t SX1276Read( uint8_t addr );







 
void SX1276WriteBuffer( uint8_t addr, uint8_t *buffer, uint8_t size );







 
void SX1276ReadBuffer( uint8_t addr, uint8_t *buffer, uint8_t size );














 



 








 
void RtcInit( void );



 
void RtcStopTimer( void );





 
uint32_t RtcGetMinimumTimeout( void );







 
void RtcSetTimeout( uint32_t timeout );





 
TimerTime_t RtcGetTimerValue( void );





 
uint32_t RtcGetTimerElapsedTime( void );





 
void BlockLowPowerDuringTask ( _Bool Status );



 
void RtcEnterLowPowerStopMode( void );



 
void RtcRecoverMcuStatus( void );





 
void RtcDelayMs ( uint32_t delay );













 



 








 
void TimerHwInit( void );



 
void TimerHwDeInit( void );





 
uint32_t TimerHwGetMinimumTimeout( void );





 
void TimerHwStart( uint32_t rtcCounter );





 
void TimerHwDelayMs( uint32_t delay );



 
void TimerHwStop( void );



 
TimerTime_t TimerHwGetTimerValue( void );



 
TimerTime_t TimerHwGetTime( void );



 
TimerTime_t TimerHwGetElapsedTime( void );



 
void TimerHwEnterLowPowerStopMode( void );













 





 



 
void SX1276IoInit( void );





 
void SX1276IoIrqInit( DioIrqHandler **irqHandlers );





 
void SX1276IoDeInit( void );






 
uint8_t SX1276GetPaSelect( uint32_t channel );





 
void SX1276SetAntSwLowPower( _Bool status );






 
void SX1276SetAntSw( uint8_t rxTx );






 
_Bool SX1276CheckRfFrequency( uint32_t frequency );



 
extern SX1276_t SX1276;














 













 

 
 





 



 
typedef struct Fifo_s
{
    uint16_t Begin;
    uint16_t End;
    uint8_t *Data;
    uint16_t Size;
}Fifo_t;







 
void FifoInit( Fifo_t *fifo, uint8_t *buffer, uint16_t size );






 
void FifoPush( Fifo_t *fifo, uint8_t data );






 
uint8_t FifoPop( Fifo_t *fifo );





 
void FifoFlush( Fifo_t *fifo );






 
_Bool IsFifoEmpty( Fifo_t *fifo );






 
_Bool IsFifoFull( Fifo_t *fifo );




 
typedef enum
{
    UART_NOTIFY_TX,
    UART_NOTIFY_RX
}UartNotifyId_t;



 
typedef struct
{
    uint8_t UartId;
    _Bool IsInitialized;
    Gpio_t Tx;
    Gpio_t Rx;
    Fifo_t FifoTx;
    Fifo_t FifoRx;
    

 
    void ( *IrqNotify )( UartNotifyId_t id );
}Uart_t;



 
typedef enum
{
    TX_ONLY = 0,
    RX_ONLY,
    RX_TX
}UartMode_t;



 
typedef enum
{
    UART_8_BIT = 0,
    UART_9_BIT
}WordLength_t;



 
typedef enum
{
    UART_1_STOP_BIT = 0,
    UART_0_5_STOP_BIT,
    UART_2_STOP_BIT,
    UART_1_5_STOP_BIT
}StopBits_t;



 
typedef enum
{
    NO_PARITY = 0,
    EVEN_PARITY,
    ODD_PARITY
}Parity_t;



 
typedef enum
{
    NO_FLOW_CTRL = 0,
    RTS_FLOW_CTRL,
    CTS_FLOW_CTRL,
    RTS_CTS_FLOW_CTRL
}FlowCtrl_t;







 
void UartInit( Uart_t *obj, uint8_t uartId, PinNames tx, PinNames rx );













 
void UartConfig( Uart_t *obj, UartMode_t mode, uint32_t baudrate, WordLength_t wordLength, StopBits_t stopBits, Parity_t parity, FlowCtrl_t flowCtrl );





 
void UartDeInit( Uart_t *obj );







 
uint8_t UartPutChar( Uart_t *obj, uint8_t data );







 
uint8_t UartGetChar( Uart_t *obj, uint8_t *data );








 
uint8_t UartPutBuffer( Uart_t *obj, uint8_t *buffer, uint16_t size );









 
uint8_t UartGetBuffer( Uart_t *obj, uint8_t *buffer, uint16_t size, uint16_t *nbReadBytes );













 


typedef enum
{
    UART_1,
    UART_2,
    UART_USB_CDC = 255,
}UartId_t;







 
void UartMcuInit( Uart_t *obj, uint8_t uartId, PinNames tx, PinNames rx );











 
void UartMcuConfig( Uart_t *obj, UartMode_t mode, uint32_t baudrate, WordLength_t wordLength, StopBits_t stopBits, Parity_t parity, FlowCtrl_t flowCtrl );





 
void UartMcuDeInit( Uart_t *obj );







 
uint8_t UartMcuPutChar( Uart_t *obj, uint8_t data );







 
uint8_t UartMcuGetChar( Uart_t *obj, uint8_t *data );





















  

 


 













 


 
  


  



 
  


   



  


 
  


 


   



  



  
  


 


 


 


  
  




 


 
void sFLASH_DeInit(void);
void sFLASH_Init(void);
void sFLASH_EraseSector(uint32_t SectorAddr);
void sFLASH_EraseBulk(void);
void sFLASH_WritePage(uint8_t* pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite);
void sFLASH_WriteBuffer(uint8_t* pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite);
void sFLASH_ReadBuffer(uint8_t* pBuffer, uint32_t ReadAddr, uint16_t NumByteToRead);
uint32_t sFLASH_ReadID(void);
void sFLASH_StartReadSequence(uint32_t ReadAddr);



 
uint8_t sFLASH_ReadByte(void);
uint8_t sFLASH_SendByte(uint8_t byte);
uint16_t sFLASH_SendHalfWord(uint16_t HalfWord);
void sFLASH_WriteEnable(void);
void sFLASH_WaitForWriteEnd(void);




 



 



 



  



   

 
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


enum _ev_t { EV_SCAN_TIMEOUT=1, EV_BEACON_FOUND,
             EV_BEACON_MISSED, EV_BEACON_TRACKED, EV_JOINING,
             EV_JOINED, EV_RFU1, EV_JOIN_FAILED, EV_REJOIN_FAILED,
             EV_TXCOMPLETE, EV_LOST_TSYNC, EV_RESET,
             EV_RXCOMPLETE, EV_LINK_DEAD, EV_LINK_ALIVE };
typedef enum _ev_t ev_t;


 



 




 



 



 










 
extern Gpio_t Led1;
extern Gpio_t Led2;
extern Gpio_t Led3;



 
extern Gpio_t Sel1;
extern Gpio_t Sel2;
extern Gpio_t Sel3;
extern Gpio_t Sel4;



 



 

extern Uart_t Uart1;	


 
void BoardInitMcu( void );



 
void BoardInitPeriph( void );




 
void BoardDeInitMcu( void );





 
uint8_t BoardMeasureBatterieLevel( void );





 
void BoardGetUniqueId( uint8_t *id );














 









 











 
void LoRaMacComputeMic( uint8_t *buffer, uint16_t size, uint8_t *key, uint32_t address, uint8_t dir, uint32_t sequenceCounter, uint32_t *mic );











 
void LoRaMacPayloadEncrypt( uint8_t *buffer, uint16_t size, uint8_t *key, uint32_t address, uint8_t dir, uint32_t sequenceCounter, uint8_t *encBuffer );











 
void LoRaMacPayloadDecrypt( uint8_t *buffer, uint16_t size, uint8_t *key, uint32_t address, uint8_t dir, uint32_t sequenceCounter, uint8_t *decBuffer );








 
void LoRaMacJoinComputeMic( uint8_t *buffer, uint16_t size, const uint8_t *key, uint32_t *mic );








 
void LoRaMacJoinDecrypt( uint8_t *buffer, uint16_t size, const uint8_t *key, uint8_t *decBuffer );









 
void LoRaMacJoinComputeSKeys( const uint8_t *key, uint8_t *appNonce, uint16_t devNonce, uint8_t *nwkSKey, uint8_t *appSKey );













 














 



 



 



 



 



 



 



 






 



 



 



 



 




 



 
typedef enum
{
    BAND_G1_0,
    BAND_G1_1,
    BAND_G1_2,
    BAND_G1_3,
    BAND_G1_4,
}BandId_t;





 






 



 




 





 



 



 



 





 





 



 



 



 



 




 



 



 



 
typedef enum
{
    CLASS_A,
    CLASS_B,
    CLASS_C,
}DeviceClass_t;



 
typedef union
{
    int8_t Value;
    struct
    {
        int8_t Min : 4;
        int8_t Max : 4;
    }__packed Fields;
}__packed DrRange_t;

typedef struct
{
    uint16_t DCycle;
    int8_t TxMaxPower;
    uint64_t LastTxDoneTime;
    uint64_t TimeOff;
}__packed Band_t;

typedef struct
{
    uint32_t Frequency; 
    DrRange_t DrRange;  
                        
    uint8_t Band;       
}__packed ChannelParams_t;

typedef struct
{
    uint32_t Frequency; 
    uint8_t  Datarate;  
}__packed Rx2ChannelParams_t;

typedef struct MulticastParams_s
{
    uint32_t Address;
    uint8_t NwkSKey[16];
    uint8_t AppSKey[16];
    uint32_t DownLinkCounter;
    struct MulticastParams_s *Next;
}__packed MulticastParams_t;



 
typedef enum
{
    FRAME_TYPE_JOIN_REQ              = 0x00,
    FRAME_TYPE_JOIN_ACCEPT           = 0x01,
    FRAME_TYPE_DATA_UNCONFIRMED_UP   = 0x02,
    FRAME_TYPE_DATA_UNCONFIRMED_DOWN = 0x03,
    FRAME_TYPE_DATA_CONFIRMED_UP     = 0x04,
    FRAME_TYPE_DATA_CONFIRMED_DOWN   = 0x05,
    FRAME_TYPE_RFU                   = 0x06,
    FRAME_TYPE_PROPRIETARY           = 0x07,
}__packed LoRaMacFrameType_t;



 
typedef enum
{
    MOTE_MAC_LINK_CHECK_REQ          = 0x02,
    MOTE_MAC_LINK_ADR_ANS            = 0x03,
    MOTE_MAC_DUTY_CYCLE_ANS          = 0x04,
    MOTE_MAC_RX_PARAM_SETUP_ANS      = 0x05,
    MOTE_MAC_DEV_STATUS_ANS          = 0x06,
    MOTE_MAC_NEW_CHANNEL_ANS         = 0x07,
    MOTE_MAC_RX_TIMING_SETUP_ANS     = 0x08,
}__packed LoRaMacMoteCmd_t;



 
typedef enum
{
    SRV_MAC_LINK_CHECK_ANS           = 0x02,
    SRV_MAC_LINK_ADR_REQ             = 0x03,
    SRV_MAC_DUTY_CYCLE_REQ           = 0x04,
    SRV_MAC_RX_PARAM_SETUP_REQ       = 0x05,
    SRV_MAC_DEV_STATUS_REQ           = 0x06,
    SRV_MAC_NEW_CHANNEL_REQ          = 0x07,
    SRV_MAC_RX_TIMING_SETUP_REQ      = 0x08,
}__packed LoRaMacSrvCmd_t;



 
typedef enum
{
    BAT_LEVEL_EXT_SRC                = 0x00,
    BAT_LEVEL_EMPTY                  = 0x01,
    BAT_LEVEL_FULL                   = 0xFE,
    BAT_LEVEL_NO_MEASURE             = 0xFF,
}__packed LoRaMacBatteryLevel_t;



 
typedef union
{
    uint8_t Value;
    struct
    {
        uint8_t Major           : 2;
        uint8_t RFU             : 3;
        uint8_t MType           : 3;
    }__packed Bits;
}__packed LoRaMacHeader_t;



 
typedef union
{
    uint8_t Value;
    struct
    {
        uint8_t FOptsLen        : 4;
        uint8_t FPending        : 1;
        uint8_t Ack             : 1;
        uint8_t AdrAckReq       : 1;
        uint8_t Adr             : 1;
    }__packed Bits;
}__packed LoRaMacFrameCtrl_t;



 
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
    }__packed Bits;
}__packed LoRaMacEventFlags_t;

typedef enum
{
    LORAMAC_EVENT_INFO_STATUS_OK = 0,
    LORAMAC_EVENT_INFO_STATUS_ERROR,
    LORAMAC_EVENT_INFO_STATUS_TX_TIMEOUT,
    LORAMAC_EVENT_INFO_STATUS_RX2_TIMEOUT,
    LORAMAC_EVENT_INFO_STATUS_RX2_ERROR,
    LORAMAC_EVENT_INFO_STATUS_JOIN_FAIL,
    LORAMAC_EVENT_INFO_STATUS_DOWNLINK_FAIL,
    LORAMAC_EVENT_INFO_STATUS_ADDRESS_FAIL,
    LORAMAC_EVENT_INFO_STATUS_MIC_FAIL,
}__packed LoRaMacEventInfoStatus_t;



 
typedef struct
{
    LoRaMacEventInfoStatus_t Status;
    _Bool TxAckReceived;
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
}__packed LoRaMacEventInfo_t;




 
typedef struct sLoRaMacEvent
{
    




 
    void ( *MacEvent )( LoRaMacEventFlags_t *flags, LoRaMacEventInfo_t *info );
}__packed LoRaMacEvent_t;






 
void LoRaMacInit( LoRaMacEvent_t *events );





 
void LoRaMacSetAdrOn( _Bool enable );















 
void LoRaMacInitNwkIds( uint32_t netID, uint32_t devAddr, uint8_t *nwkSKey, uint8_t *appSKey );



 
void LoRaMacMulticastChannelAdd( MulticastParams_t *channelParam );



 
void LoRaMacMulticastChannelRemove( MulticastParams_t *channelParam );









 
uint8_t LoRaMacJoinReq( uint8_t *devEui, uint8_t *appEui, uint8_t *appKey );





 
uint8_t LoRaMacLinkCheckReq( void );












 
uint8_t LoRaMacSendFrame( uint8_t fPort, void *fBuffer, uint16_t fBufferSize );














 
uint8_t LoRaMacSendConfirmedFrame( uint8_t fPort, void *fBuffer, uint16_t fBufferSize, uint8_t nbRetries );





 













 
uint8_t LoRaMacSend( LoRaMacHeader_t *macHdr, uint8_t *fOpts, uint8_t fPort, void *fBuffer, uint16_t fBufferSize );













 
uint8_t LoRaMacPrepareFrame( ChannelParams_t channel,LoRaMacHeader_t *macHdr, LoRaMacFrameCtrl_t *fCtrl, uint8_t *fOpts, uint8_t fPort, void *fBuffer, uint16_t fBufferSize );









 
uint8_t LoRaMacSendFrameOnChannel( ChannelParams_t channel );













 
uint8_t LoRaMacSendOnChannel( ChannelParams_t channel, LoRaMacHeader_t *macHdr, LoRaMacFrameCtrl_t *fCtrl, uint8_t *fOpts, uint8_t fPort, void *fBuffer, uint16_t fBufferSize );



 
void LoRaMacSetDeviceClass( DeviceClass_t deviceClass );



 
void LoRaMacSetPublicNetwork( _Bool enable );



 
void LoRaMacSetDutyCycleOn( _Bool enable );



 
void LoRaMacSetChannel( uint8_t id, ChannelParams_t params );



 
void LoRaMacSetRx2Channel( Rx2ChannelParams_t param );



 
void LoRaMacSetChannelsMask( uint16_t mask );



 
void LoRaMacSetChannelsNbRep( uint8_t nbRep );



 
void LoRaMacSetMaxRxWindow( uint32_t delay );



 
void LoRaMacSetReceiveDelay1( uint32_t delay );



 
void LoRaMacSetReceiveDelay2( uint32_t delay );



 
void LoRaMacSetJoinAcceptDelay1( uint32_t delay );



 
void LoRaMacSetJoinAcceptDelay2( uint32_t delay );





 
void LoRaMacSetChannelsDatarate( int8_t datarate );







 
void LoRaMacSetChannelsTxPower( int8_t txPower );





 
void LoRaMacTestRxWindowsOn( _Bool enable );



 
uint32_t LoRaMacGetUpLinkCounter( void );



 
uint32_t LoRaMacGetDownLinkCounter( void );





 
void LoRaMacSetMicTest( uint16_t txPacketCounter );




 

uint16_t BufferSize__ = 64;
uint8_t Buffer__[64];


 
static uint8_t *LoRaMacDevEui;



 
static uint8_t *LoRaMacAppEui;



 
static uint8_t *LoRaMacAppKey;



 
static uint8_t LoRaMacNwkSKey[] = 
{ 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};



 
static uint8_t LoRaMacAppSKey[] = 
{ 
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};




 
static uint16_t LoRaMacDevNonce;



 
static uint32_t LoRaMacNetID;



 
static uint32_t LoRaMacDevAddr;



 
static MulticastParams_t *MulticastChannels = 0;



 
static DeviceClass_t LoRaMacDeviceClass;



 
static _Bool PublicNetwork;



 
static uint8_t LoRaMacBuffer[64];



 
static uint16_t LoRaMacBufferPktLen = 0;



 
static uint8_t LoRaMacPayload[64];
static uint8_t LoRaMacRxPayload[64];




 
static uint32_t UpLinkCounter = 1;




 
static uint32_t DownLinkCounter = 0;




 
static _Bool IsUpLinkCounterFixed = 0;



 
static _Bool IsRxWindowsEnabled = 1;



 
static _Bool IsLoRaMacNetworkJoined = 0;



 
static _Bool AdrCtrlOn = 0;



 
static uint32_t AdrAckCounter = 0;




 
static _Bool NodeAckRequested = 0;




 
static _Bool SrvAckRequested = 0;



 
static _Bool MacCommandsInNextTx = 0;



 
static uint8_t MacCommandsBufferIndex = 0;



 
static uint8_t MacCommandsBuffer[15];



 
const uint8_t Datarates[]  = { 12, 11, 10,  9,  8,  7,  7, 50 };



 
const int8_t TxPowers[]    = { 20, 14, 11,  8,  5,  2 };



 
static Band_t Bands[5] =
{
    { 100 , 1, 0, 0 },
    { 100 , 1, 0, 0 },
    { 1000, 1, 0, 0 },
    { 10 , 1, 0, 0 },
    { 100 , 1, 0, 0 },
};



 

static ChannelParams_t Channels[16] =
{
    { 868100000, { ( ( 5 << 4 ) | 0 ) }, 1 },
    { 868300000, { ( ( 6 << 4 ) | 0 ) }, 1 },
    { 868500000, { ( ( 5 << 4 ) | 0 ) }, 1 },
    { 867100000, { ( ( 5 << 4 ) | 0 ) }, 0 },
    { 867300000, { ( ( 5 << 4 ) | 0 ) }, 0 },
    { 867500000, { ( ( 5 << 4 ) | 0 ) }, 0 },
    { 867700000, { ( ( 5 << 4 ) | 0 ) }, 0 },
    { 867900000, { ( ( 5 << 4 ) | 0 ) }, 0 },
    { 868800000, { ( ( 7 << 4 ) | 7 ) }, 2 },
};



 
static Rx2ChannelParams_t Rx2Channel = { 869525000, 3 };



 
static uint8_t Rx1DrOffset = 0;



 
static uint16_t ChannelsMask;



 
static int8_t ChannelsTxPower = 1;



 
static int8_t ChannelsDatarate = 0;



 
static int8_t ChannelsDefaultDatarate = 0;



 
static uint8_t ChannelsNbRep = 1; 



 
static uint8_t ChannelsNbRepCounter = 0;




 
static uint8_t MaxDCycle = 0;



 
static uint16_t AggregatedDCycle;
static uint64_t AggregatedLastTxDoneTime;
static uint64_t AggregatedTimeOff;



 
static _Bool DutyCycleOn;



 
static uint8_t Channel;



 
enum LoRaMacState_e
{
    MAC_IDLE          = 0x00000000,
    MAC_TX_RUNNING    = 0x00000001,
    MAC_RX            = 0x00000002,
    MAC_ACK_REQ       = 0x00000004,
    MAC_ACK_RETRY     = 0x00000008,
    MAC_CHANNEL_CHECK = 0x00000010,
};



 
uint32_t LoRaMacState = MAC_IDLE;



 
static TimerEvent_t MacStateCheckTimer;



 
static LoRaMacEvent_t *LoRaMacEvents;



 
LoRaMacEventFlags_t LoRaMacEventFlags;



 
LoRaMacEventInfo_t LoRaMacEventInfo;



 
static RadioEvents_t RadioEvents;



 
static TimerEvent_t ChannelCheckTimer;



 
static TimerEvent_t TxDelayedTimer;



 
static TimerEvent_t RxWindowTimer1;
static TimerEvent_t RxWindowTimer2;



 
static uint32_t ReceiveDelay1;
static uint32_t ReceiveDelay2;
static uint32_t JoinAcceptDelay1;
static uint32_t JoinAcceptDelay2;





 
static uint32_t RxWindow1Delay;
static uint32_t RxWindow2Delay;



 
static uint32_t MaxRxWindow;



 
static TimerEvent_t AckTimeoutTimer;



 
static uint8_t AckTimeoutRetries = 1;



 
static uint8_t AckTimeoutRetriesCounter = 1;



 
static _Bool AckTimeoutRetry = 0;



 
TimerTime_t TxTimeOnAir = 0;



 
static void OnRadioTxDone( void );



 
static void OnRadioRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr );



 
static void OnRadioTxTimeout( void );



 
static void OnRadioRxError( void );



 
static void OnRadioRxTimeout( void );



 
static void OnMacStateCheckTimerEvent( void );



 
static void OnTxDelayedTimerEvent( void );



 
static void OnChannelCheckTimerEvent( void );



 
static void OnRxWindow1TimerEvent( void );



 
static void OnRxWindow2TimerEvent( void );



 
static void OnAckTimeoutTimerEvent( void );





 
static uint8_t LoRaMacSetNextChannel( void )
{
    
   uint8_t i = 0;
    uint8_t j = 0;
    uint8_t channelNext = Channel;
    uint8_t nbEnabledChannels = 0;
    uint8_t enabledChannels[16];
    uint64_t curTime = TimerGetCurrentTime( );

    memset( enabledChannels, 0, 16 );

    
    if( AggregatedTimeOff < ( curTime - AggregatedLastTxDoneTime ) )
    {
        AggregatedTimeOff = 0;
    }

    
    uint64_t minTime = 0xFFFFFFFFFFFFFFFF;
    
    for( i = 0; i < 5; i++ )
    {
        
        if( DutyCycleOn == 1 )
        {
            if( Bands[i].TimeOff < ( curTime - Bands[i].LastTxDoneTime ) )
            {
                Bands[i].TimeOff = 0;
            }
            if( Bands[i].TimeOff != 0 )
            {
                minTime = ( ( ( Bands[i]. TimeOff ) < ( minTime ) ) ? ( Bands[i]. TimeOff ) : ( minTime ) );
            }
        }
        else
        {
            minTime = 0;
            Bands[i].TimeOff = 0;
        }
    }

    
    
    for( i = 0; i < 16; i++ )
    {
        
        if( ( ( 1 << i ) & ChannelsMask ) != 0 )
        {
            if( Channels[i].Frequency == 0 )
            { 
                
                continue;
            }
            if( ( ( Channels[i].DrRange.Fields.Min <= ChannelsDatarate ) &&
                  ( ChannelsDatarate <= Channels[i].DrRange.Fields.Max ) ) == 0 )
            { 
                
                continue;
            }
            if( Bands[Channels[i].Band].TimeOff > 0 )
            { 
                
                continue;
            }
            if( AggregatedTimeOff > 0 )
            { 
                
                continue;
            }
            enabledChannels[nbEnabledChannels++] = i;
        }
    }
    if( nbEnabledChannels > 0 )
    {
        
        for( i = 0, j = randr( 0, nbEnabledChannels - 1 ); i < 16; i++ )
        {
            channelNext = enabledChannels[j];
            j = ( j + 1 ) % nbEnabledChannels;

            if( Radio.IsChannelFree( MODEM_LORA, Channels[channelNext].Frequency, ( int8_t )( -90 ) ) == 1 )
            {
                
                
                Channel = channelNext;
                
                LoRaMacState &= ~MAC_CHANNEL_CHECK;
                
                TimerStop( &ChannelCheckTimer );
                
                return 0;
            }
        }
    }
    
    
    
    if( ( LoRaMacState & MAC_CHANNEL_CHECK ) == 0 )
    {
        
        TimerSetValue( &ChannelCheckTimer, minTime );
        TimerStart( &ChannelCheckTimer );
        LoRaMacState |= MAC_CHANNEL_CHECK;
        
    }
    return 1;
    
}



 
void OnChannelCheckTimerEvent( void )
{
    debug_str("MAC OnChannelCheckTimerEvent\r\n");
    LoRaMacState &= ~MAC_CHANNEL_CHECK;
    if( LoRaMacSetNextChannel( ) == 0 )
    {
      debug_str("    2:if( LoRaMacSetNextChannel( ) == 0 )\r\n");
        
        
           debug_str("    if MAC_TX_RUNNING,LoRaMacSendFrameOnChannel( Channels[Channel] );\r\n");
           LoRaMacSendFrameOnChannel( Channels[Channel] );
        
    }
}

















 
static uint8_t AddMacCommand( uint8_t cmd, uint8_t p1, uint8_t p2 )
{
    debug_str("MAC AddMacCommand\r\n");
    MacCommandsBuffer[MacCommandsBufferIndex++] = cmd;
    switch( cmd )
    {
        case MOTE_MAC_LINK_CHECK_REQ:
            
            break;
        case MOTE_MAC_LINK_ADR_ANS:
            
            MacCommandsBuffer[MacCommandsBufferIndex++] = p1;
            break;
        case MOTE_MAC_DUTY_CYCLE_ANS:
            
            break;
        case MOTE_MAC_RX_PARAM_SETUP_ANS:
            
            MacCommandsBuffer[MacCommandsBufferIndex++] = p1;
            break;
        case MOTE_MAC_DEV_STATUS_ANS:
            
            
            MacCommandsBuffer[MacCommandsBufferIndex++] = p1;
            MacCommandsBuffer[MacCommandsBufferIndex++] = p2;
            break;
        case MOTE_MAC_NEW_CHANNEL_ANS:
            
            MacCommandsBuffer[MacCommandsBufferIndex++] = p1;
            break;
        case MOTE_MAC_RX_TIMING_SETUP_ANS:
            
            break;
        default:
            return 1;
    }
    if( MacCommandsBufferIndex <= 15 )
    {
        MacCommandsInNextTx = 1;
        return 0;
    }
    else
    {
        return 2;
    }
}


static void LoRaMacNotify( LoRaMacEventFlags_t *flags, LoRaMacEventInfo_t *info )
{
    if( ( LoRaMacEvents != 0 ) && ( LoRaMacEvents->MacEvent != 0 ) )
    {
		debug_str("MAC LoRaMacNotify\r\n");
        LoRaMacEvents->MacEvent( flags, info );
    }
    flags->Value = 0;
}

void LoRaMacInit( LoRaMacEvent_t *events )
{
    LoRaMacEvents = events;

    LoRaMacEventFlags.Value = 0;
    
    LoRaMacEventInfo.TxAckReceived = 0;
    LoRaMacEventInfo.TxNbRetries = 0;
    LoRaMacEventInfo.TxDatarate = 7;
    LoRaMacEventInfo.RxPort = 1;
    LoRaMacEventInfo.RxBuffer = 0;
    LoRaMacEventInfo.RxBufferSize = 0;
    LoRaMacEventInfo.RxRssi = 0;
    LoRaMacEventInfo.RxSnr = 0;
    LoRaMacEventInfo.Energy = 0;
    LoRaMacEventInfo.DemodMargin = 0;
    LoRaMacEventInfo.NbGateways = 0;
    LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_OK;
   
    LoRaMacDeviceClass = CLASS_A;
    
    
    UpLinkCounter = 1;
    DownLinkCounter = 0;
    
    IsLoRaMacNetworkJoined = 0;
    LoRaMacState = MAC_IDLE;

    ChannelsMask = ( uint16_t )( 1 << ( 1 - 1 ) ) + ( uint16_t )( 1 << ( 2 - 1 ) ) + ( uint16_t )( 1 << ( 3 - 1 ) ) + ( uint16_t )( 1 << ( 4 - 1 ) ) + ( uint16_t )( 1 << ( 5 - 1 ) ) + ( uint16_t )( 1 << ( 6 - 1 ) ) + ( uint16_t )( 1 << ( 7 - 1 ) ) + ( uint16_t )( 1 << ( 8 - 1 ) ) + ( uint16_t )( 1 << ( 9 - 1 ) );
    ChannelsTxPower = 1;
    ChannelsDefaultDatarate = ChannelsDatarate = 0;
    ChannelsNbRep = 1;
    ChannelsNbRepCounter = 0;
    
    MaxDCycle = 0;
    AggregatedDCycle = 1;
    AggregatedLastTxDoneTime = 0;
    AggregatedTimeOff = 0;

    DutyCycleOn = 1;

    MaxRxWindow = 3000000;
    ReceiveDelay1 = 1000;
    ReceiveDelay2 = 2000000;
    JoinAcceptDelay1 = 1000000;
    JoinAcceptDelay2 = 1000000;

	TimerInit( &MacStateCheckTimer, OnMacStateCheckTimerEvent );
	TimerSetValue( &MacStateCheckTimer, 1000000 );

	TimerInit( &ChannelCheckTimer, OnChannelCheckTimerEvent );
	TimerInit( &TxDelayedTimer, OnTxDelayedTimerEvent );
	TimerInit( &RxWindowTimer1, OnRxWindow1TimerEvent );
    TimerInit( &RxWindowTimer2, OnRxWindow2TimerEvent );
    TimerInit( &AckTimeoutTimer, OnAckTimeoutTimerEvent );
   
    
    RadioEvents.TxDone = OnRadioTxDone;
    RadioEvents.RxDone = OnRadioRxDone;
    RadioEvents.RxError = OnRadioRxError;
    RadioEvents.TxTimeout = OnRadioTxTimeout;
    RadioEvents.RxTimeout = OnRadioRxTimeout;
    Radio.Init( &RadioEvents );

    
    srand( 152 );

    
    Channel = 16;

    PublicNetwork = 1;
    LoRaMacSetPublicNetwork( PublicNetwork );
    Radio.Sleep( );
	 
}

void LoRaMacSetAdrOn( _Bool enable )
{
    AdrCtrlOn = enable;
}

void LoRaMacInitNwkIds( uint32_t netID, uint32_t devAddr, uint8_t *nwkSKey, uint8_t *appSKey )
{
    LoRaMacNetID = netID;
    LoRaMacDevAddr = devAddr;
    memcpy1( LoRaMacNwkSKey, nwkSKey, 16 );
    memcpy1( LoRaMacAppSKey, appSKey, 16 );
    
    IsLoRaMacNetworkJoined = 1;
}

void LoRaMacMulticastChannelAdd( MulticastParams_t *channelParam )
{
    
    channelParam->DownLinkCounter = 0;
    
    if( MulticastChannels == 0 )
    {
        MulticastChannels = channelParam;
    }
    else
    {
        MulticastParams_t *cur = MulticastChannels;
        while( cur->Next != 0 )
        {
            cur = cur->Next;
        }
        cur->Next = (struct MulticastParams_s *) channelParam;			
    }
}

void LoRaMacMulticastChannelRemove( MulticastParams_t *channelParam )
{
    MulticastParams_t *cur = 0;
    
    
    if( MulticastChannels == channelParam )
    {
        if( MulticastChannels != 0 )
        {
            cur = MulticastChannels;
            MulticastChannels = MulticastChannels->Next;
            cur->Next = 0;
            
            if( cur == MulticastChannels )
            {
                MulticastChannels = 0;
            }
        }
        return;
    }
    
    
    if( channelParam->Next == 0 )
    {
        if( MulticastChannels != 0 )
        {
            cur = MulticastChannels;
            MulticastParams_t *last = 0;
            while( cur->Next != 0 )
            {
                last = cur;
                cur = cur->Next;
            }
            if( last != 0 )
            {
                last->Next = 0;
            }
            
            if( cur == last )
            {
                MulticastChannels = 0;
            }
        }
        return;
    }
    
    
    cur = MulticastChannels;
    while( cur != 0 )
    {
        if( cur->Next == channelParam )
        {
            break;
        }
        cur = cur->Next;
    }
    if( cur != 0 )
    {
        MulticastParams_t *tmp = cur ->Next;
        cur->Next = tmp->Next;
        tmp->Next = 0;
    }
}

uint8_t LoRaMacJoinReq( uint8_t *devEui, uint8_t *appEui, uint8_t *appKey )
{
    LoRaMacHeader_t macHdr;

    LoRaMacDevEui = devEui;
    LoRaMacAppEui = appEui;
    LoRaMacAppKey = appKey;
    
    macHdr.Value = 0;
    macHdr.Bits.MType        = FRAME_TYPE_JOIN_REQ;
    
    IsLoRaMacNetworkJoined = 0;
    return LoRaMacSend( &macHdr, 0, 0, 0, 0 );
}

uint8_t LoRaMacLinkCheckReq( void )
{
    return AddMacCommand( MOTE_MAC_LINK_CHECK_REQ, 0, 0 );
}

uint8_t LoRaMacSendFrame( uint8_t fPort, void *fBuffer, uint16_t fBufferSize )
{
    LoRaMacHeader_t macHdr;

    macHdr.Value = 0;

    macHdr.Bits.MType = FRAME_TYPE_DATA_UNCONFIRMED_UP;
    return LoRaMacSend( &macHdr, 0, fPort, fBuffer, fBufferSize );
}

uint8_t LoRaMacSendConfirmedFrame( uint8_t fPort, void *fBuffer, uint16_t fBufferSize, uint8_t retries )
{
    debug_str("MAC LoRaMacSendConfirmedFrame\r\n");
    LoRaMacHeader_t macHdr;

    if( AdrCtrlOn == 0 )
    {
        ChannelsDatarate = ChannelsDefaultDatarate;
    }
    AckTimeoutRetries = retries;
    AckTimeoutRetriesCounter = 1;
    
    macHdr.Value = 0;

    macHdr.Bits.MType = FRAME_TYPE_DATA_CONFIRMED_UP;
    return LoRaMacSend( &macHdr, 0, fPort, fBuffer, fBufferSize );
}

uint8_t LoRaMacSend( LoRaMacHeader_t *macHdr, uint8_t *fOpts, uint8_t fPort, void *fBuffer, uint16_t fBufferSize )
{
    debug_str("MAC LoRaMacSend\r\n");
    LoRaMacFrameCtrl_t fCtrl;

    fCtrl.Value = 0;

    fCtrl.Bits.FOptsLen      = 0;
    fCtrl.Bits.FPending      = 0;
    fCtrl.Bits.Ack           = 0;
    fCtrl.Bits.AdrAckReq     = 0;
    fCtrl.Bits.Adr           = AdrCtrlOn;

    
    if( LoRaMacSetNextChannel( ) == 0 )
    {
        debug_str("    LoRaMacSetNextChannel( ) == 0\r\n");
        return LoRaMacSendOnChannel( Channels[Channel], macHdr, &fCtrl, fOpts, fPort, fBuffer, fBufferSize );
    }
    return 5;
}

uint8_t LoRaMacPrepareFrame( ChannelParams_t channel, LoRaMacHeader_t *macHdr, LoRaMacFrameCtrl_t *fCtrl, uint8_t *fOpts, uint8_t fPort, void *fBuffer, uint16_t fBufferSize )
{
    debug_str("MAC LoRaMacPrepareFrame\r\n");
    uint16_t i;
    uint8_t pktHeaderLen = 0;
    uint32_t mic = 0;
    
    LoRaMacBufferPktLen = 0;
    
    NodeAckRequested = 0;
    
    if( fBuffer == 0 )
    {
        fBufferSize = 0;
    }

    LoRaMacBuffer[pktHeaderLen++] = macHdr->Value;
    
    
    

    switch( macHdr->Bits.MType )
    {
        case FRAME_TYPE_JOIN_REQ:
            debug_str("       case FRAME_TYPE_JOIN_REQ\r\n");
            RxWindow1Delay = JoinAcceptDelay1 - 1000;
            RxWindow2Delay = JoinAcceptDelay2 - 1000;

            LoRaMacBufferPktLen = pktHeaderLen;
        
            memcpy1( LoRaMacBuffer + LoRaMacBufferPktLen, LoRaMacAppEui, 8 );
            LoRaMacBufferPktLen += 8;
            memcpy1( LoRaMacBuffer + LoRaMacBufferPktLen, LoRaMacDevEui, 8 );
            LoRaMacBufferPktLen += 8;

            LoRaMacDevNonce = Radio.Random( );
            
            LoRaMacBuffer[LoRaMacBufferPktLen++] = LoRaMacDevNonce & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen++] = ( LoRaMacDevNonce >> 8 ) & 0xFF;

            LoRaMacJoinComputeMic( LoRaMacBuffer, LoRaMacBufferPktLen & 0xFF, LoRaMacAppKey, &mic );
            
            LoRaMacBuffer[LoRaMacBufferPktLen++] = mic & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen++] = ( mic >> 8 ) & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen++] = ( mic >> 16 ) & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen++] = ( mic >> 24 ) & 0xFF;
            
            break;
        case FRAME_TYPE_DATA_CONFIRMED_UP:
            
            NodeAckRequested = 1;
            
        case FRAME_TYPE_DATA_UNCONFIRMED_UP:
            
            if( IsLoRaMacNetworkJoined == 0 )
            {
                return 2; 
            }
            
            RxWindow1Delay = ReceiveDelay1 - 1000;
            RxWindow2Delay = ReceiveDelay2 - 1000;

            if( fOpts == 0 )
            {
                
                fCtrl->Bits.FOptsLen = 0;
            }

            if( SrvAckRequested == 1 )
            {
                
                SrvAckRequested = 0;
                fCtrl->Bits.Ack = 1;
            }
            
            if( fCtrl->Bits.Adr == 1 )
            {
                
                if( ChannelsDatarate == 0 )
                {
                    
                    AdrAckCounter = 0;
                    fCtrl->Bits.AdrAckReq = 0;
                }
                else
                {
                    
                    if( AdrAckCounter > 64 )
                    {
                      debug_str("       fCtrl->Bits.AdrAckReq = true\r\n");
                        fCtrl->Bits.AdrAckReq = 1;
                    }
                    else
                    {
                        
                        fCtrl->Bits.AdrAckReq = 0;
                    }
                    if( AdrAckCounter > ( 64 + 32 ) )
                    {
                        
                        AdrAckCounter = 0;
                        if( ChannelsDatarate > 0 )
                        {
                            ChannelsDatarate--;
                        }
                        else
                        {
                            
                            ChannelsMask = ChannelsMask | ( ( uint16_t )( 1 << ( 1 - 1 ) ) + ( uint16_t )( 1 << ( 2 - 1 ) ) + ( uint16_t )( 1 << ( 3 - 1 ) ) );
                        }
                    }
                }
            }
            
            LoRaMacBuffer[pktHeaderLen++] = ( LoRaMacDevAddr ) & 0xFF;
            LoRaMacBuffer[pktHeaderLen++] = ( LoRaMacDevAddr >> 8 ) & 0xFF;
            LoRaMacBuffer[pktHeaderLen++] = ( LoRaMacDevAddr >> 16 ) & 0xFF;
            LoRaMacBuffer[pktHeaderLen++] = ( LoRaMacDevAddr >> 24 ) & 0xFF;

            LoRaMacBuffer[pktHeaderLen++] = fCtrl->Value;

            LoRaMacBuffer[pktHeaderLen++] = UpLinkCounter & 0xFF;
            LoRaMacBuffer[pktHeaderLen++] = ( UpLinkCounter >> 8 ) & 0xFF;

            if( fOpts != 0 )
            {
                
                for( i = 0; i < fCtrl->Bits.FOptsLen; i++ )
                {
                    LoRaMacBuffer[pktHeaderLen++] = fOpts[i];
                }
            }
            if( ( MacCommandsBufferIndex + fCtrl->Bits.FOptsLen ) <= 15 )
            {
                
                if( MacCommandsInNextTx == 1 )
                {
                    fCtrl->Bits.FOptsLen += MacCommandsBufferIndex;
                    
                    
                    LoRaMacBuffer[0x05] = fCtrl->Value;
                    for( i = 0; i < MacCommandsBufferIndex; i++ )
                    {
                        
                        LoRaMacBuffer[pktHeaderLen++] = MacCommandsBuffer[i];
                        
                    }
                }


                MacCommandsInNextTx = 0;
                MacCommandsBufferIndex = 0;
            }

            if( ( pktHeaderLen + fBufferSize ) > 64 )
            {
                
                return 3;
            }

            if( fBuffer != 0 )
            {
                
                LoRaMacBuffer[pktHeaderLen] = fPort;



                if( fPort == 0 )
                {
                    LoRaMacPayloadEncrypt( fBuffer, fBufferSize, LoRaMacNwkSKey, LoRaMacDevAddr, 0, UpLinkCounter, LoRaMacPayload );
                }
                else
                {
                    debug_str("    LoRaMacPayloadEncrypt\r\n");
                    LoRaMacPayloadEncrypt( fBuffer, fBufferSize, LoRaMacAppSKey, LoRaMacDevAddr, 0, UpLinkCounter, LoRaMacPayload );
                }
                
                memcpy1( LoRaMacBuffer + pktHeaderLen + 1, fBuffer, fBufferSize );
            }
            LoRaMacBufferPktLen = pktHeaderLen + 1 + fBufferSize;

            LoRaMacComputeMic( LoRaMacBuffer, LoRaMacBufferPktLen, LoRaMacNwkSKey, LoRaMacDevAddr, 0, UpLinkCounter, &mic );

            if( ( LoRaMacBufferPktLen + 4 ) > 64 )
            {
                return 3;
            }
            LoRaMacBuffer[LoRaMacBufferPktLen + 0] = mic & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen + 1] = ( mic >> 8 ) & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen + 2] = ( mic >> 16 ) & 0xFF;
            LoRaMacBuffer[LoRaMacBufferPktLen + 3] = ( mic >> 24 ) & 0xFF;
            
            LoRaMacBufferPktLen += 4;
            break;
        default:
            return 4;
    }

    return 0;
}

int i=0;
uint8_t LoRaMacSendFrameOnChannel( ChannelParams_t channel )
{
    debug_str("MAC LoRaMacSendFrameOnChannel->SetChannel\r\n");	  
    LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_ERROR;
    LoRaMacEventInfo.TxDatarate = Datarates[ChannelsDatarate];

    
    
    
    
    Radio.SetChannel( 868500000 );		
    
    
    
 








 
    
    if( ChannelsDatarate == 7 )
    { 
        Radio.SetTxConfig( MODEM_FSK, TxPowers[ChannelsTxPower], 25e3, 0, Datarates[ChannelsDatarate] * 1e3, 0, 5, 0, 1, 0, 0, 0, 3e6 );
        TxTimeOnAir = Radio.TimeOnAir( MODEM_FSK, LoRaMacBufferPktLen );
    }
    else if( ChannelsDatarate == 6 )
    { 
        Radio.SetTxConfig( MODEM_LORA, TxPowers[ChannelsTxPower], 0, 1, Datarates[ChannelsDatarate], 1, 8, 0, 1, 0, 0, 0, 3e6 );
        TxTimeOnAir = Radio.TimeOnAir( MODEM_LORA, LoRaMacBufferPktLen );
    }
    else
    { 
        
        Radio.SetTxConfig( MODEM_LORA, TxPowers[ChannelsTxPower], 0, 0, 7, 3, 8, 0, 1, 0, 0, 0, 3e6 );
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
    
    TimerStart( &MacStateCheckTimer );
    
    if( ( ( ( Bands[channel . Band]. TimeOff ) > ( AggregatedTimeOff ) ) ? ( Bands[channel . Band]. TimeOff ) : ( AggregatedTimeOff ) ) > ( TimerGetCurrentTime( ) ) )
    {
        
        TimerSetValue( &TxDelayedTimer, ( ( ( Bands[channel . Band]. TimeOff ) > ( AggregatedTimeOff ) ) ? ( Bands[channel . Band]. TimeOff ) : ( AggregatedTimeOff ) ) );
        TimerStart( &TxDelayedTimer );
    }
    else
    {
        
		
      debug_str("MAC Send now\r\n");
      debug_str("LoRaMacBuffer = ");
      debug_buf( LoRaMacBuffer, LoRaMacBufferPktLen);
      debug_str("LoRaMacBufferPktLen = ");
      debug_hex( LoRaMacBufferPktLen);
      debug_str("\r\n");
        Radio.Send( LoRaMacBuffer, LoRaMacBufferPktLen );
                 
    }
    return 0;
}




void OnTxDelayedTimerEvent( void )
{
    Radio.Send( LoRaMacBuffer, LoRaMacBufferPktLen );
}

uint8_t LoRaMacSendOnChannel( ChannelParams_t channel, LoRaMacHeader_t *macHdr, LoRaMacFrameCtrl_t *fCtrl, uint8_t *fOpts, uint8_t fPort, void *fBuffer, uint16_t fBufferSize )
{
    debug_str("MAC LoRaMacSendOnChannel\r\n");	
    uint8_t status = 0;
    
    if( ( LoRaMacState & MAC_TX_RUNNING ) == MAC_TX_RUNNING )
    {
        debug_str("    MAC is busy?\r\n");
        return 1; 
    }
     
    
    status = LoRaMacPrepareFrame( channel, macHdr, fCtrl, fOpts, fPort, fBuffer, fBufferSize );
    if( status != 0 )
    {
        return status;
    }

    LoRaMacEventInfo.TxNbRetries = 0;
    LoRaMacEventInfo.TxAckReceived = 0;

    return LoRaMacSendFrameOnChannel( channel );
}

static void LoRaMacProcessMacCommands( uint8_t *payload, uint8_t macIndex, uint8_t commandsSize )
{
debug_str("MAC LoRaMacProcessMacCommands\r\n");	
    while( macIndex < commandsSize )
    {
        
        switch( payload[macIndex++] )
        {
            case SRV_MAC_LINK_CHECK_ANS:
                LoRaMacEventFlags.Bits.LinkCheck = 1;
                LoRaMacEventInfo.DemodMargin = payload[macIndex++];
                LoRaMacEventInfo.NbGateways = payload[macIndex++];
                break;
            case SRV_MAC_LINK_ADR_REQ:
                {
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

                    if( ( AdrCtrlOn == 0 ) && 
                        ( ( ChannelsDatarate != datarate ) || ( ChannelsTxPower != txPower ) ) )
                    { 
                        
                        
                        
                        
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
                        status &= 0xFE; 
                    }
                    else
                    {
                        for( i = 0; i < 16; i++ )
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
                                {
                                    status &= 0xFE; 
                                }
                            }
                        }
                    }
                    if( ( ( datarate < 0 ) ||
                          ( datarate > 7 ) ) == 1 )
                    {
                        status &= 0xFD; 
                    }

                    
                    
                    
                    if( ( ( 0 <= txPower ) &&
                          ( txPower <= 5 ) ) == 0 )
                    {
                        status &= 0xFB; 
                    }
                    if( ( status & 0x07 ) == 0x07 )
                    {
                        ChannelsDatarate = datarate;
                        ChannelsTxPower = txPower;
                        ChannelsMask = chMask;
                        ChannelsNbRep = nbRep;
                    }
                    AddMacCommand( MOTE_MAC_LINK_ADR_ANS, status, 0 );
                }
                break;
            case SRV_MAC_DUTY_CYCLE_REQ:
                MaxDCycle = payload[macIndex++];
                AggregatedDCycle = 1 << MaxDCycle;
                AddMacCommand( MOTE_MAC_DUTY_CYCLE_ANS, 0, 0 );
                break;
            case SRV_MAC_RX_PARAM_SETUP_REQ:
                {
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
                    
                    if( Radio.CheckRfFrequency( freq ) == 0 )
                    {
                        status &= 0xFE; 
                    }
                    
                    if( ( ( datarate < 0 ) ||
                          ( datarate > 7 ) ) == 1 )
                    {
                        status &= 0xFD; 
                    }

                    if( ( ( drOffset < 0 ) || ( drOffset > 5 ) ) == 1 )
                    {
                        status &= 0xFB; 
                    }
                    
                    if( ( status & 0x07 ) == 0x07 )
                    {
                        Rx2Channel.Datarate = datarate;
                        Rx2Channel.Frequency = freq;
                        Rx1DrOffset = drOffset;
                    }
                    AddMacCommand( MOTE_MAC_RX_PARAM_SETUP_ANS, status, 0 );
                }
                break;
            case SRV_MAC_DEV_STATUS_REQ:
                AddMacCommand( MOTE_MAC_DEV_STATUS_ANS, BoardMeasureBatterieLevel( ), LoRaMacEventInfo.RxSnr );
                break;
            case SRV_MAC_NEW_CHANNEL_REQ:
                {
                    debug_str("    SRV_MAC_NEW_CHANNEL_REQ\r\n");	
                    uint8_t status = 0x03;
                    int8_t channelIndex = 0;
                    ChannelParams_t chParam;
                    
                    channelIndex = payload[macIndex++];
                    chParam.Frequency = payload[macIndex++];
                    chParam.Frequency |= payload[macIndex++] << 8;
                    chParam.Frequency |= payload[macIndex++] << 16;
                    chParam.Frequency *= 100;
                    chParam.DrRange.Value = payload[macIndex++];
                    
                    debug_uint(chParam.Frequency);
                    debug_str("\r");
                    
                    if( ( channelIndex < 3 ) || ( channelIndex > 16 ) )
                    {
                        status &= 0xFE; 
                    }
                
                    if( Radio.CheckRfFrequency( chParam.Frequency ) == 0 )
                    {
                        debug_str("     Channel frequency KO\r\n");
                        status &= 0xFE; 
                    }

                    if( ( chParam.DrRange.Fields.Min > chParam.DrRange.Fields.Max ) ||
                        ( ( ( 0 <= chParam.DrRange.Fields.Min ) &&
                            ( chParam.DrRange.Fields.Min <= 7 ) ) == 0 ) ||
                        ( ( ( 0 <= chParam.DrRange.Fields.Max ) &&
                            ( chParam.DrRange.Fields.Max <= 7 ) ) == 0 ) )
                    {
                        status &= 0xFD; 
                    }
                    
                    if( ( status & 0x03 ) == 0x03 )
                    {
                        debug_str("     command:LoRaMacSetChannel( channelIndex, chParam );\r\n");
                        LoRaMacSetChannel( channelIndex, chParam );
                    }
                    AddMacCommand( MOTE_MAC_NEW_CHANNEL_ANS, status, 0 );
                }
                break;
            case SRV_MAC_RX_TIMING_SETUP_REQ:
                {
                    uint8_t delay = payload[macIndex++] & 0x0F;
                    
                    if( delay == 0 )
                    {
                        delay++;
                    }
                    ReceiveDelay1 = delay * 1e6;
                    ReceiveDelay2 = ReceiveDelay1 + 1e6;
                    AddMacCommand( MOTE_MAC_RX_TIMING_SETUP_ANS, 0, 0 );
                }
                break;
            default:
                
                return;
        }
    }
}



 
static void OnRadioTxDone( void )
{
debug_str("MAC OnRadioTxDone\r\n");	
    uint64_t curTime = TimerGetCurrentTime( );
    if( LoRaMacDeviceClass != CLASS_C )
    {
        debug_str("___ Radio.Sleep\r\n");	
        Radio.Sleep( );
    }
    else
    {
        OnRxWindow2TimerEvent( );
    }

    
    Bands[Channels[Channel].Band].LastTxDoneTime = curTime;
    if( DutyCycleOn == 1 )
    {
        Bands[Channels[Channel].Band].TimeOff = TxTimeOnAir * Bands[Channels[Channel].Band].DCycle - TxTimeOnAir;
    }
    else
    {
        Bands[Channels[Channel].Band].TimeOff = 0;
    }
    
    AggregatedLastTxDoneTime = curTime;
    AggregatedTimeOff = AggregatedTimeOff + ( TxTimeOnAir * AggregatedDCycle - TxTimeOnAir );

    if( IsRxWindowsEnabled == 1 )
    {
        debug_str("___ &RxWindowTimer1\r\n");
        TimerSetValue( &RxWindowTimer1, RxWindow1Delay );
        TimerStart( &RxWindowTimer1 );
        if( LoRaMacDeviceClass != CLASS_C )
        {
            debug_str("___ &RxWindowTimer2\r\n");
            TimerSetValue( &RxWindowTimer2, RxWindow2Delay );
            TimerStart( &RxWindowTimer2 );
        }
    }
    else
    {
        LoRaMacEventFlags.Bits.Tx = 1;
        LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_OK;
    }
    
    if( NodeAckRequested == 0 )
    {
        ChannelsNbRepCounter++;
    }

}



 
static void OnRadioRxDone( uint8_t *payload, uint16_t size, int16_t rssi, int8_t snr )
{
debug_str("MAC OnRadioRxDone\r\n");		
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
    
    MulticastParams_t *curMulticastParams = 0;
    uint8_t *nwkSKey = LoRaMacNwkSKey;
    uint8_t *appSKey = LoRaMacAppSKey;
    uint32_t downLinkCounter = 0;
    
    _Bool isMicOk = 0;

    if( LoRaMacDeviceClass != CLASS_C )
    {
        Radio.Sleep( );
    }
    else
    {
        if( LoRaMacEventFlags.Bits.RxSlot == 0 )
        {
            OnRxWindow2TimerEvent( );
        }
    }
    TimerStop( &RxWindowTimer2 );
debug_str("payload = ");
debug_buf( payload, size);
debug_str("\r\n");



    macHdr.Value = payload[pktHeaderLen++];
    
    switch( macHdr.Bits.MType )
    {
        case FRAME_TYPE_JOIN_ACCEPT:
            debug_str("onRxDone FRAME_TYPE_JOIN_ACCEPT\r\n");
            if( IsLoRaMacNetworkJoined == 1 )
            {
                break;
            }
            LoRaMacJoinDecrypt( payload + 1, size - 1, LoRaMacAppKey, LoRaMacRxPayload + 1 );

            LoRaMacRxPayload[0] = macHdr.Value;

            LoRaMacJoinComputeMic( LoRaMacRxPayload, size - 4, LoRaMacAppKey, &mic );
            
            micRx |= LoRaMacRxPayload[size - 4];
            micRx |= ( LoRaMacRxPayload[size - 4 + 1] << 8 );
            micRx |= ( LoRaMacRxPayload[size - 4 + 2] << 16 );
            micRx |= ( LoRaMacRxPayload[size - 4 + 3] << 24 );
            
            if( micRx == mic )
            {
                LoRaMacEventFlags.Bits.Rx = 1;
                LoRaMacEventInfo.RxSnr = snr;
                LoRaMacEventInfo.RxRssi = rssi;

                LoRaMacJoinComputeSKeys( LoRaMacAppKey, LoRaMacRxPayload + 1, LoRaMacDevNonce, LoRaMacNwkSKey, LoRaMacAppSKey );

                LoRaMacNetID = LoRaMacRxPayload[4];
                LoRaMacNetID |= ( LoRaMacRxPayload[5] << 8 );
                LoRaMacNetID |= ( LoRaMacRxPayload[6] << 16 );
                
                LoRaMacDevAddr = LoRaMacRxPayload[7];
                LoRaMacDevAddr |= ( LoRaMacRxPayload[8] << 8 );
                LoRaMacDevAddr |= ( LoRaMacRxPayload[9] << 16 );
                LoRaMacDevAddr |= ( LoRaMacRxPayload[10] << 24 );
                
                
                Rx1DrOffset = ( LoRaMacRxPayload[11] >> 4 ) & 0x07;
                Rx2Channel.Datarate = LoRaMacRxPayload[11] & 0x0F;
                
                
                ReceiveDelay1 = ( LoRaMacRxPayload[12] & 0x0F );
                if( ReceiveDelay1 == 0 )
                {
                    ReceiveDelay1 = 1;
                }
                ReceiveDelay1 *= 1e6;
                ReceiveDelay2 = ReceiveDelay1 + 1e6;
                
                
                if( ( size - 1 ) > 16 )
                {
                    ChannelParams_t param;
                    param.DrRange.Value = ( 5 << 4 ) | 0;

                    for( uint8_t i = 3, j = 0; i < ( 5 + 3 ); i++, j += 3 )
                    {
                        param.Frequency = ( LoRaMacRxPayload[13 + j] | ( LoRaMacRxPayload[14 + j] << 8 ) | ( LoRaMacRxPayload[15 + j] << 16 ) ) * 100;
                        LoRaMacSetChannel( i, param );
                    }
                }
                
                LoRaMacEventFlags.Bits.JoinAccept = 1;
                IsLoRaMacNetworkJoined = 1;
                ChannelsDatarate = ChannelsDefaultDatarate;
                LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_OK;
            }
            else
            {
                LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_JOIN_FAIL;
            }

            LoRaMacEventFlags.Bits.Tx = 1;
            break;
        case FRAME_TYPE_DATA_CONFIRMED_DOWN:
             debug_str("onRxDone FRAME_TYPE_DATA_CONFIRMED_DOWN\r\n");
        case FRAME_TYPE_DATA_UNCONFIRMED_DOWN:
            {debug_str("onRxDone FRAME_TYPE_DATA_UNCONFIRMED_DOWN\r\n");
                address = payload[pktHeaderLen++];
                address |= ( payload[pktHeaderLen++] << 8 );
                address |= ( payload[pktHeaderLen++] << 16 );
                address |= ( payload[pktHeaderLen++] << 24 );

                if( address != LoRaMacDevAddr )
                {
                    curMulticastParams = MulticastChannels;
                    while( curMulticastParams != 0 )
                    {
                        if( address == curMulticastParams->Address )
                        {
                            LoRaMacEventFlags.Bits.Multicast = 1;
                            nwkSKey = curMulticastParams->NwkSKey;
                            appSKey = curMulticastParams->AppSKey;
                            downLinkCounter = curMulticastParams->DownLinkCounter;
                            break;
                        }
                        curMulticastParams = curMulticastParams->Next;
                    }
                    if( LoRaMacEventFlags.Bits.Multicast == 0 )
                    {
                        
                        LoRaMacEventFlags.Bits.Tx = 1;
                        LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_ADDRESS_FAIL;
                        LoRaMacState &= ~MAC_TX_RUNNING;
                        return;
                    }
                }
                else
                {
                    LoRaMacEventFlags.Bits.Multicast = 0;
                    nwkSKey = LoRaMacNwkSKey;
                    appSKey = LoRaMacAppSKey;
                    downLinkCounter = DownLinkCounter;
                }
                
                if( LoRaMacDeviceClass != CLASS_A )
                {
                    LoRaMacState |= MAC_RX;
                    
                    TimerStart( &MacStateCheckTimer );
                }
                fCtrl.Value = payload[pktHeaderLen++];
                
                sequenceCounter |= payload[pktHeaderLen++];
                sequenceCounter |= payload[pktHeaderLen++] << 8;

                appPayloadStartIndex = 8 + fCtrl.Bits.FOptsLen;

                micRx |= payload[size - 4];
                micRx |= ( payload[size - 4 + 1] << 8 );
                micRx |= ( payload[size - 4 + 2] << 16 );
                micRx |= ( payload[size - 4 + 3] << 24 );

                sequence = ( int32_t )sequenceCounter - ( int32_t )( downLinkCounter & 0xFFFF );
                if( sequence < 0 )
                {
                    
                    downLinkCounter = ( downLinkCounter & 0xFFFF0000 ) | ( sequenceCounter + ( uint32_t )0x10000 );
                    LoRaMacComputeMic( payload, size - 4, nwkSKey, address, 1, downLinkCounter, &mic );
                    if( micRx == mic )
                    {
                        isMicOk = 1;
                    }
                    else
                    {
                        isMicOk = 0;
                        
                        if( LoRaMacEventFlags.Bits.Multicast == 1 )
                        {
                            curMulticastParams->DownLinkCounter = downLinkCounter = sequenceCounter;
                        }
                        else
                        {
                            DownLinkCounter = downLinkCounter = sequenceCounter;
                        }
                        LoRaMacComputeMic( payload, size - 4, nwkSKey, address, 1, downLinkCounter, &mic );
                    }
                }
                else
                {
                    downLinkCounter = ( downLinkCounter & 0xFFFF0000 ) | sequenceCounter;
                    LoRaMacComputeMic( payload, size - 4, nwkSKey, address, 1, downLinkCounter, &mic );
                }

                if( ( isMicOk == 1 ) ||
                    ( micRx == mic ) )
                {
                    LoRaMacEventFlags.Bits.Rx = 1;
                    LoRaMacEventInfo.RxSnr = snr;
                    LoRaMacEventInfo.RxRssi = rssi;
                    LoRaMacEventInfo.RxBufferSize = 0;
                    AdrAckCounter = 0;
                    if( LoRaMacEventFlags.Bits.Multicast == 1 )
                    {
                        curMulticastParams->DownLinkCounter = downLinkCounter;
                    }
                    else
                    {
                        DownLinkCounter = downLinkCounter;
                    }

                    if( macHdr.Bits.MType == FRAME_TYPE_DATA_CONFIRMED_DOWN )
                    {
                        SrvAckRequested = 1;
                    }
                    else
                    {
                        SrvAckRequested = 0;
                    }
                    
                    if( fCtrl.Bits.Ack == 1 )
                    {
                        LoRaMacEventInfo.TxAckReceived = 1;

                        
                        
                        TimerStop( &AckTimeoutTimer );
                    }
                    else
                    {
                        LoRaMacEventInfo.TxAckReceived = 0;
                        if( AckTimeoutRetriesCounter > AckTimeoutRetries )
                        {
                            
                            
                            TimerStop( &AckTimeoutTimer );
                        }
                    }
                    
                    if( fCtrl.Bits.FOptsLen > 0 )
                    {
                        
                        LoRaMacProcessMacCommands( payload, 8, appPayloadStartIndex );
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
                                                   1,
                                                   downLinkCounter,
                                                   LoRaMacRxPayload );
                            
                            
                            LoRaMacProcessMacCommands( LoRaMacRxPayload, 0, frameLen );
                        }
                        else
                        {
                            LoRaMacPayloadDecrypt( payload + appPayloadStartIndex,
                                                   frameLen,
                                                   appSKey,
                                                   address,
                                                   1,
                                                   downLinkCounter,
                                                   LoRaMacRxPayload );

                            LoRaMacEventFlags.Bits.RxData = 1;
                            LoRaMacEventInfo.RxPort = port;
                            LoRaMacEventInfo.RxBuffer = LoRaMacRxPayload;
                            LoRaMacEventInfo.RxBufferSize = frameLen;
                        }
                    }

                    LoRaMacEventFlags.Bits.Tx = 1;
                    LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_OK;
                }
                else
                {
                    LoRaMacEventInfo.TxAckReceived = 0;
                    
                    LoRaMacEventFlags.Bits.Tx = 1;
                    LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_MIC_FAIL;
              
                    LoRaMacState &= ~MAC_TX_RUNNING;
                }
            }
            break;
        case FRAME_TYPE_PROPRIETARY:
            
        default:
            LoRaMacEventFlags.Bits.Tx = 1;
            LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_ERROR;
            LoRaMacState &= ~MAC_TX_RUNNING;
            break;
    }
}



 
static void OnRadioTxTimeout( void )
{
    if( LoRaMacDeviceClass != CLASS_C )
    {
        Radio.Sleep( );
    }
    else
    {
        OnRxWindow2TimerEvent( );
    }
    
    LoRaMacEventFlags.Bits.Tx = 1;
    LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_TX_TIMEOUT;
	debug_str("MAC OnRadioTxTimeout\r\n");
}



 
static void OnRadioRxTimeout( void )
{
    if( LoRaMacDeviceClass != CLASS_C )
    {
        Radio.Sleep( );
    }
    if( LoRaMacEventFlags.Bits.RxSlot == 1 )
    {
        LoRaMacEventFlags.Bits.Tx = 1;
        LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_RX2_TIMEOUT;
    }
	debug_str("MAC OnRadioRxTimeout\r\n");
}



 
static void OnRadioRxError( void )
{
    if( LoRaMacDeviceClass != CLASS_C )
    {
        Radio.Sleep( );
    }
    if( LoRaMacEventFlags.Bits.RxSlot == 1 )
    {
        LoRaMacEventFlags.Bits.Tx = 1;
        LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_RX2_ERROR;
    }
	debug_str("MAC OnRadioRxError\r\n");
}








 
void LoRaMacRxWindowSetup( uint32_t freq, int8_t datarate, uint32_t bandwidth, uint16_t timeout, _Bool rxContinuous )
{
    if( Radio.Status( ) == RF_IDLE )
    {




















 
		
		Radio.SetChannel( 868000000 );

		Radio.SetRxConfig( MODEM_LORA, 0, 7, 3, 0, 8, 5, 0, 0, 1, 0, 0, 0, 1 );

		Radio.Write( 0x01, 0x05);	
		Radio.Rx( MaxRxWindow );
	}
}



 
static void OnRxWindow1TimerEvent( void )
{
debug_str("MAC  OnRxWindow1TimerEvent\r\n");	
    uint16_t symbTimeout = 5; 
    int8_t datarate = 0;
    uint32_t bandwidth = 0; 

    datarate = ChannelsDatarate - Rx1DrOffset;
    if( datarate < 0 )
    {
        datarate = 0;
    }

    
    if( datarate >= 3 )
    { 
        symbTimeout = 8;
    }
    if( datarate == 6 )
    {
        bandwidth  = 1;
    }
    LoRaMacEventFlags.Bits.RxSlot = 0;
    LoRaMacRxWindowSetup( Channels[Channel].Frequency, datarate, bandwidth, symbTimeout, 0 );
}



 
static void OnRxWindow2TimerEvent( void )
{
debug_str("MAC  OnRxWindow2TimerEvent\r\n");		
    if( NodeAckRequested == 1 )
    {
        TimerSetValue( &AckTimeoutTimer, 2000000 + randr( -1000000, 1000000 ) );
        TimerStart( &AckTimeoutTimer );
    }
    
    uint16_t symbTimeout = 5; 
    uint32_t bandwidth = 0; 

    
    if( Rx2Channel.Datarate >= 3 )
    { 
        symbTimeout = 8;
    }
    if( Rx2Channel.Datarate == 6 )
    {
        bandwidth  = 1;
    }

    LoRaMacEventFlags.Bits.RxSlot = 1;
    if( LoRaMacDeviceClass != CLASS_C )
    {
        LoRaMacRxWindowSetup( Rx2Channel.Frequency, Rx2Channel.Datarate, bandwidth, symbTimeout, 0 );
    }
    else
    {
        LoRaMacRxWindowSetup( Rx2Channel.Frequency, Rx2Channel.Datarate, bandwidth, symbTimeout, 1 );
    }
}



 
static void OnMacStateCheckTimerEvent( void )
{
debug_str("MAC OnMacStateCheckTimerEvent\r\n");	
    if( LoRaMacEventFlags.Bits.Tx == 1 )
    {
        
        if( NodeAckRequested == 0 )
        {
            
            if( LoRaMacEventFlags.Bits.JoinAccept == 1 )
            {
                
                ChannelsNbRepCounter = ChannelsNbRep;
                UpLinkCounter = 0;
            }
            if( ChannelsNbRepCounter >= ChannelsNbRep )
            {
                ChannelsNbRepCounter = 0;

                LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_OK;

                AdrAckCounter++;
                if( IsUpLinkCounterFixed == 0 )
                {
                    UpLinkCounter++;
                }

                LoRaMacState &= ~MAC_TX_RUNNING;
            }
            else
            {
                LoRaMacEventFlags.Bits.Tx = 0;
                
                if( LoRaMacSetNextChannel( ) == 0 )
                {
                    LoRaMacSendFrameOnChannel( Channels[Channel] );
					debug_str("MAC resend ?????\r\n");	
                }
            }
        }

        if( LoRaMacEventFlags.Bits.Rx == 1 )
        {
            
            if( ( LoRaMacEventInfo.TxAckReceived == 1 ) || ( AckTimeoutRetriesCounter > AckTimeoutRetries ) )
            {
                AckTimeoutRetry = 0;
                if( IsUpLinkCounterFixed == 0 )
                {
                    UpLinkCounter++;
                }
                LoRaMacEventInfo.TxNbRetries = AckTimeoutRetriesCounter;
                
                LoRaMacState &= ~MAC_TX_RUNNING;
            }
        }
        
        if( ( AckTimeoutRetry == 1 ) && ( ( LoRaMacState & MAC_CHANNEL_CHECK ) == 0 ) )
        {
            
            AckTimeoutRetry = 0;
            if( ( AckTimeoutRetriesCounter < AckTimeoutRetries ) && ( AckTimeoutRetriesCounter <= 8 ) )
            {
                AckTimeoutRetriesCounter++;
                
                if( ( AckTimeoutRetriesCounter % 2 ) == 1 )
                {
                    ChannelsDatarate = ( ( ( ChannelsDatarate - 1 ) > ( 0 ) ) ? ( ChannelsDatarate - 1 ) : ( 0 ) );
                }
                LoRaMacEventFlags.Bits.Tx = 0;
                
                if( LoRaMacSetNextChannel( ) == 0 )
                {
                    LoRaMacSendFrameOnChannel( Channels[Channel] );
                }
            }
            else
            {
                
                ChannelsMask = ChannelsMask | ( ( uint16_t )( 1 << ( 1 - 1 ) ) + ( uint16_t )( 1 << ( 2 - 1 ) ) + ( uint16_t )( 1 << ( 3 - 1 ) ) );

                LoRaMacState &= ~MAC_TX_RUNNING;
                
                LoRaMacEventInfo.TxAckReceived = 0;
                LoRaMacEventInfo.TxNbRetries = AckTimeoutRetriesCounter;
                if( IsUpLinkCounterFixed == 0 )
                {
                    UpLinkCounter++;
                }
                LoRaMacEventInfo.Status = LORAMAC_EVENT_INFO_STATUS_OK;
            }
        }
    }
    
    if( ( LoRaMacState & MAC_RX ) == MAC_RX )
    {
        debug_str("___  LoRaMacState & MAC_RX ) == MAC_RX\r\n");
        LoRaMacState &= ~MAC_RX;
    }
    if( LoRaMacState == MAC_IDLE )
    {	
        debug_str("___  LoRaMacState == MAC_IDLE\r\n");
        LoRaMacNotify( &LoRaMacEventFlags, &LoRaMacEventInfo );
    }
    else
    {
        debug_str("___  TimerStart( &MacStateCheckTimer );\r\n");
        
        TimerStart( &MacStateCheckTimer );
    }
}

static void OnAckTimeoutTimerEvent( void )
{
    AckTimeoutRetry = 1;
    LoRaMacState &= ~MAC_ACK_REQ;
}





 

void LoRaMacSetDeviceClass( DeviceClass_t deviceClass )
{
    LoRaMacDeviceClass = deviceClass;
}

void LoRaMacSetPublicNetwork( _Bool enable )
{
    PublicNetwork = enable;
    Radio.SetModem( MODEM_LORA );
    if( PublicNetwork == 1 )
    {
        
        Radio.Write( 0x39, 0x34 );
    }
    else
    {
        
        Radio.Write( 0x39, 0x12 );
    }
}

void LoRaMacSetDutyCycleOn( _Bool enable )
{
    DutyCycleOn = enable;
}

void LoRaMacSetChannel( uint8_t id, ChannelParams_t params )
{
    params.Band = 0;
    Channels[id] = params;
    
    ChannelsMask |= 1 << id;
    
    debug_str("MAC LoRaMacSetChannel, \r Channel = ");
    debug_uint( Channels[id].Frequency);
    debug_str("\r");
    if( ( Channels[id].Frequency >= 865000000 ) && ( Channels[id].Frequency <= 868000000 ) )
    {
        if( Channels[id].Band != BAND_G1_0 )
        {
            Channels[id].Band = BAND_G1_0;
        }
    }
    else if( ( Channels[id].Frequency > 868000000 ) && ( Channels[id].Frequency <= 868600000 ) )
    {
        if( Channels[id].Band != BAND_G1_1 )
        {
            Channels[id].Band = BAND_G1_1;
        }
    }
    else if( ( Channels[id].Frequency >= 868700000 ) && ( Channels[id].Frequency <= 869200000 ) )
    {
        if( Channels[id].Band != BAND_G1_2 )
        {
            Channels[id].Band = BAND_G1_2;
        }
    }
    else if( ( Channels[id].Frequency >= 869400000 ) && ( Channels[id].Frequency <= 869650000 ) )
    {
        if( Channels[id].Band != BAND_G1_3 )
        {
            Channels[id].Band = BAND_G1_3;
        }
    }
    else if( ( Channels[id].Frequency >= 869700000 ) && ( Channels[id].Frequency <= 870000000 ) )
    {
        if( Channels[id].Band != BAND_G1_4 )
        {
            Channels[id].Band = BAND_G1_4;
        }
    }
    else
    {
        Channels[id].Frequency = 0;
        Channels[id].DrRange.Value = 0;
    }
    
    if( Channels[id].Frequency == 0 )
    {
        ChannelsMask &= ~( 1 << id );
    }
}

void LoRaMacSetRx2Channel( Rx2ChannelParams_t param )
{
    Rx2Channel = param;
}

void LoRaMacSetChannelsTxPower( int8_t txPower )
{
    ChannelsTxPower = txPower;
}

void LoRaMacSetChannelsDatarate( int8_t datarate )
{
    ChannelsDefaultDatarate = ChannelsDatarate = datarate;
}

void LoRaMacSetChannelsMask( uint16_t mask )
{
    ChannelsMask = mask;
}

void LoRaMacSetChannelsNbRep( uint8_t nbRep )
{
    if( nbRep < 1 )
    {
        nbRep = 1;
    }
    if( nbRep > 15 )
    {
        nbRep = 15;
    }
    ChannelsNbRep = nbRep;
}

void LoRaMacSetMaxRxWindow( uint32_t delay )
{
    MaxRxWindow = delay;
}

void LoRaMacSetReceiveDelay1( uint32_t delay )
{
    ReceiveDelay1 = delay;
}

void LoRaMacSetReceiveDelay2( uint32_t delay )
{
    ReceiveDelay2 = delay;
}

void LoRaMacSetJoinAcceptDelay1( uint32_t delay )
{
    JoinAcceptDelay1 = delay;
}

void LoRaMacSetJoinAcceptDelay2( uint32_t delay )
{
    JoinAcceptDelay2 = delay;
}

void LoRaMacTestRxWindowsOn( _Bool enable )
{
    IsRxWindowsEnabled = enable;
}

uint32_t LoRaMacGetUpLinkCounter( void )
{
    return UpLinkCounter;
}

uint32_t LoRaMacGetDownLinkCounter( void )
{
    return DownLinkCounter;
}

void LoRaMacSetMicTest( uint16_t upLinkCounter )
{
    UpLinkCounter = upLinkCounter;
    IsUpLinkCounterFixed = 1;
}
