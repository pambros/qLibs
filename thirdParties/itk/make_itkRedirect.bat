@set _BATCH_NAME=%~n0
@set _BATCH_NAME=%_BATCH_NAME:~0,-8%
@set _GENERATED_PATH=g
@if not exist %_GENERATED_PATH% (
	@mkdir "%_GENERATED_PATH%"
)
%_BATCH_NAME%.bat -nopause > g/stdout%_BATCH_NAME%.txt 2> g/stderr%_BATCH_NAME%.txt