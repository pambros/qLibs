@set _UTIL_DIR=C:/Programs
@set _UTIL_DIR_WITH_BACK_SLASH=%_UTIL_DIR:/=\%

@set _MINGW_BIN_DIR=%_UTIL_DIR%/mingw64/bin
@set _MSYS_BIN_DIR=%_UTIL_DIR%/msys/bin

@set _MSVC_DIR=%_UTIL_DIR%/Microsoft Visual Studio 14.0
@set _MSVC_BIN_DIR=%_MSVC_DIR%/VC/bin
@set _MSVC_BIN_X64_DIR=%_MSVC_BIN_DIR%/amd64
@set _MSVC_BIN_X86_AMD64_DIR=%_MSVC_BIN_DIR%/x86_amd64
@set _WINDOWS_KITS_SHARED_INCLUDE_DIR=C:/Program Files (x86)/Windows Kits/10/Include/10.0.14393.0/shared
@set _WINDOWS_KITS_UCRT_INCLUDE_DIR=C:/Program Files (x86)/Windows Kits/10/Include/10.0.14393.0/ucrt

@set _PYTHON_DIR=%_UTIL_DIR%/Python/Python36
@set _PYTHON_INCLUDE_DIR=%_PYTHON_DIR%/include
@set _PYTHON_LIB=%_PYTHON_DIR%/libs/python36.lib
@set _PYTHON="%_PYTHON_DIR%/python.exe"

@set _CMAKE="%_UTIL_DIR%/CMake/bin/cmake.exe"

@set _GIT_BIN_DIR=%_UTIL_DIR%/Git/bin
@set _GIT="%_GIT_BIN_DIR%/git.exe"

@set _7_ZIP="%_UTIL_DIR%/7-Zip/7z.exe"

@set _CUDA_BIN_DIR=%_UTIL_DIR%/Cuda/bin

@rem name of the compiler using cmake syntax
@set _COMPILER_NAME="Visual Studio 14 2015 Win64"

@set _CPU=x64

@set PATH= 
@set PATH=%PATH%;C:/Windows/system32
@rem for boost library
@set PATH=%PATH%;%SYSTEMROOT%/System32/WindowsPowerShell/v1.0/
@rem @set PATH=%PATH%;%_MINGW_BIN_DIR%
@rem @set PATH=%PATH%;%_MSYS_BIN_DIR%
@set PATH=%PATH%;%_MSVC_BIN_X64_DIR%
@set PATH=%PATH%;%_MSVC_BIN_X86_AMD64_DIR%
@set PATH=%PATH%;%_MSVC_BIN_DIR%
@set PATH=%PATH%;%_PYTHON_DIR%
@set PATH=%PATH%;%_GIT_BIN_DIR%
@set VS150COMNTOOLS= 
@set VS140COMNTOOLS=%_MSVC_DIR%/Common7/Tools/
@set VS120COMNTOOLS= 
@set VS110COMNTOOLS= 
@set VS100COMNTOOLS= 

@set LIBRARY_PATH= 

@set CPLUS_INCLUDE_PATH= 

@set PYTHONPATH= 

@set _DOWNLOAD_DIR=C:/Download
@set _REPOSITORY_DIR=%_DOWNLOAD_DIR%/repository

@rem doesn't work when you work with machine with different languages (english and french for example)
@rem for english
@set _DATE=%date:~10,4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%
@rem for french
@rem @set _DATE=%date:~6,4%_%date:~3,2%_%date:~0,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%

@call "%_PROJECT_PATH%/userSpecific/globalVariables.common.bat"