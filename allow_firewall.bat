@echo off
:: Check for administrator privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo [OK] Running with Administrator privileges...
    netsh advfirewall firewall delete rule name="ChatSphere Local Server" >nul 2>&1
    netsh advfirewall firewall add rule name="ChatSphere Local Server" dir=in action=allow protocol=TCP localport=3000
    echo ========================================================
    echo SUCCESS: Windows Firewall now allows port 3000!
    echo Phones and laptops on your Wi-Fi can now connect freely!
    echo ========================================================
) else (
    echo ========================================================
    echo Please right-click this file and select:
    echo "Run as Administrator"
    echo ========================================================
)
pause
