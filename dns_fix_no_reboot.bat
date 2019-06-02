@echo off
cls
title dns_fix

echo Checking for your Windows privilege...
net session >nul 2>&1
if %ERRORLEVEL% == 0 (
    ipconfig /flushdns
    ipconfig /registerdns
    ipconfig /release
    ipconfig /renew
    NETSH winsock reset catalog
    NETSH int ipv4 reset reset.log
    NETSH int ipv6 reset reset.log
) else (
    echo You are NOT administrator.
    echo Exiting...
)

pause