@echo off

SET CONFIGURATION_1=Visual Studio 16 2019 Configuration. [msvc-v142 toolset, x64 arch]
SET CONFIGURATION_2=Visual Studio 16 2019 Configuration. [msvc-v142 toolset, x86 arch]

SET ARG=%~1

if "%ARG%"=="" (
	echo 'configure.bat -1' = %CONFIGURATION_1%
	echo 'configure.bat -2' = %CONFIGURATION_2%
	exit /b 1
	)


if "%ARG%"=="-1" (
	echo Starting %CONFIGURATION_1%
	cmake -G "Visual Studio 16 2019" -T v142 -A x64 -Bbuild
	)
if "%ARG%"=="-2" (
	echo Starting %CONFIGURATION_2%
	cmake -G "Visual Studio 16 2019" -T v142 -A Win32 -Bbuild
	)
pause