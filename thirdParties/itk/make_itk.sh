#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

tar xf $_ITK_SOURCE

cd ${_ITK_SOURCE_FILENAME}

mkdir -p debug
cd debug

# TODO -DGDCM_DIR=$_GDCM_SRC_DIR not sure it works when the gdcm generated folder has been deleted?
cmake -G "${_COMPILER_NAME}" -DCMAKE_BUILD_TYPE=Debug -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON -DITK_USE_SYSTEM_GDCM=ON -DGDCM_DIR=$_GDCM_SRC_DIR -DCMAKE_INSTALL_PREFIX=${_MYENV_INSTALL} $_GENERATED_PATH/$_ITK_SOURCE_FILENAME
cmake --build .

cd ..

mkdir -p release
cd release

# TODO -DGDCM_DIR=$_GDCM_SRC_DIR not sure it works when the gdcm generated folder has been deleted?
cmake -G "${_COMPILER_NAME}" -DCMAKE_BUILD_TYPE=Release -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON -DITK_USE_SYSTEM_GDCM=ON -DGDCM_DIR=$_GDCM_SRC_DIR -DCMAKE_INSTALL_PREFIX=${_MYENV_INSTALL} $_GENERATED_PATH/$_ITK_SOURCE_FILENAME
cmake --build . --target install

cd ..

cd ..

source $_PROJECT_PATH/common/deleteFolder.sh ${_ITK_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
