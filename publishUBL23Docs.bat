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

echo Building package...
java "-Dant.home=utilities/ant" -classpath "db/spec-0.8/validate/xjparse.jar;utilities/ant/lib/ant-launcher.jar;db/spec-0.8/validate/saxon9he.jar;." org.apache.tools.ant.launch.Launcher -buildfile publishUBL23Docs.xml "-Dext=bat" "-Ddir=%~1" "-Dstage=%~2" "-Dversion=%~3" "-Ddatetimelocal=%~4" "-Dsetareuser=%~5" "-Dsetarepass=%~6"

