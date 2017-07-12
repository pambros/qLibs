@call ../../localProjectPath.bat
@call "%_PROJECT_PATH%/globalVariables.bat"

@set _GENERATED_PATH=%CD%/generated/%_USER_SPECIFIC%
@if not exist %_GENERATED_PATH% (
	@mkdir "%_GENERATED_PATH%"
)
@cd %_GENERATED_PATH%

%_7_ZIP% x "%_BOOST_SOURCE%" -y 1> nul

@if %_COMPILER_NAME% == "MinGW Makefiles" @(
	@set _TOOLSET=toolset=gcc
	@set _COMPILER=mingw
) else (
	@if %_COMPILER_NAME% == "Visual Studio 12 2013 Win64" @(
		@set _TOOLSET=toolset=msvc-12.0
		@set _COMPILER=vc12
	)
	@if %_COMPILER_NAME% == "Visual Studio 14 2015 Win64" @(
		@set _TOOLSET=toolset=msvc-14.0
		@set _COMPILER=vc14
	)
)

@if not %_COMPILER_NAME% == "MinGW Makefiles" @(
	@set _TOOLSET=%_TOOLSET% windows-api=desktop include="%_MSVC_DIR%/VC/include" include="%_WINDOWS_KITS_SHARED_INCLUDE_DIR%" include="%_WINDOWS_KITS_UCRT_INCLUDE_DIR%"
)

@cd %_BOOST_SOURCE_FILENAME%
call bootstrap.bat %_COMPILER%

@rem b2 --help
@rem b2 --help-options
@rem https://github.com/boostorg/build/issues/194 Broken build boost_python in release 1.64.0

@set _MODEL=address-model=32 architecture=x86
@if %_CPU% == x64 @(
	@set _MODEL=address-model=64
)

@rem @set _BOOST_BUILD=variant=debug,release link=shared threading=multi runtime-link=shared
@rem @set _BOOST_BUILD=variant=debug,release link=static threading=multi runtime-link=shared
@rem @set _BOOST_OPTIONS=--stagedir="%_GENERATED_PATH%/boost_stage" --build-dir="%_GENERATED_PATH%/boost_build" %_BOOST_BUILD% %_TOOLSET% %_MODEL% --with-python stage
@set _BOOST_OPTIONS=--stagedir="%_GENERATED_PATH%/boost_stage" --build-dir="%_GENERATED_PATH%/boost_build" %_TOOLSET% %_MODEL% --with-python
@echo %_BOOST_OPTIONS%
@rem b2 --show-libraries %_BOOST_OPTIONS%
b2 %_BOOST_OPTIONS%
@rem need to check diff with stage? b2 --prefix="%_GENERATED_PATH%/boost" install

@if "%1" neq "-nopause" (
	@pause
)