@echo off
cls
:start
echo.
echo. Select an option to install the required Course Materials from GitHub Repositories.
echo. Requires GIT to be installed and configured
echo.
echo. 
echo.    1. Report Designer - BA-2000
echo.       * Course Files installed to C:\Pentaho-Training\BA-2000
echo.          Data Sources
echo.          Elements and Groups
echo.          Calculations
echo.          Charts and Sub Reports
echo.
echo.
echo. The window will close once scripts have successfully executed.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%


:Item_1
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-2000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/BA-2000.git BA-2000
EXIT