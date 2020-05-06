if [ "$6" == "" ]
then 
echo Missing target dir, stage, dateZ, date, user, password arguments
exit
fi

if [ ! -d "$1/." ]
then
echo Cannot find result directory $1/.
echo \(perhaps the argument is ending in \"/\" when it is not supposed to\)
exit 1
fi

echo Pre-validate sources...
sh db/spec-0.8/validate/validate.sh UBL.xml
if [ "$?" != "0" ]; then exit $? ; fi
rm output.txt

echo Building package...
java -Dant.home=utilities/ant -Xss4m -Xms400m -Xmx2000m -classpath db/spec-0.8/validate/xjparse.jar:utilities/ant/lib/ant-launcher.jar:db/spec-0.8/validate/saxon9he.jar:. org.apache.tools.ant.launch.Launcher -buildfile publishUBL23Docs.xml -Ddir=$1 -Dstage=$2 -Dversion=$3 -Ddatetimelocal=$4 -Dsetareuser=$5 -Dsetarepass=$6

if [ "$?" != "0" ]; then exit ; fi
