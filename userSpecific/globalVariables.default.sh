#!/bin/bash
# _UTIL_DIR=$HOME/myenv

# _PYTHON_DIR=$_UTIL_DIR/bin
# _PYTHON_INCLUDE_DIR=$_UTIL_DIR/include/python3.6m
# _PYTHON_LIB=$_UTIL_DIR/lib/libpython3.6m.so
# _PYTHON_LIB=$_UTIL_DIR/lib/libpython3.so
# $_UTIL_DIR/lib/python3.6/site_packages
_PYTHON=python3

# _CMAKE=$_UTIL_DIR/bin/cmake
_CMAKE=cmake

# _GIT_BIN_DIR=
_GIT=git

_7_ZIP=7z

# _CUDA_BIN_DIR=$HOME/cuda/bin

# name of the compiler using cmake syntax
_COMPILER_NAME="Unix Makefiles"

_CPU=x64

export _MYENV=$HOME/myenv

export PATH=$_MYENV/bin:$PATH
# PATH=
# PATH=$PATH:$_PYTHON_DIR
# PATH=$PATH:$_GIT_BIN_DIR

#export CPATH=
#export LIBRARY_PATH=
#export LD_LIBRARY_PATH=

export CPLUS_INCLUDE_PATH=$_MYENV/include/python3.6m

export PYTHONPATH=$_MYENV

export _DOWNLOAD_DIR=$HOME/Download
export _REPOSITORY_DIR=${_DOWNLOAD_DIR}/repository
export _MYENV_INSTALL=$HOME/myenv

_DATE=`date +%Y_%m_%d_%H_%M_%S`

source $_PROJECT_PATH/userSpecific/globalVariables.common.sh
