@echo off
cls
:start
echo.
echo. This script installs the required Course Materials from GitHub Repositories:
echo.    https://github.com/jporeilly
echo.
echo. If a Pentaho Training already exists, then just the course folder is deleted:
echo. 
echo.    1. Business Analytics User Console - BA-1000
echo.        *BA-1000 - Course Files installed to C:\Pentaho-Training\BA-1000
echo.
echo.    2. Business Analytics Report Designer - BA-2000
echo.        *BA-2000 - Course Files installed to C:\Pentaho-Training\BA-2000
echo.
echo.    3. Business Analytics Data Modelling - BA-3000
echo.        *BA-3000 - Course Files installed to C:\Pentaho-Training\BA-3000
echo.
echo.    4. Pentaho Data Integration - DI-1000
echo.        *DI-1000 - Course Files installed to C:\Pentaho Training\DI-1000
echo.
echo.    5. Advanced Pentaho Data Integration - DI-1500
echo.        *DI-1500 - Course Files installed to C:\Pentaho-Training\DI-1500
echo.        
echo.        5.1 Confluent 4.0 - Confluent-4.0 installed to C:\Confluent-4.0
echo.        5.2 Projects - Project files installed to C:\Projects
echo.        
echo.    6. All Pentaho Courses...    
echo.
echo.
echo. The window will close once scripts have successfully executed.
echo.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%


:Item_1
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-1000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/BA-1000.git BA-1000
EXIT


:Item_2
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-2000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/BA-2000.git BA-2000
EXIT


:Item_3
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-3000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/BA-3000.git BA-3000
EXIT


:Item_4
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\DI-1000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1000.git DI-1000
EXIT


:Item_5
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\DI-1500
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1500.git DI-1500
GOTO :CONFLUENT

:CONFLUENT
SET DIR="C:\Confluent-4.0"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Confluent-4.0.git .
GOTO :PROJECTS

:PROJECTS
SET DIR="C:\Projects"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Projects.git .
EXIT


:Item_5.1
SET DIR="C:\Confluent-4.0"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Confluent-4.0.git .
EXIT


:Item_5.2
SET DIR="C:\Projects"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Projects.git .
EXIT

:Item_6
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\AD-1000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/AD-1000.git AD-1000
EXIT

:Item_6
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-1000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/BA-1000.git BA-1000

IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-2000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/BA-2000.git BA-2000


IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-3000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/BA-3000.git BA-3000


IF EXIST %DIR% RMDIR /S /Q %DIR%\DI-1000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1000.git DI-1000


IF EXIST %DIR% RMDIR /S /Q %DIR%\DI-1500
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1500.git DI-1500
GOTO :CONFLUENT

:CONFLUENT
SET DIR="C:\Confluent-4.0"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Confluent-4.0.git .
GOTO :PROJECTS

:PROJECTS
SET DIR="C:\Projects"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Projects.git .
EXIT

