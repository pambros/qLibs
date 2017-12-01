@setlocal
@rem @set _OLD_PATH=%PATH%

@set _LIB_PATH=%1
@set _LIB_NAME=%2
@echo %_LIB_NAME%
@cd %_CURRENT_PATH%/%_LIB_PATH%/%_LIB_NAME%

@set _GENERATED_PATH=generated
@if not exist %_GENERATED_PATH% (
	@mkdir "%_GENERATED_PATH%"
)

@call make_%_LIB_NAME%.bat -nopause > %_GENERATED_PATH%/stdoutmake_%_LIB_NAME%.%_USER_SPECIFIC%.txt 2> %_GENERATED_PATH%/stderrmake_%_LIB_NAME%.%_USER_SPECIFIC%.txt

@rem @set PATH=%_OLD_PATH%
@endlocal
