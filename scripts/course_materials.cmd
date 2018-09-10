@echo off
cls
:start
echo.
echo. Select an option to install the required Course Materials from GitHub Repositories.
echo. Requires GIT to be installed and configured
echo.
echo. 
echo.    1. Business Analytics - BA-1000
echo.       * Course Files installed to C:\Pentaho-Training\BA-1000
echo.          Pentaho User Console
echo.          Analyzer and Interactive Reports
echo.          Dashboards
echo.
echo.    2. Report Designer - BA-2000
echo.       * Course Files installed to C:\Pentaho-Training\BA-2000
echo.          Data Sources
echo.          Elements and Groups
echo.          Calculations
echo.          Charts and Sub Reports
echo.
echo.    3. Data Modeling - BA-3000
echo.       * Course Files installed to C:\Pentaho-Training\BA-3000
echo.          Metadata Editor - Models
echo.          Schema WorkBench - ROLAP 
echo.                  
echo.    4. Data Integration - DI-1000
echo.       * Course Files installed to C:\Pentaho-Training\DI-1000
echo.          Transformations
echo.          Dealing with Flat Files
echo.          Database
echo.        
echo.    5. Advanced Data Integration - DI-1500    
echo.       * Course Files installed to C:\Pentaho-Training\DI-1500
echo.          Metadata Injection
echo.          PDI as a Data Source
echo.          Streaming Data - MQTT ^& Kafka
echo.          Scaling out Enterprise Solution
echo.          
echo.      5.1 Confluent-5.0.0 installed to C:\Confluent-5.0.0
echo.          Confluent-5.0.0 
echo.
echo.      5.2 Project Files installed to C:\Projects
echo.          Twitter
echo.
echo.    6. Installation and Administration
echo.       * Course Files installed to C:\Pentaho-Training\AD-1000
echo.          Archive Installation
echo.          Pentaho Administration
echo.          PDI Administration
echo.
echo.    7. Support and Troubleshooting
echo.       * Course Files installed to C:\Pentaho-Training\SP-1000
echo.          Hitachi Vantara Customer Support Portal
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
git clone -b Day1 https://github.com/jporeilly/BA-1000.git .
EXIT


:Item_2
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-2000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone -b Day2 https://github.com/jporeilly/BA-2000.git .
EXIT


:Item_3
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\BA-3000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone -b Day3 https://github.com/jporeilly/BA-3000.git .
EXIT


:Item_4
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\DI-1000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone -b Day4 https://github.com/jporeilly/DI-1000.git .
EXIT


:Item_5
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\DI-1500
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1500.git .
GOTO CONFLUENT

:CONFLUENT
SET DIR="C:\Confluent-5.0.0\"
IF EXIST %DIR% RMDIR /S /Q %DIR%
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/DI-1500.git .
GOTO PROJECTS

:PROJECTS
SET DIR="C:\Projects\"
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
git clone https://github.com/jporeilly/AD-1000.git .
EXIT


:Item_7
SET DIR="C:\Pentaho-Training\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\AD-1000
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/AD-1000.git .
EXIT