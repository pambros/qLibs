@set _PYTHON_DIR_WITH_BACK_SLASH=%_PYTHON_DIR:/=\%
@rem @set _SITE_PACKAGES=%_PYTHON_DIR%/Lib/site-packages/
@rem @set _SITE_PACKAGES_WITH_BACK_SLASH=%_SITE_PACKAGES:/=\%
@rem @set PYTHONPATH=%_SITE_PACKAGES_WITH_BACK_SLASH%

@set _TMP_PATH=generated
@if not exist %_TMP_PATH% (
	@mkdir "%_TMP_PATH%"
)
@cd %_TMP_PATH%

%_PYTHON% -m pip install --upgrade pip
%_PYTHON% -m pip install setuptools --upgrade
%_PYTHON% -m pip install cython
%_PYTHON% -m pip install %_NUMPY_WHEEL%

@rem pydicom
@rem %_PYTHON% -m pip uninstall -y pydicom
%_7_ZIP% x "%_PYDICOM_SOURCE%" -y 1> nul
@cd pydicom-master
%_PYTHON% setup.py install --prefix %_PYTHON_DIR_WITH_BACK_SLASH%\
@cd ..
@rem TODO fix deleteFolder, this line doesn't work
@call "%_PROJECT_PATH%/common/deleteFolder.bat" "%_TMP_PATH%/pydicom-master"
@rem %_PYTHON% -m pip install pydicom

%_PYTHON% -m pip install fs
%_PYTHON% -m pip install matplotlib
%_PYTHON% -m pip install protobuf
%_PYTHON% -m pip install %_SCIPY_WHEEL%
%_PYTHON% -m pip install %_SCIKIT_LEARN_WHEEL%
%_PYTHON% -m pip install %_SCIKIT_IMAGE_WHEEL%

%_PYTHON% -m pip install h5py
%_PYTHON% -m pip install requests
%_PYTHON% -m pip install XlsxWriter
%_PYTHON% -m pip install PyYAML

@rem %_PYTHON% -m pip install tensorflow
@rem %_PYTHON% -m pip uninstall -y tensorflow-gpu
@rem %_PYTHON% -m pip uninstall -y tf-nightly-gpu
@rem %_PYTHON% -m pip install tf-nightly-gpu
@rem %_PYTHON% -m pip install tensorflow-gpu

%_PYTHON% -m pip install git+git://github.com/Theano/Theano.git --upgrade --no-deps
%_PYTHON% -m pip install git+git://github.com/fchollet/keras.git --upgrade --no-deps

%_PYTHON% -m pip install tqdm
%_PYTHON% -m pip install %_RPY2_WHEEL%

%_PYTHON% -m pip install ahkab
%_PYTHON% -m pip install MarkupSafe
%_PYTHON% -m pip install mkdocs
%_PYTHON% -m pip install %_MAHOTAS_WHEEL%
%_PYTHON% -m pip install git+git://github.com/luispedro/mahotas.git --upgrade --no-deps

%_PYTHON% -m pip install jupyter

%_PYTHON% -m pip install mako
%_PYTHON% -m pip install nose

%_PYTHON% -m pip install %_MYSQL_CLIENT_WHEEL%

@rem libgpuarray pygpu
@set _BASE=%cd%
%_GIT% clone https://github.com/Theano/libgpuarray.git
%_CMAKE% -G %_COMPILER_NAME% -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=install libgpuarray 
%_CMAKE% --build . --target install --config Release
@cd libgpuarray
%_PYTHON% setup.py build_ext -L"%_BASE%/install/lib" -I"%_BASE%/install/include" --compiler=msvc
%_PYTHON% setup.py install --prefix %_PYTHON_DIR_WITH_BACK_SLASH%\

@if "%1" neq "-nopause" (
	@pause
)