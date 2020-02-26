#! /bin/bash
rootPath=$(pwd)
apkDirName="apk"

if [ -d "$apkDirName" ];then
rm -rf $apkDirName
fi

java -jar apktool_2.4.0.jar  d -s $1 -o $apkDirName



