@call ../../localProjectPath.bat
@call "%_PROJECT_PATH%/globalVariables.bat"

@set _GENERATED_PATH=%CD%/generated/%_USER_SPECIFIC%
@if not exist %_GENERATED_PATH% (
	@mkdir "%_GENERATED_PATH%"
)
@cd %_GENERATED_PATH%

%_7_ZIP% e "%_VTK_SOURCE%" -y 1> nul && %_7_ZIP% x "%_VTK_SOURCE_FILENAME%.tar" -y 1> nul
@del %_VTK_SOURCE_FILENAME%.tar

@rem bug in VTK 8.0.0
@ rem I dont understand why we have to go in ThirdParty folder?
@cd %_VTK_SOURCE_FILENAME%/ThirdParty
%_GIT% apply "../../../../fixVtkTiffCMakeLists.patch"
@cd ../..

@rem @goto _NEXT
	@if %_COMPILER_NAME% == "MinGW Makefiles" @(
		@if not exist %_GENERATED_PATH%/debug (
			@mkdir "%_GENERATED_PATH%/debug"
		)
		@cd debug
		
		%_CMAKE% -G %_COMPILER_NAME% -DCMAKE_BUILD_TYPE=Debug -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=%_GENERATED_PATH%/vtk %_GENERATED_PATH%/%_VTK_SOURCE_FILENAME%

		%_CMAKE% --build .
		
		@cd ..
		
		@if not exist %_GENERATED_PATH%/release (
			@mkdir "%_GENERATED_PATH%/release"
		)
		@cd release
		
		%_CMAKE% -G %_COMPILER_NAME% -DCMAKE_BUILD_TYPE=Release -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=%_GENERATED_PATH%/vtk %_GENERATED_PATH%/%_VTK_SOURCE_FILENAME%

		%_CMAKE% --build . --target install
		
		@cd ..
	) else (
		%_CMAKE% -G %_COMPILER_NAME% -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=%_GENERATED_PATH%/vtk %_GENERATED_PATH%/%_VTK_SOURCE_FILENAME%

		%_CMAKE% --build . --config Debug
		%_CMAKE% --build . --target install --config Release
	)
:_NEXT

@if "%1" neq "-nopause" (
	@pause
)