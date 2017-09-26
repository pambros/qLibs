@set _PYTHON_DIR_WITH_BACK_SLASH=%_PYTHON_DIR:/=\%
@rem @set _SITE_PACKAGES=%_PYTHON_DIR%/Lib/site-packages/
@rem @set _SITE_PACKAGES_WITH_BACK_SLASH=%_SITE_PACKAGES:/=\%
@rem @set PYTHONPATH=%_SITE_PACKAGES_WITH_BACK_SLASH%

@set _TMP_PATH=generated
@if not exist %_TMP_PATH% (
	@mkdir "%_TMP_PATH%"
)
@cd %_TMP_PATH%

@set _WHEEL_DIR=%_REPOSITORY_DIR%/python/more

@rem %_PYTHON% -m pip install --upgrade pip
@rem %_PYTHON% -m pip install setuptools --upgrade
@rem %_PYTHON% -m pip install cython
@rem %_PYTHON% -m pip install %_WHEEL_DIR%/numpy-1.13.1+mkl-cp36-cp36m-win_amd64.whl

@rem pydicom
@rem @rem %_PYTHON% -m pip uninstall -y pydicom
@rem %_7_ZIP% x "%_WHEEL_DIR%/2017_09_26_pydicom-master.zip" -y 1> nul
@rem @cd pydicom-master
@rem %_PYTHON% setup.py install --prefix %_PYTHON_DIR_WITH_BACK_SLASH%\
@rem @cd ..
@rem @rem TODO fix deleteFolder, this line doesn't work
@rem @call "%_PROJECT_PATH%/common/deleteFolder.bat" "%_TMP_PATH%/pydicom-master"
@rem @rem %_PYTHON% -m pip install pydicom

@rem %_PYTHON% -m pip install fs
@rem %_PYTHON% -m pip install matplotlib
@rem %_PYTHON% -m pip install protobuf
@rem %_PYTHON% -m pip install %_WHEEL_DIR%/scipy-1.0.0b1-cp36-cp36m-win_amd64.whl
@rem @rem %_PYTHON% -m pip install %_WHEEL_DIR%/scipy-0.19.1-cp36-cp36m-win_amd64.whl
@rem %_PYTHON% -m pip install %_WHEEL_DIR%/scikit_learn-0.19.0-cp36-cp36m-win_amd64.whl
@rem @rem %_PYTHON% -m pip install %_WHEEL_DIR%/scikit_learn-0.18.2-cp36-cp36m-win_amd64.whl
@rem %_PYTHON% -m pip install %_WHEEL_DIR%/scikit_image-0.13.0-cp36-cp36m-win_amd64.whl

@rem %_PYTHON% -m pip install h5py
@rem %_PYTHON% -m pip install requests
@rem %_PYTHON% -m pip install XlsxWriter
@rem %_PYTHON% -m pip install PyYAML

@rem %_PYTHON% -m pip install git+git://github.com/Theano/Theano.git --upgrade --no-deps
@rem %_PYTHON% -m pip install git+git://github.com/fchollet/keras.git --upgrade --no-deps

@rem %_PYTHON% -m pip install tqdm
@rem %_PYTHON% -m pip install %_WHEEL_DIR%/rpy2-2.8.6-cp36-cp36m-win_amd64.whl

@rem %_PYTHON% -m pip install ahkab
@rem %_PYTHON% -m pip install MarkupSafe
@rem %_PYTHON% -m pip install mkdocs
@rem %_PYTHON% -m pip install %_WHEEL_DIR%/mahotas-1.4.3-cp36-cp36m-win_amd64.whl
@rem %_PYTHON% -m pip install git+git://github.com/luispedro/mahotas.git --upgrade --no-deps

@rem %_PYTHON% -m pip install jupyter

@rem %_PYTHON% -m pip install mako
@rem %_PYTHON% -m pip install nose

@rem %_PYTHON% -m pip install %_WHEEL_DIR%/mysqlclient-1.3.12-cp36-cp36m-win_amd64.whl
@rem @rem %_PYTHON% -m pip install %_WHEEL_DIR%/mysqlclient-1.3.10-cp36-cp36m-win_amd64.whl

@rem @rem libgpuarray pygpu
@rem @set _BASE=%cd%
@rem git clone https://github.com/Theano/libgpuarray.git
@rem %_CMAKE% -G %_COMPILER_NAME% -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=install libgpuarray 
@rem %_CMAKE% --build . --target install --config Release
@rem @cd libgpuarray
@rem %_PYTHON% setup.py build_ext -L"%_BASE%/install/lib" -I"%_BASE%/install/include" --compiler=msvc
@rem %_PYTHON% setup.py install --prefix %_PYTHON_DIR_WITH_BACK_SLASH%\

@if "%1" neq "-nopause" (
	@pause
)