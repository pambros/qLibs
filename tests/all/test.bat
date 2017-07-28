@setlocal
@echo ------------------------------------------------------------- %_USER_SPECIFIC%

@call "%_PROJECT_PATH%/globalVariables.bat"

@cd "%_PROJECT_PATH%"
@call makeAll.bat -nopause

@endlocal