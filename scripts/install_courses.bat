@echo off
cls
:start
echo.
echo. This script installs the required Course Materials.
echo.
echo.
echo. 4. Advanced Pentaho Data Integration - DI-1500
echo.
echo.    The script connects to  GitHub and clones DI-1500 repositories:
echo.     DI-1500 - Course 
echo.     Projects - Project files for the workflows
echo.   
echo.   
echo.
echo. The window will close once scripts have successfully executed.
echo.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%



:Item_4
md -Force -Path C:\Test
$client = new-object System.Net.WebClient
$client.DownloadFile(https://rawgit.com/jporeilly/Pentaho-Training/scripts/install_courses.bat,“C:\Test\install_courses.cmd”)
git clone https://github.com/jporeilly/DI-1500.git DI-1500
GOTO Start