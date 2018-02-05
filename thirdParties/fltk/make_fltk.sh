#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

tar xf $_FLTK_SOURCE

cd ${_FLTK_SOURCE_FILENAME}

mkdir -p _build
cd _build

$_CMAKE .. -DCMAKE_INSTALL_PREFIX=${_MYENV_INSTALL} -DCMAKE_BUILD_TYPE=Release
make
make install

cd ..

cd ..

source $_PROJECT_PATH/common/deleteFolder.sh ${_FLTK_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
