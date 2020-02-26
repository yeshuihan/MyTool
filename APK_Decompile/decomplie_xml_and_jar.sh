#! /bin/bash
rootPath=$(pwd)
apkDirName="apk"

./decomplie_xml.sh $1

if [ -f "classes-dex2jar.jar" ];then
rm classes-dex2jar.jar
fi

sh dex2jar-2.1/d2j-dex2jar.sh $apkDirName/classes.dex

if [ -f "classes-dex2jar.jar" ];then
java -jar jd-gui/jd-gui-1.6.3.jar classes-dex2jar.jar
else
echo "解析失败"
fi




