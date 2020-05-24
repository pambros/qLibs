#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

tar xf $_LIB_JPEG_TURBO_SOURCE

cd ${_LIB_JPEG_TURBO_SOURCE_FILENAME}

autoreconf -fiv
# if you get this -> libtool:   error: ignoring unknown tag NASM -> it's ok it's just a warning due to libtool backward compatibility
./configure --prefix=${_MYENV_INSTALL}
make
make check
make install

cd ..

# source $_PROJECT_PATH/common/deleteFolder.sh ${_LIB_JPEG_TURBO_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
