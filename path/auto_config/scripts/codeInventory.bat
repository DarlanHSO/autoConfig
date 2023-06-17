@echo off
cls

title Ativador Inventario

echo.
echo Minimize o programa que ele fechara sozinho.
echo.

rem Inventaria a máquina no GLPI sistema de tickets online.
cd "C:\Program Files\FusionInventory-Agent\perl\bin"
perl.exe fusioninventory-agent %*

exit
