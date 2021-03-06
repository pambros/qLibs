#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

tar xf $_UNITTESTPP_SOURCE

cd ${_UNITTESTPP_SOURCE_FILENAME}

./configure --prefix=${_MYENV_INSTALL}
make
make install

cd ..

source $_PROJECT_PATH/common/deleteFolder.sh ${_UNITTESTPP_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
