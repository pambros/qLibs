@call ../../localProjectPath.bat
@call "%_PROJECT_PATH%/globalVariables.bat"

@set _GENERATED_PATH=%CD%/generated/%_USER_SPECIFIC%
@if not exist %_GENERATED_PATH% (
	@mkdir "%_GENERATED_PATH%"
)
@cd %_GENERATED_PATH%

%_7_ZIP% e "%_GDCM_SOURCE%" -y 1> nul && %_7_ZIP% x "%_GDCM_SOURCE_FILENAME%.tar" -y 1> nul
@del %_GDCM_SOURCE_FILENAME%.tar

%_CMAKE% -G %_COMPILER_NAME% -DGDCM_BUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=%_GENERATED_PATH%/gdcm %_GENERATED_PATH%/%_GDCM_SOURCE_FILENAME%

%_CMAKE% --build . --config Debug
%_CMAKE% --build . --target install --config Release

@if "%1" neq "-nopause" (
	@pause
)