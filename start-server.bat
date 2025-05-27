@echo off
echo Starting TShock Terraria Server...
echo =================================

REM Create worlds directory if it doesn't exist
if not exist "worlds" mkdir worlds
if not exist "logs" mkdir logs

REM Set log filename with current date
set logfile=logs\server_%date:~-4,4%%date:~-10,2%%date:~-7,2%.log

echo Logging to: %logfile%
echo.

REM Start the server with PowerShell to add timestamps
powershell -Command "& {.\TShock.Server.exe -config serverconfig.txt 2>&1 | ForEach-Object {\"[$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')] $_\"} | Tee-Object -FilePath '%logfile%' -Append}"

echo.
echo Server stopped.
pause