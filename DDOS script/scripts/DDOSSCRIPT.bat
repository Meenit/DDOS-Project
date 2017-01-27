echo off
title SUBSCRIPT
set /p INPUT=<COMPID.txt
cls
Echo SUBSCRIPT ONLINE
Color 2F
ping -t -l 14000 %INPUT% >nul