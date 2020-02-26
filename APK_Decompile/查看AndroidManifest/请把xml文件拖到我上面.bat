@echo off
cd "%~dp0"
%~d0
set name=%1% 
echo %name%
java -jar AXMLPrinter2.jar %name%>newname.xml
pause