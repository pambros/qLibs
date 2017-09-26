@call ../../localProjectPath.bat
@call "%_PROJECT_PATH%/globalVariables.bat"

@set _CD=%cd%
@set PATH= 
@set PATH=%PATH%;%CD%/generated/install/bin
@set PATH=%PATH%;C:/Util/Cuda9/bin

@set DEVICE=cuda0
@set GPUARRAY_TEST_DEVICE=cuda0

%_PYTHON% -u testPyGpu.py
pause