@set _BATCH_PATH=%~dp0
@set _BATCH_PATH=%_BATCH_PATH:~0,-1%

@rem we have to use cd ... because when we launch the batch as an administrator, the current path is system...
@cd %_BATCH_PATH%
@set _GENERATED_PATH=g
@if not exist %_GENERATED_PATH% (
	@mkdir "%_GENERATED_PATH%"
)
@set _BATCH_NAME=%~n0
@set _BATCH_NAME=%_BATCH_NAME:~0,-8%
%_BATCH_NAME%.bat -nopause > g/stdout%_BATCH_NAME%.txt 2> g/stderr%_BATCH_NAME%.txt