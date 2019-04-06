@echo off
cls

ipconfig /flushdns
ipconfig /registerdns
ipconfig /release
ipconfig /renew
NETSH winsock reset catalog
NETSH int ipv4 reset reset.log
NETSH int ipv6 reset reset.log

shutdown /f /r 
echo your computer will restart in 30 second

echo you can close the command line