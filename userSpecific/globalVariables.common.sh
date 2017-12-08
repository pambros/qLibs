#!/bin/sh
# repository
	# git https://git-scm.com/
		# https://github.com/git-for-windows/git
		# https://tortoisegit.org/
		# https://github.com/TortoiseGit/TortoiseGit
		# if [ "$_CPU" == "x64" ]; then
			# _GIT_PRECOMPILED=$_REPOSITORY_DIR/git/PortableGit-2.13.2-64-bit.7z.exe
		# else
			# _GIT_PRECOMPILED=$_REPOSITORY_DIR/git/PortableGit-2.13.2-32-bit.7z.exe
		# fi
		
	# nasm http://www.nasm.us/
		_NASM_SOURCE_FILENAME=nasm-2.13.02
		_NASM_SOURCE=$_REPOSITORY_DIR/nasm/$_NASM_SOURCE_FILENAME.tar.xz
		# _NASM_BIN_DIR=$_PROJECT_PATH/thirdParties/nasm/generated/$_USER_SPECIFIC/nasm/bin
		
	# zlib http://zlib.net/
		_ZLIB_SOURCE_FILENAME=zlib-1.2.11
		_ZLIB_SOURCE=$_REPOSITORY_DIR/zlib/$_ZLIB_SOURCE_FILENAME.tar.gz
		# _ZLIB_DIR=$_PROJECT_PATH/thirdParties/zlib/generated/$_USER_SPECIFIC/zlib
		# _ZLIB_INCLUDE_DIR=$_ZLIB_DIR/include
		# _ZLIB_LIB_DIR=$_ZLIB_DIR/lib
		# _ZLIB_LIB=$_ZLIB_LIB_DIR/libzlibstatic.a
		# _ZLIB_DLL_LIB=$_ZLIB_LIB_DIR/libzlib.dll.a
	
	# python https://www.python.org/
		# http://www.lfd.uci.edu/~gohlke/pythonlibs/
		_WHEEL_DIR=$_REPOSITORY_DIR/python
		_PYDICOM_SOURCE=$_WHEEL_DIR/2017_09_26_pydicom-master.zip
		_NUMPY_WHEEL=$_WHEEL_DIR/numpy-1.13.1+mkl-cp36-cp36m-win_amd64.whl
		_SCIPY_WHEEL=$_WHEEL_DIR/scipy-1.0.0b1-cp36-cp36m-win_amd64.whl
		_SCIKIT_LEARN_WHEEL=$_WHEEL_DIR/scikit_learn-0.19.0-cp36-cp36m-win_amd64.whl
		_SCIKIT_IMAGE_WHEEL=$_WHEEL_DIR/scikit_image-0.13.0-cp36-cp36m-win_amd64.whl
		_RPY2_WHEEL=$_WHEEL_DIR/rpy2-2.8.6-cp36-cp36m-win_amd64.whl
		_MAHOTAS_WHEEL=$_WHEEL_DIR/mahotas-1.4.3-cp36-cp36m-win_amd64.whl
		_MYSQL_CLIENT_WHEEL=$_WHEEL_DIR/mysqlclient-1.3.12-cp36-cp36m-win_amd64.whl
		
	# boost http://www.boost.org/
		_BOOST_SOURCE_FILENAME=boost_1_65_1
		# _BOOST_SOURCE_FILENAME=boost_1_63_0
		_BOOST_SOURCE=$_REPOSITORY_DIR/boost/$_BOOST_SOURCE_FILENAME.tar.gz

	# cmake https://cmake.org/
		_CMAKE_SOURCE_FILENAME=cmake-3.10.0
		_CMAKE_SOURCE=$_REPOSITORY_DIR/cmake/$_CMAKE_SOURCE_FILENAME.tar.gz
		
	# gdcm https://sourceforge.net/projects/gdcm/
		_GDCM_SOURCE_FILENAME=gdcm-2.8.4
		# _GDCM_SOURCE_FILENAME=gdcm-2.8.0
		_GDCM_SOURCE=$_REPOSITORY_DIR/gdcm/$_GDCM_SOURCE_FILENAME.tar.gz
		# _GDCM_DIR=$_PROJECT_PATH/thirdParties/gdcm/generated/$_USER_SPECIFIC/gdcm
		# _GDCM_SRC_DEBUG_DIR=$_PROJECT_PATH/thirdParties/gdcm/generated/$_USER_SPECIFIC
		_GDCM_SRC_DIR=$_MYENV_INSTALL/lib/gdcm-2.8
		
	# itk https://itk.org/
		_ITK_SOURCE_FILENAME=InsightToolkit-4.12.2
		# _ITK_SOURCE_FILENAME=InsightToolkit-4.12.0
		_ITK_SOURCE=$_REPOSITORY_DIR/itk/$_ITK_SOURCE_FILENAME.tar.gz
		# _ITK_DIR=$_PROJECT_PATH/thirdParties/itk/generated/$_USER_SPECIFIC/itk
		
	# vtk http://www.vtk.org/
		_VTK_SOURCE_FILENAME=VTK-8.1.0.rc2
		# _VTK_SOURCE_FILENAME=VTK-8.0.1
		_VTK_SOURCE=$_REPOSITORY_DIR/vtk/$_VTK_SOURCE_FILENAME.tar.gz
		# _VTK_DIR=$_PROJECT_PATH/thirdParties/vtk/generated/$_USER_SPECIFIC/vtk
		
	# opencv http://opencv.org/