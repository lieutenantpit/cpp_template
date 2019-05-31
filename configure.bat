@echo off

SET CONFIGURATION_1=Visual Studio 16 2019 Configuration. [msvc-v142 toolset, x64 arch]
SET CONFIGURATION_2=Visual Studio 16 2019 Configuration. [msvc-v142 toolset, x86 arch]
SET CONFIGURATION_3=Visual Studio 16 2019 Configuration. [msvc-v141 toolset, x64 arch]
SET CONFIGURATION_4=Visual Studio 16 2019 Configuration. [msvc-v141 toolset, x86 arch]

SET ARG=%~1

if "%ARG%"=="" (
	echo 'configure.bat -1' = %CONFIGURATION_1%
	echo 'configure.bat -2' = %CONFIGURATION_2%
	echo 'configure.bat -3' = %CONFIGURATION_3%
	echo 'configure.bat -4' = %CONFIGURATION_4%
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
if "%ARG%"=="-3" (
	echo Starting %CONFIGURATION_3%
	cmake -G "Visual Studio 16 2019" -T v141 -A x64 -Bbuild
	)
if "%ARG%"=="-4" (
	echo Starting %CONFIGURATION_4%
	cmake -G "Visual Studio 16 2019" -T v141 -A Win32 -Bbuild
	)	
pause
