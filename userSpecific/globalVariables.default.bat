@set _UTIL_DIR=C:/Programs
@set _UTIL_DIR_WITH_BACK_SLASH=%_UTIL_DIR:/=\%

@set _MINGW_BIN=%_UTIL_DIR%/mingw64/bin
@set _MSYS_BIN=%_UTIL_DIR%/msys/bin

@set _MSVC_DIR=%_UTIL_DIR%/Microsoft Visual Studio 14.0
@set _MSVC_BIN=%_MSVC_DIR%/VC/bin
@set _MSVC_BIN_X64=%_MSVC_BIN%/amd64
@set _WINDOWS_KITS_SHARED_INCLUDE_DIR=C:/Program Files (x86)/Windows Kits/10/Include/10.0.14393.0/shared
@set _WINDOWS_KITS_UCRT_INCLUDE_DIR=C:/Program Files (x86)/Windows Kits/10/Include/10.0.14393.0/ucrt

@set _PYTHON_DIR=%_UTIL_DIR%/Python/Python36
@set _PYTHON_INCLUDE_DIR=%_PYTHON_DIR%/include
@set _PYTHON_LIB=%_PYTHON_DIR%/libs/python36.lib
@set _PYTHON="%_PYTHON_DIR%/python.exe"

@set _CMAKE="%_UTIL_DIR%/CMake/bin/cmake.exe"

@set _GIT_BIN=%_UTIL_DIR%/Git/bin
@set _GIT="%_GIT_BIN%/git.exe"

@set _7_ZIP="%_UTIL_DIR%/7-Zip/7z.exe"

@rem name of the compiler using cmake syntax
@set _COMPILER_NAME="Visual Studio 14 2015 Win64"

@set _CPU=x64

@set PATH= 
@set PATH=%PATH%;C:\Windows\system32
@rem for boost library
@set PATH=%PATH%;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\
@rem @set PATH=%PATH%;%_MINGW_BIN%
@rem @set PATH=%PATH%;%_MSYS_BIN%
@set PATH=%PATH%;%_MSVC_BIN_X64%
@set PATH=%PATH%;%_MSVC_BIN%
@set PATH=%PATH%;%_PYTHON_DIR%
@rem @set PATH=%PATH%;%_GIT_BIN%
@set VS150COMNTOOLS= 
@set VS140COMNTOOLS=%_MSVC_DIR%\Common7\Tools\
@set VS120COMNTOOLS= 
@set VS110COMNTOOLS= 
@set VS100COMNTOOLS= 

@set LIBRARY_PATH= 

@set CPLUS_INCLUDE_PATH= 

@set PYTHONPATH= 

@set _DOWNLOAD_DIR=C:/Download
@set _REPOSITORY_DIR=%_DOWNLOAD_DIR%/Repository

@rem doesn't work when you work with machine with different languages (english and french for example)
@rem for english
@set _DATE=%date:~10,4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%
@rem for french
@rem @set _DATE=%date:~6,4%_%date:~3,2%_%date:~0,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%

@rem repository
	@rem mingw https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/7.1.0/threads-posix/seh/
		@rem https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win32/Personal%20Builds/mingw-builds/7.1.0/threads-posix/dwarf/
		@if "%_CPU%" == "x64" @(
			@set _MINGW_PRECOMPILED=%_REPOSITORY_DIR%/mingw-w64/x86_64-7.1.0-release-posix-seh-rt_v5-rev0.7z
		) else @(
			@set _MINGW_PRECOMPILED=%_REPOSITORY_DIR%/mingw-w64/i686-7.1.0-release-posix-dwarf-rt_v5-rev0.7z
		)

	@rem msys https://sourceforge.net/p/mingw-w64/wiki2/MSYS/
		@rem https://sourceforge.net/projects/mingwbuilds/files/external-binary-packages/
		@rem https://sourceforge.net/projects/mingw-w64/files/External%20binary%20packages%20%28Win64%20hosted%29/MSYS%20%2832-bit%29/
		@set _MSYS_PRECOMPILED=%_REPOSITORY_DIR%/msys/2013_05_15_msys+7za+wget+svn+git+mercurial+cvs-rev13.7z

	@rem git https://git-scm.com/
		@rem https://github.com/git-for-windows/git
		@rem https://tortoisegit.org/
		@rem https://github.com/TortoiseGit/TortoiseGit
		@if "%_CPU%" == "x64" @(
			@set _GIT_PRECOMPILED=%_REPOSITORY_DIR%/git/PortableGit-2.13.2-64-bit.7z.exe
		) else @(
			@set _GIT_PRECOMPILED=%_REPOSITORY_DIR%/git/PortableGit-2.13.2-32-bit.7z.exe
		)

	@rem cmake https://cmake.org/
		@set _CMAKE_SOURCE_FILENAME=cmake-3.9.0-rc5
		@rem @set _CMAKE_SOURCE_DIR=%_REPOSITORY_DIR%/cmake/%_CMAKE_SOURCE_FILENAME%.zip
		@if "%_CPU%" == "x64" @(
			@set _CMAKE_PRECOMPILED=%_REPOSITORY_DIR%/cmake/%_CMAKE_SOURCE_FILENAME%-win64-x64.zip
		) else @(
			@set _CMAKE_PRECOMPILED=%_REPOSITORY_DIR%/cmake/%_CMAKE_SOURCE_FILENAME%-win32-x86.zip
		)
		
	@rem nasm http://www.nasm.us/
		@set _NASM_SOURCE_FILENAME=nasm-2.13.01
		@set _NASM_SOURCE=%_REPOSITORY_DIR%/nasm/%_NASM_SOURCE_FILENAME%.tar.xz
		@set _NASM_BIN_DIR=%_PROJECT_PATH%/thirdParties/nasm/generated/%_USER_SPECIFIC%/nasm/bin
		
	@rem zlib http://zlib.net/
		@set _ZLIB_SOURCE_FILENAME=zlib-1.2.11
		@set _ZLIB_SOURCE=%_REPOSITORY_DIR%/zlib/%_ZLIB_SOURCE_FILENAME%.tar.gz
		@set _ZLIB_DIR=%_PROJECT_PATH%/thirdParties/zlib/generated/%_USER_SPECIFIC%/zlib
		@set _ZLIB_INCLUDE_DIR=%_ZLIB_DIR%/include
		@set _ZLIB_LIB_DIR=%_ZLIB_DIR%/lib
		@set _ZLIB_LIB=%_ZLIB_LIB_DIR%/libzlibstatic.a
		@set _ZLIB_DLL_LIB=%_ZLIB_LIB_DIR%/libzlib.dll.a
		
	@rem boost http://www.boost.org/
		@rem @set _BOOST_SOURCE_FILENAME=boost_1_64_0
		@set _BOOST_SOURCE_FILENAME=boost_1_63_0
		@set _BOOST_SOURCE=%_REPOSITORY_DIR%/boost/%_BOOST_SOURCE_FILENAME%.7z
		
	@rem gdcm https://sourceforge.net/projects/gdcm/
		@set _GDCM_SOURCE_FILENAME=gdcm-2.8.0
		@set _GDCM_SOURCE=%_REPOSITORY_DIR%/gdcm/%_GDCM_SOURCE_FILENAME%.tar.bz2
		@set _GDCM_DIR=%_PROJECT_PATH%/thirdParties/gdcm/generated/%_USER_SPECIFIC%/gdcm
		@set _GDCM_SRC_DIR=%_PROJECT_PATH%/thirdParties/gdcm/generated/%_USER_SPECIFIC%
		
	@rem itk https://itk.org/
		@set _ITK_SOURCE_FILENAME=InsightToolkit-4.12.0
		@set _ITK_SOURCE=%_REPOSITORY_DIR%/itk/%_ITK_SOURCE_FILENAME%.tar.gz
		@set _ITK_DIR=%_PROJECT_PATH%/thirdParties/itk/generated/%_USER_SPECIFIC%/itk
		
	@rem vtk http://www.vtk.org/
		@set _VTK_SOURCE_FILENAME=VTK-8.0.0
		@set _VTK_SOURCE=%_REPOSITORY_DIR%/vtk/%_VTK_SOURCE_FILENAME%.tar.gz
		@set _VTK_DIR=%_PROJECT_PATH%/thirdParties/vtk/generated/%_USER_SPECIFIC%/vtk
		
	@rem opencv http://opencv.org/