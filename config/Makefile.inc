SHELL_PYTHON_LDFLAGS := $(shell python3-config --ldflags)
SHELL_PYTHON_INCLUDES := $(shell python3-config --includes)

UTKNA_CXX = g++
UTKNA_FC = gfortran
UTKNA_MPI_CXX = mpic++
UTKNA_MPI_FC = mpif90
UTKNA_CFLAGS = -O3 -Wall -Wno-unused -Wshadow -Wno-deprecated-declarations \
 -DANDREW -DO2SCL_V0931
UTKNA_OPENMP_FLAGS = -fopenmp 
UTKNA_MPI_CFLAGS = -DO2SCL_MPI -DANDREW
UTKNA_FLIBS = -lgfortran
UTKNA_FFLAGS = -O3
UTKNA_O2SCL_INCS = -I/usr/local/hdf5/include -I/usr/include/eigen3 \
 $(SHELL_PYTHON_INCLUDES) -DO2SCL_HDF5_COMP -I/opt/o2scl/include \
 -I/usr/local/lib/python3.12/site-packages/numpy/_core/include

# We have to include openmp in o2scl_libs since it was compiled with
# openMP support. 
UTKNA_O2SCL_LIBS = -L/usr/local/hdf5/lib -fopenmp \
 -lo2scl -lhdf5 -lgsl -lreadline -lpython3.12 -lpugixml -lmpfr -lquadmath

UTKNA_EOS_DIR = /home/awsteiner/wcs/eos
UTKNA_BAMR_DIR = /home/awsteiner/wcs/bamr
UTKNA_COMMENT = "isospin"
UTKNA_PYTHON_LDFLAGS = $(SHELL_PYTHON_LDFLAGS) -lpython3.12
UTKNA_PYTHON_INCLUDES = $(SHELL_PYTHON_INCLUDES)
UTKNA_CUBATURE = 
