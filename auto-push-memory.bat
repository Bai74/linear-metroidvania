@echo off
cd /d C:\Users\72566\.qclaw\workspace-agent-ad3b1913
for /f "tokens=2 delims==" %%a in ('"wmic path win32_localtime get year /format:valuelist"') do set YEAR=%%a
for /f "tokens=2 delims==" %%a in ('"wmic path win32_localtime get month /format:valuelist"') do set MONTH=%%a
for /f "tokens=2 delims==" %%a in ('"wmic path win32_localtime get day /format:valuelist"') do set DAY=%%a
for /f "tokens=2 delims==" %%a in ('"wmic path win32_localtime get hour /format:valuelist"') do set HOUR=%%a
for /f "tokens=2 delims==" %%a in ('"wmic path win32_localtime get minute /format:valuelist"') do set MINUTE=%%a
set DATETIME=%YEAR%-%MONTH%-%DAY% %HOUR%:%MINUTE%
git add -A
git commit -m "Auto-update memory %DATETIME%"
git push