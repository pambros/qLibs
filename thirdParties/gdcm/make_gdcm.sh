#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

tar xf $_GDCM_SOURCE

cd ${_GDCM_SOURCE_FILENAME}

mkdir -p debug
cd debug

$_CMAKE -G "${_COMPILER_NAME}" -DCMAKE_BUILD_TYPE=Debug -DGDCM_BUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=${_MYENV_INSTALL} $_GENERATED_PATH/$_GDCM_SOURCE_FILENAME
$_CMAKE --build .

cd ..

mkdir -p release
cd release

$_CMAKE -G "${_COMPILER_NAME}" -DCMAKE_BUILD_TYPE=Release -DGDCM_BUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=${_MYENV_INSTALL} $_GENERATED_PATH/$_GDCM_SOURCE_FILENAME
$_CMAKE --build . --target install

cd ..

cd ..

# TODO maybe don't delete it because itk need it when compiling with ITK_USE_SYSTEM_GDCM=ON
source $_PROJECT_PATH/common/deleteFolder.sh ${_GDCM_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
