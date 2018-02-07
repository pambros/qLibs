#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

tar xf $_DCMTK_SOURCE

cd ${_DCMTK_SOURCE_FILENAME}

# ./configure --prefix=${_MYENV_INSTALL}
# make
# make install
# make install-lib

mkdir -p release
cd release

$_CMAKE -G "${_COMPILER_NAME}" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=${_MYENV_INSTALL} $_GENERATED_PATH/$_DCMTK_SOURCE_FILENAME
$_CMAKE --build . --target install

cd ..

# TODO find how to improve this?
mkdir -p ${_MYENV_INSTALL}/include/dcmtk/dcmjpeg/libijg8/
cp dcmjpeg/libijg8/*.h ${_MYENV_INSTALL}/include/dcmtk/dcmjpeg/libijg8/

cd ..

source $_PROJECT_PATH/common/deleteFolder.sh ${_DCMTK_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
