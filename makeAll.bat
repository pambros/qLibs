@call localProjectPath.bat
@call "%_PROJECT_PATH%/globalVariables.bat"
@set _CURRENT_PATH=%cd%

@call %_PROJECT_PATH%/common/makeSpecific.bat thirdParties nasm
@call %_PROJECT_PATH%/common/makeSpecific.bat thirdParties zlib
@call %_PROJECT_PATH%/common/makeSpecific.bat thirdParties boost
@call %_PROJECT_PATH%/common/makeSpecific.bat thirdParties gdcm
@call %_PROJECT_PATH%/common/makeSpecific.bat thirdParties itk
@call %_PROJECT_PATH%/common/makeSpecific.bat thirdParties vtk

@if "%1" neq "-nopause" (
	@pause
)