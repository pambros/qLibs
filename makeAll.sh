#!/bin/sh
source localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh
_CURRENT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # TODO check if we still use this variable

source $_PROJECT_PATH/common/makeSpecific.sh thirdParties nasm
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties zlib
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties boost
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties gdcm
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties itk
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties vtk
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties python

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi