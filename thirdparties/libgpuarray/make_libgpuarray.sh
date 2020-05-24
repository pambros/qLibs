#!/bin/bash
source ../../localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh

_CD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
_GENERATED_PATH=$_CD/generated/$_USER_SPECIFIC
mkdir -p $_GENERATED_PATH
cd $_GENERATED_PATH

# $_GIT clone https://github.com/Theano/libgpuarray.git
# cd libgpuarray

tar xf $_LIBGPUARRAY_SOURCE

cd ${_LIBGPUARRAY_SOURCE_FILENAME}

# rm -rf build Build
mkdir Build
cd Build

$_CMAKE .. -DCMAKE_INSTALL_PREFIX=$_MYENV_INSTALL -DCMAKE_BUILD_TYPE=Release
make
make install

cd ..

$_PYTHON setup.py build
$_PYTHON setup.py install
# %_PYTHON% setup.py build_ext -L"%_BASE%/install/lib" -I"%_BASE%/install/include" --compiler=msvc
# %_PYTHON% setup.py install --prefix %_PYTHON_DIR_WITH_BACK_SLASH%\

cd ..

source $_PROJECT_PATH/common/deleteFolder.sh ${_LIBGPUARRAY_SOURCE_FILENAME}

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
