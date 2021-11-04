:: windows10设置wsl2固定IP HiIT青年
@echo off
rem set IP for WSL
wsl -d Ubuntu-18.04 -u root ip addr add 192.168.50.110/24 broadcast 192.168.50.255 dev eth0 label eth0:1
rem set IP for windows10
netsh interface ip add address "vEthernet (WSL)" 192.168.50.10 255.255.255.0

pause
