#Uncomment the following line to enable OpenMP
#USE_OPENMP = TRUE

FFTW_INCL =#-I/opt/fftw-3.3.7
FFTW_LIBS = -lfftw3 
BLAS_LIBS = -lblas

SCALAPACK_LIBS = -lscalapack -llapack

DFLAGS = -D__GFORTRAN 
#DFLAGS += -D__IPM

CC = smpicc 
CFLAGS = -O3

FC = smpif90
FFLAGS = -O3 -cpp -x f95-cpp-input #-lg2c

LD = smpif90
LDFLAGS = 

ifeq ($(USE_OPENMP), TRUE)

  #note that this overrides the earlier definition of FFTW_LIBS
  FFTW_LIBS  =  -lfftw3_threads -lfftw3 -lm #-L/opt/fftw/3.3.0.1/x86_64/lib

  DFLAGS    += 

  FFLAGS    += -fopenmp
  LDFLAGS   += -fopenmp

endif

include Makefile.base
