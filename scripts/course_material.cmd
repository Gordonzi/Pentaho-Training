@echo off
cls
:start
echo.
echo. This script installs the required Course Materials.
echo.
echo. **Any Directories / Folders with the same names will be deleted.** 
echo.
echo. 4. Advanced Pentaho Data Integration - DI-1500
echo.
echo.    The script connects to  GitHub and clones DI-1500 repositories:
echo.     DI-1500 - Course Files installed to C:\Pentaho Training\DI-1500
echo.     Projects - Project files installed to C:\Projects
echo.   
echo.   
echo.
echo. The window will close once scripts have successfully executed.
echo.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%



:Item_4
SET DIR="C:\Pentaho Training - Test\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\DI-1500 
GOTO :NOTEST
IF NOT EXIST %DIR% GOTO NOTEST
:NOTEST
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1500.git DI-1500

SET DIR="C:\Projects  - Test\"
IF EXIST %DIR% RMDIR /S /Q %DIR% 
GOTO :NOTEST2
IF NOT EXIST %DIR% GOTO NOTEST2
:NOTEST2
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1500.git DI-1500
EXIT