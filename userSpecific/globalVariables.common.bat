@rem repository
	@rem mingw https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/7.1.0/threads-posix/seh/
		@rem https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win32/Personal%20Builds/mingw-builds/7.1.0/threads-posix/dwarf/
		@rem https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/6.3.0/threads-posix/seh/
		@rem https://sourceforge.net/projects/mingw-w64/files/Toolchains%20targetting%20Win64/Personal%20Builds/mingw-builds/5.4.0/threads-posix/seh/
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
		@rem @set _GDCM_SOURCE_FILENAME=gdcm-2.8.2
		@set _GDCM_SOURCE_FILENAME=gdcm-2.8.0
		@set _GDCM_SOURCE=%_REPOSITORY_DIR%/gdcm/%_GDCM_SOURCE_FILENAME%.tar.bz2
		@set _GDCM_DIR=%_PROJECT_PATH%/thirdParties/gdcm/generated/%_USER_SPECIFIC%/gdcm
		@set _GDCM_SRC_DIR=%_PROJECT_PATH%/thirdParties/gdcm/generated/%_USER_SPECIFIC%
		@set _GDCM_SRC_DEBUG_DIR=%_PROJECT_PATH%/thirdParties/gdcm/generated/%_USER_SPECIFIC%
		
	@rem itk https://itk.org/
		@set _ITK_SOURCE_FILENAME=InsightToolkit-4.12.2
		@rem @set _ITK_SOURCE_FILENAME=InsightToolkit-4.12.0
		@set _ITK_SOURCE=%_REPOSITORY_DIR%/itk/%_ITK_SOURCE_FILENAME%.tar.gz
		@set _ITK_DIR=%_PROJECT_PATH%/thirdParties/itk/generated/%_USER_SPECIFIC%/itk
		
	@rem vtk http://www.vtk.org/
		@set _VTK_SOURCE_FILENAME=VTK-8.0.1
		@rem @set _VTK_SOURCE_FILENAME=VTK-8.0.0
		@set _VTK_SOURCE=%_REPOSITORY_DIR%/vtk/%_VTK_SOURCE_FILENAME%.tar.gz
		@set _VTK_DIR=%_PROJECT_PATH%/thirdParties/vtk/generated/%_USER_SPECIFIC%/vtk
	
	@rem python https://www.python.org/
		@rem http://www.lfd.uci.edu/~gohlke/pythonlibs/
		@set _WHEEL_DIR=%_REPOSITORY_DIR%/python
		@set _PYDICOM_SOURCE=%_WHEEL_DIR%/2017_09_26_pydicom-master.zip
		@set _NUMPY_WHEEL=%_WHEEL_DIR%/numpy-1.13.1+mkl-cp36-cp36m-win_amd64.whl
		@set _SCIPY_WHEEL=%_WHEEL_DIR%/scipy-1.0.0b1-cp36-cp36m-win_amd64.whl
		@set _SCIKIT_LEARN_WHEEL=%_WHEEL_DIR%/scikit_learn-0.19.0-cp36-cp36m-win_amd64.whl
		@set _SCIKIT_IMAGE_WHEEL=%_WHEEL_DIR%/scikit_image-0.13.0-cp36-cp36m-win_amd64.whl
		@set _RPY2_WHEEL=%_WHEEL_DIR%/rpy2-2.8.6-cp36-cp36m-win_amd64.whl
		@set _MAHOTAS_WHEEL=%_WHEEL_DIR%/mahotas-1.4.3-cp36-cp36m-win_amd64.whl
		@set _MYSQL_CLIENT_WHEEL=%_WHEEL_DIR%/mysqlclient-1.3.12-cp36-cp36m-win_amd64.whl
		
	@rem opencv http://opencv.org/