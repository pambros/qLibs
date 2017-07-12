@call ../../localProjectPath.bat
@call "%_PROJECT_PATH%/globalVariables.bat"

@set _GENERATED_PATH=%CD%/generated/%_USER_SPECIFIC%
@if not exist %_GENERATED_PATH% (
	@mkdir "%_GENERATED_PATH%"
)
@cd %_GENERATED_PATH%

%_7_ZIP% e "%_NASM_SOURCE%" -y 1> nul && %_7_ZIP% x "%_NASM_SOURCE_FILENAME%.tar" -y 1> nul
@del %_NASM_SOURCE_FILENAME%.tar

@set PATH= 
@set PATH=%PATH%;C:\Windows\system32
@set PATH=%PATH%;%_MINGW_BIN%
@set PATH=%PATH%;%_MSYS_BIN%
"%_MSYS_BIN%/bash.exe" ../../make_nasm.sh

@if "%1" neq "-nopause" (
	@pause
)