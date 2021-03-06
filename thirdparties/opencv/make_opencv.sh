#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

tar xf $_OPENCV_SOURCE
tar xf $_OPENCV_CONTRIB_SOURCE

cd ${_OPENCV_SOURCE_FILENAME}

# mkdir -p debug
# cd debug

# $_CMAKE -G "${_COMPILER_NAME}" -DCMAKE_BUILD_TYPE=Debug -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=${_MYENV_INSTALL} $_GENERATED_PATH/$_OPENCV_SOURCE_FILENAME
# $_CMAKE --build .

# cd ..

mkdir -p release
cd release

$_CMAKE -G "${_COMPILER_NAME}" -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=ON -DBUILD_PERF_TESTS=OFF -DBUILD_TESTS=OFF -DENABLE_PRECOMPILED_HEADERS=OFF -DCMAKE_SKIP_RPATH=ON -DBUILD_WITH_DEBUG_INFO=OFF -DOPENCV_EXTRA_MODULES_PATH=../../$_OPENCV_CONTRIB_SOURCE_FILENAME/modules -DCMAKE_INSTALL_PREFIX=${_MYENV_INSTALL} $_GENERATED_PATH/$_OPENCV_SOURCE_FILENAME
$_CMAKE --build . --target install

cd ..

cd ..

source $_PROJECT_PATH/common/deleteFolder.sh ${_OPENCV_SOURCE_FILENAME}
source $_PROJECT_PATH/common/deleteFolder.sh ${_OPENCV_CONTRIB_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
