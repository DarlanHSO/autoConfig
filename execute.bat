@echo off
cls

color F4
title Desenvolvido por: Darlan Henrique de Souza Oliveira

rem Verifica se o script está sendo executado como administrador.
net session >nul 2>&1
if %errorLevel% neq 0 (
  echo.
  echo Error: Este programa deve ser executado como administrador da Rede.
  echo.
  pause
  exit /b 1
)

cls
color 02

echo.
echo "          _               _ _                    _                   
echo "     /\  | |             | (_)                  | |                  
echo "    /  \ | |_ _   _  __ _| |_ ______ _ _ __   __| | ___              
echo "   / /\ \| __| | | |/ _` | | |_  / _` | '_ \ / _` |/ _ \             
echo "  / ____ \ |_| |_| | (_| | | |/ / (_| | | | | (_| | (_) |  _   _   _ 
echo " /_/    \_\__|\__,_|\__,_|_|_/___\__,_|_| |_|\__,_|\___/  (_) (_) (_)
echo "                                                                     
echo.
echo Digite 1 para SIM.
echo Digite 2 para NAO.
set /p op="Quer copiar os Drivers? "

echo.
echo Baixando atualizacoes do aplicativo, aguarde por favor!
echo.

Xcopy "\\caminho_servidor\auto_config\path\" "C:\Users\Public\" /E /Q /H /Y /D
Xcopy C:\Users\Public\auto_config\links "C:\Users\Public\Desktop\" /E /Q /H /Y /D
rem start "" "C:\Users\Public\auto_config\scripts\copyLinksToPublicDesktop.bat"

if %op% equ 1 (
    echo.
    echo Copiando Drivers, pode minimizar essa guia.
    echo.
    echo Espere ate o programa fechar sozinho ! ! !
    Xcopy "\\caminho_servidor\auto_configDRIVERS\path\" "C:\Users\Public\" /E /Q /H /Y /D
)

timeout /t 3

exit