@echo off
title Reset Windows Update Components

echo Stopping Windows Update Services...
net stop wuauserv
net stop bits
net stop cryptsvc
net stop msiserver

echo.
echo Renaming SoftwareDistribution and Catroot2 folders...
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old

echo.
echo Starting Windows Update Services...
net start msiserver
net start cryptsvc
net start bits
net start wuauserv

echo.
echo Initiating Windows Update Scan...
usoclient StartScan

echo.
echo Windows Update reset completed.
pause