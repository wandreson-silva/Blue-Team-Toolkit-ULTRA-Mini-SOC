@echo off
title BLUE TEAM SOC TOOLKIT

:menu
cls

echo ===============================
echo BLUE TEAM SOC TOOLKIT
echo ===============================
echo 1 Dashboard SOC
echo 2 Monitor de conexoes
echo 3 Scanner de rede
echo 4 Detector port scan
echo 5 Detector ARP spoof
echo 6 Mostrar IPs conectados
echo 7 Exportar logs
echo 8 Sair
echo.

set /p op=Escolha:

if %op%==1 powershell -ExecutionPolicy Bypass -File dashboard_soc.ps1
if %op%==2 powershell -ExecutionPolicy Bypass -File monitor_conexoes.ps1
if %op%==3 powershell -ExecutionPolicy Bypass -File scanner_rede.ps1
if %op%==4 powershell -ExecutionPolicy Bypass -File detector_portscan.ps1
if %op%==5 powershell -ExecutionPolicy Bypass -File detector_arp.ps1
if %op%==6 powershell -ExecutionPolicy Bypass -File mapa_ips.ps1
if %op%==7 powershell -ExecutionPolicy Bypass -File exportar_logs.ps1
if %op%==8 exit

pause
goto menu