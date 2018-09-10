@echo off
cls
:start
echo.
echo. Select an option to install the required Course Materials from GitHub Repositories.
echo. Requires GIT to be installed and configured
echo.
echo. 
echo.    1. Data Modeling - BA-3000
echo.       * Course Files installed to C:\Pentaho-Training\BA-3000
echo.          Metadata Editor - Models
echo.          Schema WorkBench - ROLAP 
echo.
echo.
echo. The window will close once scripts have successfully executed.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%


:Item_1
SET DIR="C:\Pentaho-Training\BA-3000"
IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-3000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/BA-3000.git BA-3000
EXIT