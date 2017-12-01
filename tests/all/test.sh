# @setlocal don't need it in shell
echo ------------------------------------------------------------- $_USER_SPECIFIC

source $_PROJECT_PATH/globalVariables.sh

cd $_PROJECT_PATH
source makeAll.sh -nopause > generated/stdoutmakeAll.$_USER_SPECIFIC.txt 2> generated/stderrmakeAll.$_USER_SPECIFIC.txt

# @endlocal
