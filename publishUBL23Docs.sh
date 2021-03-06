#!/bin/bash

if [ -f hub.console.$3.txt ]; then rm hub.console.$3.txt ; fi

if [ "$4" = "" ]; then echo Missing results directory, platform, label, date-stamp, user, and password arguments ; exit 1 ; fi

package=UBL-2.3
UBLstage=csd03
label=$3

echo Building package for $package $UBLstage...
java -Dant.home=utilities/ant -classpath db/spec-0.8/validate/xjparse.jar:utilities/ant/lib/ant-launcher.jar:db/spec-0.8/validate/saxon9he.jar:. org.apache.tools.ant.launch.Launcher -buildfile publishUBL23Docs.xml -Ddir=$1 -Dstage=$UBLstage -Dlabel=$label -Ddatetimelocal=$4 -Dsetareuser=$5 -Dsetarepass=$6 | tee hub.console.$3.txt
serverReturn=${PIPESTATUS[0]}
echo $serverReturn >hub.exitcode.$3.txt

if [ -f $1/$package-$UBLstage-$label-archive-only.zip ]
then
7z a $1/$package-$UBLstage-$label-archive-only.zip hub.console.$3.txt hub.exitcode.$3.txt
fi

if [ ! -d $1 ]; then mkdir $1 ; fi
if [ ! -d $1/hub-$package-$UBLstage-$label ]; then mkdir $1/hub-$package-$UBLstage-$label ; fi
if [ ! -d $1/hub-$package-$UBLstage-$label/archive-only-not-in-final-distribution/ ]; then mkdir $1/hub-$package-$UBLstage-$label/archive-only-not-in-final-distribution/ ; fi
mv  hub.console.$3.txt $1/hub-$package-$UBLstage-$label/archive-only-not-in-final-distribution/
mv hub.exitcode.$3.txt $1/hub-$package-$UBLstage-$label/archive-only-not-in-final-distribution/

# reduce GitHub storage costs by zipping results and deleting intermediate files
pushd $1
7z a hub-$package-$UBLstage-$label.zip hub-$package-$UBLstage-$label
popd

if [ "$1" = "target" ]
then
if [ "$2" = "github" ]
then
if [ "$7" = "DELETE-REPOSITORY-FILES-AS-WELL" ] #secret undocumented failsafe
then
# further reduce GitHub storage costs by deleting repository files

find . -not -name target -not -name .github -maxdepth 1 -exec rm -r -f {} \;
mv $1/hub-$package-$UBLstage-$label.zip .
rm -r -f $1

fi
fi
fi

exit 0 # always be successful so that github returns ZIP of results

