@setlocal
@echo ------------------------------------------------------------- %_USER_SPECIFIC%

@call "%_PROJECT_PATH%/globalVariables.bat"

@cd "%_PROJECT_PATH%"
@if not exist generated (
	@mkdir "generated"
)
@call makeAll.bat -nopause > generated/stdoutmakeAll.%_USER_SPECIFIC%.txt 2> generated/stderrmakeAll.%_USER_SPECIFIC%.txt

@endlocal
