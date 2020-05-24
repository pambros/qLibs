#!/bin/bash
_SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $_SCRIPT_PATH

_MYENV=$HOME/myenv
_MYENV_APP=$HOME/myenv/app
export PATH=$_MYENV/bin:$_MYENV_APP/bin:$PATH
export LD_LIBRARY_PATH=$_MYENV/lib:$_MYENV_APP/lib:$LD_LIBRARY_PATH

./ASAP