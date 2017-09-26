@set _TO_DELETE_PATH=%1
@echo delete %1
@if exist %_TO_DELETE_PATH% (
	@for /D %%p in ("%_TO_DELETE_PATH%\*.*") do rmdir "%%p" /s /q
	@del "%_TO_DELETE_PATH%\*.*" /q
	@rmdir "%_TO_DELETE_PATH%" /q
)