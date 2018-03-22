@set _PYTHON_DIR_WITH_BACK_SLASH=%_PYTHON_DIR:/=\%
@rem @set _SITE_PACKAGES=%_PYTHON_DIR%/Lib/site-packages/
@rem @set _SITE_PACKAGES_WITH_BACK_SLASH=%_SITE_PACKAGES:/=\%
@rem @set PYTHONPATH=%_SITE_PACKAGES_WITH_BACK_SLASH%

@set _TMP_PATH=generated
@if not exist %_TMP_PATH% (
	@mkdir "%_TMP_PATH%"
)
@cd %_TMP_PATH%

@set _JUPYTER="%_PYTHON_DIR%/Scripts/jupyter.exe"
@set PATH=%PATH%;%_PYTHON_DIR%/Scripts

@rem @exit

%_PYTHON% -m pip install --upgrade pip
%_PYTHON% -m pip install setuptools --upgrade
%_PYTHON% -m pip install cython
%_PYTHON% -m pip install %_NUMPY_WHEEL%

@rem %_PYTHON% -m pip uninstall -y pydicom
@rem %_PYTHON% -m pip install pydicom
%_7_ZIP% x "%_PYDICOM_SOURCE%" -y 1> nul
@cd pydicom-master
%_PYTHON% setup.py install --prefix %_PYTHON_DIR_WITH_BACK_SLASH%\
@cd ..
@rem TODO fix deleteFolder, this line doesn't work
@call "%_PROJECT_PATH%/common/deleteFolder.bat" "%_TMP_PATH%/pydicom-master"

%_PYTHON% -m pip install sortedcontainers
%_PYTHON% -m pip install fs
%_PYTHON% -m pip install matplotlib
%_PYTHON% -m pip install protobuf
%_PYTHON% -m pip install %_SCIPY_WHEEL%
%_PYTHON% -m pip install %_SCIKIT_LEARN_WHEEL%
@rem %_PYTHON% -m pip install %_SCIKIT_IMAGE_WHEEL%
@rem dependency of last github scikit-image
%_PYTHON% -m pip install dask
%_PYTHON% -m pip install git+git://github.com/scikit-image/scikit-image.git --upgrade --no-deps

%_PYTHON% -m pip install h5py
%_PYTHON% -m pip install requests
%_PYTHON% -m pip install XlsxWriter
%_PYTHON% -m pip install PyYAML

@rem %_PYTHON% -m pip install tensorflow
@rem %_PYTHON% -m pip uninstall -y tensorflow-gpu
@rem %_PYTHON% -m pip uninstall -y tf-nightly-gpu
@rem %_PYTHON% -m pip install tf-nightly-gpu
%_PYTHON% -m pip install tensorflow-gpu

%_PYTHON% -m pip install git+git://github.com/Theano/Theano.git --upgrade --no-deps
%_PYTHON% -m pip install git+git://github.com/fchollet/keras.git --upgrade --no-deps

%_PYTHON% -m pip install tqdm
%_PYTHON% -m pip install %_RPY2_WHEEL%

%_PYTHON% -m pip install ahkab
%_PYTHON% -m pip install MarkupSafe
%_PYTHON% -m pip install mkdocs
%_PYTHON% -m pip install %_MAHOTAS_WHEEL%
%_PYTHON% -m pip install git+git://github.com/luispedro/mahotas.git --upgrade --no-deps

%_PYTHON% -m pip install jupyter --upgrade
%_PYTHON% -m pip install https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master --upgrade
%_PYTHON% -m pip install jupyter_nbextensions_configurator
@rem this one works on linux but not on windows
@rem %_JUPYTER% contrib nbextension install --user
%_JUPYTER% contrib nbextensions install --sys-prefix --skip-running-check
%_JUPYTER% nbextensions_configurator enable --user
@rem add Variable inspector, Table of contents, collapsible headings, comment/uncomment, codefolding via http://localhost:8888/tree#nbextensions_configurator or in command-line like below (not tried)
@rem check "Collapse/uncollapse ToC sections" in Table of contents options
@rem jupyter nbextension enable codefolding/main
@rem jupyter nbextension disable codefolding/main

%_PYTHON% -m pip install mako
%_PYTHON% -m pip install nose

%_PYTHON% -m pip install binpacking
%_PYTHON% -m pip install pandas

%_PYTHON% -m pip install %_MYSQL_CLIENT_WHEEL%

%_PYTHON% -m pip install %_OPEN_SLIDE_WHEEL%

@rem %_PYTHON% -m pip install lime
@rem %_PYTHON% -m pip install git+git://github.com/marcotcr/lime.git --upgrade --no-deps
@rem %_7_ZIP% x "2018_02_08_lime-master.zip" -y 1> nul
%_GIT% clone https://github.com/marcotcr/lime.git
@cd lime
%_PYTHON% setup.py install --prefix %_PYTHON_DIR_WITH_BACK_SLASH%\
@cd ..
@rem TODO fix deleteFolder, this line doesn't work
@call "%_PROJECT_PATH%/common/deleteFolder.bat" "%_TMP_PATH%/lime"

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