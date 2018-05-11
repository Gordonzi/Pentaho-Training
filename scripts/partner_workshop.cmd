@echo off
cls
:start
echo.
echo. This script installs the required Course Materials from GitHub Repositories.
echo.
echo. 
echo.    1. Partner Workshop - Day 1
echo.        *Course Files installed to C:\Partner_Training\Day1
echo.          GitHub Project Files
echo.          EER Diagrams
echo.          sls_raw database
echo.
echo.    2. Partner Workshop - Day 2
echo.        *Course Files installed to C:\Partner_Workshop\Day2
echo.          sls_raw database
echo.          sls_raw_agile database
echo.
echo.    3. Partner Workshop - Day 3
echo.        *Course Files installed to C:\Partner_Workshop\Day3
echo.
echo.    4. Partner Workshop - Day 4
echo.        *Course Files installed to C:\Partner_Workshop\Day4
echo.
echo.
echo.        
echo.    5. Partner Workshop ...    
echo.
echo.
echo. The window will close once scripts have successfully executed.
echo.
echo.
set /p x= Select an Option:
IF '%x%' == '%x%' GOTO Item_%x%


:Item_1
SET DIR="C:\Partner_Workshop\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\Day1
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Partner_Workshop.git Day1
EXIT


:Item_2
SET DIR="C:\Partner_Workshop\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\Day2
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Partner_Workshop.git Day2
EXIT


:Item_3
SET DIR="C:\Partner_Workshop\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\Day3
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Partner_WOrkshop.git Day3
EXIT


:Item_4
SET DIR="C:\Partner_Workshop\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\Day4
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Partner-Workshop.git Day4
EXIT


:Item_5
SET DIR="C:\Partner_Workshop\"
IF EXIST %DIR% RMDIR /S /Q %DIR%\
GOTO :NOFOLDER
IF NOT EXIST %DIR% GOTO NOFOLDER
:NOFOLDER
MD %DIR%
CD %DIR%
git clone https://github.com/jporeilly/Partner_Workshop.git Day1
git clone https://github.com/jporeilly/Partner_Workshop.git Day2
git clone https://github.com/jporeilly/Partner_Workshop.git Day3
git clone https://github.com/jporeilly/Partner_Workshop.git Day4
EXIT