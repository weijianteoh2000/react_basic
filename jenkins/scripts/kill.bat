@echo off

REM Read the PID from the .pidfile
set /p PID=<.pidfile

REM Kill the process using the PID
taskkill /PID %PID% /F

REM Optionally, delete the .pidfile after killing the process
del .pidfile