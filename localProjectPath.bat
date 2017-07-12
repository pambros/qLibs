@if "%_USER_SPECIFIC%" == "" @(
	@if exist "%~dp0/userSpecific/localProjectPath.userSpecific.bat" (
		@call "%~dp0/userSpecific/localProjectPath.userSpecific.bat"
	) else (
		@set _USER_SPECIFIC=default
	)
)
@if "%_PROJECT_PATH%" == "" @(
	@set _PROJECT_PATH_BACK_SLASH=%~dp0
)
@set _PROJECT_PATH=%_PROJECT_PATH_BACK_SLASH:\=/%