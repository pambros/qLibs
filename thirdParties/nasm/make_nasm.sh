. ../../../../common/util.sh
_SH_GENERATED_PATH=$(pathWindowsToUnix ${_GENERATED_PATH})
# echo ${_SH_GENERATED_PATH}
cd ${_NASM_SOURCE_FILENAME}
./configure --host=x86_64-w64-mingw32 --build=x86_64-w64-mingw32 --prefix=${_SH_GENERATED_PATH}/nasm
make
make install
make rdf
make rdf_install