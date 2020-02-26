@echo off
cd "%~dp0"
%~d0
if exist apkxml (
rd /s/q apkxml
echo 删除存在的文件apkxml
)

java -jar apktool_2.4.0.jar d -f %1% -o apkxml
pause