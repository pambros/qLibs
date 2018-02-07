#!/bin/bash
_PYTHON=python3

_CMAKE=cmake

_GIT=git

_7_ZIP=7z

# name of the compiler using cmake syntax
_COMPILER_NAME="Unix Makefiles"

_CPU=x64

export _MYENV=$HOME/myenv

export PATH=$_MYENV/bin:$PATH

export CPLUS_INCLUDE_PATH=$_MYENV/include/python3.6m
#export CPATH=
export LIBRARY_PATH=$_MYENV/lib
export LD_LIBRARY_PATH=$_MYENV/lib

export PKG_CONFIG_PATH=${_MYENV}/lib/pkgconfig
export ACLOCAL_PATH=${_MYENV}/share/aclocal # https://www.gnu.org/software/automake/manual/html_node/Macro-Search-Path.html

export PYTHONPATH=$_MYENV

export _DOWNLOAD_DIR=$HOME/Download
export _REPOSITORY_DIR=${_DOWNLOAD_DIR}/repository
export _MYENV_INSTALL=$HOME/myenv

_DATE=`date +%Y_%m_%d_%H_%M_%S`

source $_PROJECT_PATH/userSpecific/globalVariables.common.sh
