@echo off
echo Setting up Windows Firewall rules for Terraria Server...
echo =====================================================
echo.
echo This script needs to run as Administrator!
echo.

REM Add inbound rule for Terraria server
netsh advfirewall firewall add rule name="Terraria Server (TCP-In)" dir=in action=allow protocol=TCP localport=7777
netsh advfirewall firewall add rule name="Terraria Server (UDP-In)" dir=in action=allow protocol=UDP localport=7777

REM Add outbound rules (usually not needed but good to have)
netsh advfirewall firewall add rule name="Terraria Server (TCP-Out)" dir=out action=allow protocol=TCP localport=7777
netsh advfirewall firewall add rule name="Terraria Server (UDP-Out)" dir=out action=allow protocol=UDP localport=7777

echo.
echo Firewall rules added successfully!
echo.
pause