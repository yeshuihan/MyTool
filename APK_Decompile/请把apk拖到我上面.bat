@echo off
cd "%~dp0"
%~d0
if exist apk (
rd /s/q apk
echo ɾ�����ڵ��ļ�apk
)
"C:\Program Files (x86)\WinRAR\WinRAR.exe" x %1% "apk\"
echo ��apk��ѹ��apk�ļ���
if exist classes-dex2jar.jar (
del classes-dex2jar.jar

)
call "dex2jar-2.1\d2j-dex2jar.bat" "apk\classes.dex"
echo dex2jar

if exist classes-dex2jar.jar (
"jd-gui\jd-gui.exe" ../classes-dex2jar.jar
pause
) else (
echo ����ʧ��
pause
)
