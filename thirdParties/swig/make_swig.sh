#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

tar xf $_SWIG_SOURCE

cd ${_SWIG_SOURCE_FILENAME}

# TODO dependent to PCRE (Perl Compatible Regular Expressions)
# for now: apt-get install libpcre3-dev (work but old package, the number is confusing)
# do not work: apt-get install libpcre2-dev (do not work with the recent package)

./configure --prefix=${_MYENV_INSTALL}
make
make install

cd ..

source $_PROJECT_PATH/common/deleteFolder.sh ${_SWIG_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
