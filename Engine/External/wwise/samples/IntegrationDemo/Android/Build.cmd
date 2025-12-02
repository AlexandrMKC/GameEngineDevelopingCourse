@echo off
rem Audiokinetic Integration Demo Android Build Script
SETLOCAL
set tmpNDKROOT="%NDKROOT%"
set inDir=%~dp0
set inDir=%inDir:\=/%
set inDir=%inDir: =\ %

Set WWISE_ROOT=%~dp0\..\..\..\..

Echo Entering directory %inDir%
pushd %~dp0
rem Parse Parameters...
rem Looking for help?
if /I "%1" == "help" goto SHOW_USAGE
if /I "%1" == "-h" goto SHOW_USAGE
if /I "%1" == "-help" goto SHOW_USAGE
if /I "%1" == "--help" goto SHOW_USAGE
if /I "%1" == "/?" goto SHOW_USAGE
if /I "%1" == "/help" goto SHOW_USAGE
if /I "%1" == ""  goto SHOW_USAGE

if /I "%1" == "armeabi-v7a" (
    Set ANDROID_ARCH=armeabi-v7a
) else (
    if /I "%1" == "x86" (
        Set ANDROID_ARCH=x86
    ) else (
        if /I "%1" == "arm64-v8a" (
            Set ANDROID_ARCH=arm64-v8a
        ) else (
            if /I "%1" == "x86_64" (
                Set ANDROID_ARCH=x86_64
            ) else (
                Echo . error Invalid arch: %1
                goto END
            )
        )
    )
)

if /I "%2" == "debug" (
 Set CONFIG=Debug
) else (
    if /I "%2" == "profile" (
     Set CONFIG=Profile
    ) else (
        if /I "%2" == "release" (
         Set CONFIG=Release
        ) else (
            Echo . error Invalid config: %2
            goto END
        )
    )
)

set NDKROOT=%NDKROOT:\=/%
set NDKROOT=%NDKROOT: =\ %
Echo New NDKROOT = %NDKROOT%

REM Entering CMake directory
pushd IntegrationDemo_Android

Set CMAKE_BUILD_FOLDER=build-%ANDROID_ARCH%-%CONFIG%

Set CMAKE_COMMAND=%WWISE_ROOT%\Tools\cmake\windows-x86_64\bin\cmake -G Ninja -DCMAKE_BUILD_TYPE=%ANDROID_ARCH%-%CONFIG% -DCMAKE_MAKE_PROGRAM=%WWISE_ROOT%\Tools\Win32\bin\ninja.exe -B %CMAKE_BUILD_FOLDER% -DCMAKE_TOOLCHAIN_FILE=%NDKROOT%\build\cmake\android.toolchain.cmake -DANDROID_ABI=%ANDROID_ARCH% -DANDROID_STL=c++_static
Set NINJA_COMMAND=%WWISE_ROOT%\Tools\Win32\bin\ninja -C %CMAKE_BUILD_FOLDER%

Echo Configuring native IntegrationDemo shared library...
Echo %CMAKE_COMMAND%
CALL %CMAKE_COMMAND%

if %errorlevel% neq 0 exit /b %errorlevel%

Echo Building native IntegrationDemo shared library...
Echo %NINJA_COMMAND%
CALL %NINJA_COMMAND%

if %errorlevel% neq 0 exit /b %errorlevel%

REM Leaving CMake directory
popd

Set GRADLE_VARIANT=%CONFIG%_%ANDROID_ARCH%Debug
Set GRADLE_COMMAND=CALL gradlew --no-daemon publish%GRADLE_VARIANT%

Echo Building IntegrationDemo application package...
Echo %GRADLE_COMMAND%
%GRADLE_COMMAND%
IF ERRORLEVEL 1 GOTO errorHandling

popd
goto END
:SHOW_USAGE
echo.
echo Audiokinetic Integration Demo Android Build Script
echo.
echo    Usage: Build.cmd [armeabi-v7a^|x86^|arm64-v8a^|x86_64] [Debug^|Profile^|Release]
echo.
echo    Examples:
echo       Build.cmd armeabi-v7a debug
echo.
goto END

REM no error here, errolevel == 0
:errorHandling
echo Error, aborting.
exit /b 1
:END
set NDKROOT=tmpNDKROOT
