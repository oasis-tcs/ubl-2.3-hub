@echo off

if not "a%~4" == "a" goto :argsokay  
echo Missing results directory, platform, label, date-stamp, user, password arguments
exit /B 1
:argsokay

if exist "%~1\." goto :resultokay
echo Cannot find result directory "%~1".
echo (perhaps the argument is ending in "/" when it is not supposed to)
exit /B 1
:resultokay

if exist "hub.console.%~3.txt" del "hub.console.%~3.txt"

set package=UBL-2.3
set UBLstage=cs01
set UBLprevStage=csd04
set label=%~3
set isDraft=false

echo Building package...
java "-Dant.home=utilities/ant" -classpath "db/spec-0.8/validate/xjparse.jar;utilities/ant/lib/ant-launcher.jar;db/spec-0.8/validate/saxon9he.jar;." org.apache.tools.ant.launch.Launcher -buildfile publishUBL23Docs.xml "-Ddir=%~1" "-Dstage=%UBLstage%" "-DUBLprevStage=%UBLprevStage%" "-Dlabel=%label%" "-Ddatetimelocal=%~4" "-Drealtauser=%~5" "-Drealtapass=%~6" "-DisDraft=%isDraft%" >"hub.console.%label%.txt"
set serverReturn=%errorlevel%

if not exist "%~1\" mkdir "%~1" 2>&1
if not exist "%~1\hub-%package%-%UBLstage%-%label%\" mkdir "%~1\hub-%package%-%UBLstage%-%label%" 2>&1
if not exist "%~1\hub-%package%-%UBLstage%-%label%\archive-only-not-in-final-distribution\" mkdir "%~1\hub-%package%-%UBLstage%-%label%\archive-only-not-in-final-distribution" 2>&1

move "hub.console.%label%.txt" "%~1\hub-%package%-%UBLstage%-%label%\archive-only-not-in-final-distribution"
echo %serverReturn% >"%~1\hub-%package%-%UBLstage%-%label%\archive-only-not-in-final-distribution\hub.exit.%label%.txt"

pushd "%~1"
7z a "hub-%package%-%UBLstage%-%label%.zip" "hub-%package%-%UBLstage%-%label%"
popd
