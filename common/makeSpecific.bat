@set _OLD_PATH=%PATH%

@set _LIB_PATH=%1
@set _LIB_NAME=%2
@echo %_LIB_NAME%
@cd %_CURRENT_PATH%/%_LIB_PATH%/%_LIB_NAME%
@call make_%_LIB_NAME%.bat -nopause

@set PATH=%_OLD_PATH%