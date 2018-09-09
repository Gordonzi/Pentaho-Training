@echo off
cls
:start
echo.
echo. This script installs the required Course Materials from GitHub Repositories:
echo.    https://github.com/jporeilly
echo.
echo.  
echo.    1. Tesco Bank - Pentaho data Integration
echo.        *DI-1000 - Course Files installed to C:\Pentaho-Training\Tesco-Bank
echo.         Includes Metadata injection
echo.    
echo.
echo.    The window will close once scripts have successfully executed.
echo.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%


:Item_1
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\Tesco-Bank
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Tesco-Bank.git Tesco-Bank
EXIT