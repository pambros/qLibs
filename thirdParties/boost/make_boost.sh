#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

tar xf $_BOOST_SOURCE

cd ${_BOOST_SOURCE_FILENAME}

./bootstrap.sh  --prefix=${_MYENV_INSTALL} --with-python=${_MYENV}/bin/python3 --with-python-root=${_MYENV}

_BOOST_OPTIONS="--prefix=${_MYENV_INSTALL}  cxxflags=-fPIC --with-python"
echo $_BOOST_OPTIONS
./b2 install $_BOOST_OPTIONS

cd ..

source $_PROJECT_PATH/common/deleteFolder.sh ${_BOOST_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
