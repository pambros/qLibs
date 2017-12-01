# @setlocal don't need it in shell

_LIB_PATH=$1
_LIB_NAME=$2
echo $_LIB_NAME
cd $_CURRENT_PATH/$_LIB_PATH/$_LIB_NAME

_GENERATED_PATH=generated
mkdir -p $_GENERATED_PATH

./make_$_LIB_NAME.sh -nopause > $_GENERATED_PATH/stdoutmake_$_LIB_NAME.$_USER_SPECIFIC.txt 2> $_GENERATED_PATH/stderrmake_$_LIB_NAME.$_USER_SPECIFIC.txt

# @endlocal
