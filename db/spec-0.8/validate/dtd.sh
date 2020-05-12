DP0=$(dirname $(readlink -f "$0"))

java -jar $DP0/xjparse.jar -v -c $DP0/../catalog.xml $1