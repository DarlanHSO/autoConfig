@echo off
cls

title Desenvolvido por: Darlan Henrique de Souza Oliveira

color F0
echo "   _____                          
echo "  / ____|Made by Darlan HS Oliveira                         
echo " | (___   ___ _ ____   _____ _ __ 
echo "  \___ \ / _ \ '__\ \ / / _ \ '__|
echo "  ____) |  __/ |   \ V /  __/ |   
echo " |___/\/ \___|_|    \_/ \___|_|   
echo "    /  \   ___ ___ ___  ___ ___   
echo "   / /\ \ / __/ __/ _ \/ __/ __|  
echo "  / ____ \ (_| (_|  __/\__ \__ \  
echo " /_/    \_\___\___\___||___/___/  
echo "                                  

timeout /t 2

rem Verifica se o script está sendo executado como administrador.
net session >nul 2>&1
if %errorLevel% neq 0 (
  color F4
  echo. 
  echo.
  echo Error: Este programa deve ser executado como administrador da Rede.
  echo.
  echo.
  pause
  exit /b 1
)

echo.
start "" "C:\Users\Public\ServerAccessFiles\ServerAccess1.lnk"
pause
start "" "C:\Users\Public\ServerAccessFiles\ServerAccess2.lnk"

exit