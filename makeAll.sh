#!/bin/bash
source ./localProjectPath.sh
source $_PROJECT_PATH/globalVariables.sh
_CURRENT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties nasm
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties zlib

# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties boost
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties cmake

# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties sqlite
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties pugixml
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties libxml2
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties unittestpp

# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties libgpuarray
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties python
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties swig

# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties glib
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties gdkpixbuf
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties cairo
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties liblcms2

# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties libjpeg-turbo
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties libpng
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties openjpeg
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties jasper
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties libtiff
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties dcmtk
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties gdcm
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties openslide

# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties fltk
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties opencv
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties itk
# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties vtk

# source $_PROJECT_PATH/common/makeSpecific.sh thirdParties asap

if [ "$1" != "-nopause" ]; then
	read -n1 -r -p "Press any key to continue..."
fi
