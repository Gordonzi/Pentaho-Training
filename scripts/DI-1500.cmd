@echo off
cls
:start
echo.
echo. Select an option to install the required Course Materials from GitHub Repositories.
echo. Requires GIT to be installed and configured
echo.
echo. 
echo.    1. Advanced Data Integration - DI-1500    
echo.       * Course Files installed to C:\Pentaho-Training\DI-1500
echo.          Metadata Injection
echo.          PDI as a Data Source
echo.          Streaming Data - MQTT ^& Kafka
echo.          Scaling out Enterprise Solution
echo.
echo.     This option installs everything..
echo.          
echo.    1.1 Course Files - DI-1500  
echo.
echo.    1.2 Confluent-5.0.0 installed to C:\Confluent-5.0.0
echo.          Confluent-5.0.0 
echo.
echo.    1.3 Project Files installed to C:\Projects
echo.          Twitter
echo.          Machine Learnng
echo.
echo.
echo. The window will close once scripts have successfully executed.
echo.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%

:Item_1
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\DI-1500
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1500.git DI-1500
GOTO CONFLUENT

:CONFLUENT
SET DIR="C:\Confluent-5.0.0"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Confluent-5.0.0.git .
GOTO PROJECTS

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


:Item_1.1
SET DIR="C:\Pentaho-Training"
IF EXIST %DIR% RMDIR /S /Q %DIR%\DI-1500
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1500.git DI-1500
EXIT

:Item_1.2
SET DIR="C:\Confluent-5.0.0"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Confluent-5.0.0.git .
EXIT

:Item_1.3
SET DIR="C:\Projects"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Projects.git .
EXIT