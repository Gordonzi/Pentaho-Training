@echo off
cls
:start
echo.
echo. Select an option to install the required Course Materials from GitHub Repositories.
echo. Requires GIT to be installed and configured
echo.
echo. 
echo.    1. Support and Administration - SP-1000
echo.       * Course Files installed to C:\Pentaho-Training\SP-1000
echo.          Hitachi Vantara Customer Support Portal
echo.          Support Utility
echo.          LOg4j
echo.          Mondrian Logging
echo.          Report Logging
echo.          JDBC Logging
echo.          Tomcat Manager
echo.          Operations Mart
echo.
echo.
echo. The window will close once scripts have successfully executed.
echo.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%


:Item_1
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\SP-1000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/SP-1000.git SP-1000
EXIT