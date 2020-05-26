#!/bin/bash

if [ -f hub.console.$3.txt ]; then rm hub.console.$3.txt ; fi

if [ "$4" = "" ]; then echo Missing target dir, stage, dateZ, date, user, password arguments ; exit 1 ; fi

echo Building package...
java -Dant.home=utilities/ant -classpath db/spec-0.8/validate/xjparse.jar:utilities/ant/lib/ant-launcher.jar:db/spec-0.8/validate/saxon9he.jar:. org.apache.tools.ant.launch.Launcher -buildfile publishUBL23Docs.xml -Ddir=$1 -Dstage=$2 -Dversion=$3 -Ddatetimelocal=$4 -Dsetareuser=$5 -Dsetarepass=$6 | tee hub.console.$3.txt
serverReturn=${PIPESTATUS[0]}

if [ ! -d $1 ]; then mkdir $1 ; fi
if [ ! -d $1/hub-UBL-2.3-$2-$3 ]; then mkdir $1/hub-UBL-2.3-$2-$3 ; fi
if [ ! -d $1/hub-UBL-2.3-$2-$3/archive-only-not-in-final-distribution/ ]; then mkdir $1/hub-UBL-2.3-$2-$3/archive-only-not-in-final-distribution/ ; fi
mv hub.console.$3.txt $1/hub-UBL-2.3-$2-$3/archive-only-not-in-final-distribution/
echo $serverReturn >$1/hub-UBL-2.3-$2-$3/archive-only-not-in-final-distribution/hub.exitcode.$3.txt

# reduce GitHub storage costs by zipping results and deleting intermediate files
pushd $1
7z a hub-UBL-2.3-$2-$3.zip hub-UBL-2.3-$2-$3
popd

if [ "$1" = "target" ]
then
if [ "$2" = "github" ]
then
if [ "$7" = "DELETE-REPOSITORY-FILES-AS-WELL" ] #secret undocumented failsafe
then
# further reduce GitHub storage costs by deleting repository files

find . -not -name target -not -name .github -maxdepth 1 -exec rm -r -f {} \;
mv $1/hub-UBL-2.3-$2-$3.zip .
rm -r -f $1

fi
fi
fi

exit 0 # always be successful so that github returns ZIP of results

