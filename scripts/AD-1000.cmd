@echo off
cls
:start
echo.
echo. Select an option to install the required Course Materials from GitHub Repositories.
echo. Requires GIT to be installed and configured
echo.
echo. 
echo.    1. Installation and Administration - AD-1000
echo.       * Course Files installed to C:\Pentaho-Training\AD-1000
echo.          Archive Installation
echo.          Analyzer and Interactive Reports
echo.          Dashboards
echo.
echo.
echo. The window will close once scripts have successfully executed.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%


:Item_1
SET DIR="C:\Pentaho-Training\AD-1000"
IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-1000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/BA-1000.git AD-1000
EXIT