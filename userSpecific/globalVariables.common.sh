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
		
	# boost http://www.boost.org/
		_BOOST_SOURCE_FILENAME=boost_1_65_1
		# _BOOST_SOURCE_FILENAME=boost_1_63_0
		_BOOST_SOURCE=$_REPOSITORY_DIR/boost/$_BOOST_SOURCE_FILENAME.tar.gz

	# cmake https://cmake.org/
		_CMAKE_SOURCE_FILENAME=cmake-3.10.0
		_CMAKE_SOURCE=$_REPOSITORY_DIR/cmake/$_CMAKE_SOURCE_FILENAME.tar.gz
		
	# sqlite https://www.sqlite.org/
		_SQLITE_SOURCE_FILENAME=sqlite-autoconf-3200100
		_SQLITE_SOURCE=$_REPOSITORY_DIR/sqlite/$_SQLITE_SOURCE_FILENAME.tar.gz
		
	# pugixml https://pugixml.org/
		_PUGIXML_SOURCE_FILENAME=pugixml-1.8
		_PUGIXML_SOURCE=$_REPOSITORY_DIR/pugixml/$_PUGIXML_SOURCE_FILENAME.tar.gz
		
	# libxml2 http://xmlsoft.org/
		_LIB_XML2_SOURCE_FILENAME=libxml2-2.9.7
		_LIB_XML2_SOURCE=$_REPOSITORY_DIR/libxml2/$_LIB_XML2_SOURCE_FILENAME.tar.gz
		
	# unittestpp https://github.com/unittest-cpp/unittest-cpp
		_UNITTESTPP_SOURCE_FILENAME=unittest-cpp-2.0.0
		_UNITTESTPP_SOURCE=$_REPOSITORY_DIR/unittestpp/$_UNITTESTPP_SOURCE_FILENAME.tar.gz
		
	# libgpuarray https://github.com/Theano/libgpuarray
		_LIBGPUARRAY_SOURCE_FILENAME=libgpuarray-0.7.5
		_LIBGPUARRAY_SOURCE=$_REPOSITORY_DIR/libgpuarray/$_LIBGPUARRAY_SOURCE_FILENAME.tar.gz
	
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
		
	# swig http://www.swig.org/
		_SWIG_SOURCE_FILENAME=swig-3.0.12
		_SWIG_SOURCE=$_REPOSITORY_DIR/swig/$_SWIG_SOURCE_FILENAME.tar.gz
		
	# glib https://github.com/GNOME/glib
		_GLIB_SOURCE_FILENAME=glib-2.54.3
		_GLIB_SOURCE=$_REPOSITORY_DIR/glib/$_GLIB_SOURCE_FILENAME.tar.xz
		
	# gdkpixbuf https://github.com/GNOME/gdk-pixbuf
		_GDKPIXBUF_SOURCE_FILENAME=gdk-pixbuf-2.36.11
		_GDKPIXBUF_SOURCE=$_REPOSITORY_DIR/gdkpixbuf/$_GDKPIXBUF_SOURCE_FILENAME.tar.xz
		
	# cairo https://cairographics.org/
		_CAIRO_SOURCE_FILENAME=cairo-1.14.12
		_CAIRO_SOURCE=$_REPOSITORY_DIR/cairo/$_CAIRO_SOURCE_FILENAME.tar.xz
		
	# liblcms2 http://www.littlecms.com/
		
	# libpng http://www.libpng.org/pub/png/
		_LIB_PNG_SOURCE_FILENAME=libpng-1.6.34
		_LIB_PNG_SOURCE=$_REPOSITORY_DIR/libpng/$_LIB_PNG_SOURCE_FILENAME.tar.gz
		
	# libjpeg-turbo https://github.com/libjpeg-turbo/libjpeg-turbo
		_LIB_JPEG_TURBO_SOURCE_FILENAME=libjpeg-turbo-1.5.3
		_LIB_JPEG_TURBO_SOURCE=$_REPOSITORY_DIR/libjpeg-turbo/$_LIB_JPEG_TURBO_SOURCE_FILENAME.tar.gz
		
	# openjpeg http://www.openjpeg.org/
		# dependency liblcms2 libtiff libpng libz
		_OPEN_JPEG_SOURCE_FILENAME=openjpeg-2.3.0
		_OPEN_JPEG_SOURCE=$_REPOSITORY_DIR/openjpeg/$_OPEN_JPEG_SOURCE_FILENAME.tar.gz
		
	# jasper https://www.ece.uvic.ca/~frodo/jasper/
		_JASPER_SOURCE_FILENAME=jasper-2.0.14
		_JASPER_SOURCE=$_REPOSITORY_DIR/jasper/$_JASPER_SOURCE_FILENAME.tar.gz
		
	# libtiff http://www.libtiff.org/
		_LIB_TIFF_SOURCE_FILENAME=tiff-4.0.9
		_LIB_TIFF_SOURCE=$_REPOSITORY_DIR/libtiff/$_LIB_TIFF_SOURCE_FILENAME.tar.gz
		
	# dcmtk http://dicom.offis.de/dcmtk.php.en
		_DCMTK_SOURCE_FILENAME=dcmtk-DCMTK-3.6.2
		_DCMTK_SOURCE=$_REPOSITORY_DIR/dcmtk/$_DCMTK_SOURCE_FILENAME.tar.gz
		
	# gdcm https://sourceforge.net/projects/gdcm/
		_GDCM_SOURCE_FILENAME=gdcm-2.8.4
		# _GDCM_SOURCE_FILENAME=gdcm-2.8.0
		_GDCM_SOURCE=$_REPOSITORY_DIR/gdcm/$_GDCM_SOURCE_FILENAME.tar.gz
		# _GDCM_DIR=$_PROJECT_PATH/thirdParties/gdcm/generated/$_USER_SPECIFIC/gdcm
		# _GDCM_SRC_DEBUG_DIR=$_PROJECT_PATH/thirdParties/gdcm/generated/$_USER_SPECIFIC
		_GDCM_SRC_DIR=$_MYENV_INSTALL/lib/gdcm-2.8
		
	# openslide http://openslide.org/
		_OPENSLIDE_SOURCE_FILENAME=openslide-3.4.1
		_OPENSLIDE_SOURCE=$_REPOSITORY_DIR/openslide/$_OPENSLIDE_SOURCE_FILENAME.tar.gz
		_OPENSLIDE_PYTHON_SOURCE_FILENAME=openslide-python-1.1.1
		_OPENSLIDE_PYTHON_SOURCE=$_REPOSITORY_DIR/openslide/$_OPENSLIDE_PYTHON_SOURCE_FILENAME.tar.gz
		
	# fltk http://www.fltk.org/index.php
		_FLTK_SOURCE_FILENAME=fltk-1.4.x-r12643
		_FLTK_SOURCE=$_REPOSITORY_DIR/fltk/$_FLTK_SOURCE_FILENAME.tar.gz
	
	# opencv http://opencv.org/
		_OPENCV_SOURCE_FILENAME=opencv-3.4.0
		_OPENCV_SOURCE=$_REPOSITORY_DIR/opencv/$_OPENCV_SOURCE_FILENAME.tar.gz
		_OPENCV_CONTRIB_SOURCE_FILENAME=opencv_contrib-3.4.0
		_OPENCV_CONTRIB_SOURCE=$_REPOSITORY_DIR/opencv/$_OPENCV_CONTRIB_SOURCE_FILENAME.tar.gz
		
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
		
	# asap https://github.com/GeertLitjens/ASAP
		_ASAP_SOURCE_FILENAME=ASAP-1.7.3
		_ASAP_SOURCE=$_REPOSITORY_DIR/asap/$_ASAP_SOURCE_FILENAME.tar.gz