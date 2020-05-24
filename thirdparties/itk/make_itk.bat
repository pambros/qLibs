@call ../../localProjectPath.bat
@call "%_PROJECT_PATH%/globalVariables.bat"

@set _GENERATED_PATH=%CD%/g/%_USER_SPECIFIC%
@if not exist %_GENERATED_PATH% (
	@mkdir "%_GENERATED_PATH%"
)
@cd %_GENERATED_PATH%

%_7_ZIP% e "%_ITK_SOURCE%" -y 1> nul && %_7_ZIP% x "%_ITK_SOURCE_FILENAME%.tar" -y 1> nul
@del %_ITK_SOURCE_FILENAME%.tar
@ren %_ITK_SOURCE_FILENAME% i

@if %_COMPILER_NAME% == "MinGW Makefiles" @(
	@rem @if not exist %_GENERATED_PATH%/d (
		@rem @mkdir "%_GENERATED_PATH%/d"
	@rem )
	@rem @cd d
	
	@rem %_CMAKE% -G %_COMPILER_NAME% -DCMAKE_BUILD_TYPE=Debug -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON -DITK_USE_SYSTEM_GDCM=ON -DGDCM_DIR="%_GDCM_SRC_DEBUG_DIR%" -DCMAKE_INSTALL_PREFIX=%_GENERATED_PATH%/itk %_GENERATED_PATH%/i

	@rem %_CMAKE% --build .
	
	@rem @cd ..
	
	@if not exist %_GENERATED_PATH%/r (
		@mkdir "%_GENERATED_PATH%/r"
	)
	@cd r
	
	%_CMAKE% -G %_COMPILER_NAME% -DCMAKE_BUILD_TYPE=Release -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON -DITK_USE_SYSTEM_GDCM=ON -DGDCM_DIR="%_GDCM_SRC_DIR%" -DCMAKE_INSTALL_PREFIX=%_GENERATED_PATH%/itk %_GENERATED_PATH%/i

	%_CMAKE% --build . --target install
	
	@cd ..
) else (
	%_CMAKE% -G %_COMPILER_NAME% -DBUILD_EXAMPLES=OFF -DBUILD_TESTING=OFF -DBUILD_SHARED_LIBS=ON -DITK_USE_SYSTEM_GDCM=ON -DGDCM_DIR="%_GDCM_SRC_DIR%" -DCMAKE_INSTALL_PREFIX=%_GENERATED_PATH%/itk %_GENERATED_PATH%/i

	%_CMAKE% --build . --config Debug
	%_CMAKE% --build . --target install --config Release

	@rem %_MS_BUILD% %_GENERATED_PATH%/ITK.sln /p:Configuration=Debug /p:Platform=x64 /m
	@rem %_MS_BUILD% %_GENERATED_PATH%/ITK.sln /p:Configuration=Release /p:Platform=x64 /m
	@rem %_MS_BUILD% %_GENERATED_PATH%/INSTALL.vcxproj /p:Configuration=Release /p:Platform=x64 /m
)
	
@if "%1" neq "-nopause" (
	@pause
)