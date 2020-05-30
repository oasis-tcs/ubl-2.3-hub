@echo off

if not "a%~4" == "a" goto :argsokay  
echo Missing target dir, stage, dateZ, date, user, password arguments
exit /B 1
:argsokay

if exist "%~1\." goto :resultokay
echo Cannot find result directory "%~1".
echo (perhaps the argument is ending in "/" when it is not supposed to)
exit /B 1
:resultokay

if exist "hub.console.%~3.txt" del "hub.console.%~3.txt"

echo Building package...
java "-Dant.home=utilities/ant" -classpath "db/spec-0.8/validate/xjparse.jar;utilities/ant/lib/ant-launcher.jar;db/spec-0.8/validate/saxon9he.jar;." org.apache.tools.ant.launch.Launcher -buildfile publishUBL23Docs.xml "-Ddir=%~1" "-Dstage=%~2" "-Dversion=%~3" "-Ddatetimelocal=%~4" "-Dsetareuser=%~5" "-Dsetarepass=%~6" >"hub.console.%~3.txt"
set serverReturn=%errorlevel%

if not exist "%~1\" mkdir "%~1" 2>&1
if not exist "%~1\hub-UBL-2.3-%~2-%~3\" mkdir "%~1\hub-UBL-2.3-%~2-%~3" 2>&1
if not exist "%~1\hub-UBL-2.3-%~2-%~3\archive-only-not-in-final-distribution\" mkdir "%~1\hub-UBL-2.3-%~2-%~3\archive-only-not-in-final-distribution" 2>&1

move "hub.console.%~3.txt" "%~1\hub-UBL-2.3-%~2-%~3\archive-only-not-in-final-distribution"
echo %serverReturn% >"%~1\hub-UBL-2.3-%~2-%~3\archive-only-not-in-final-distribution\hub.exit.%~3.txt"

pushd "%~1"
7z a "hub-UBL-2.3-%~2-%~3.zip" "hub-UBL-2.3-%~2-%~3"
popd
