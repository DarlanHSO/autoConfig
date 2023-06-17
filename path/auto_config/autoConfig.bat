@echo off
cls

title Desenvolvido por: Darlan Henrique de Souza Oliveira

set version=v2.3.2

color F0
echo "               _            _____                 __  _        
echo "              | |          / ____|               / _|(_)       
echo "  __ _  _   _ | |_   ___  | |       ___   _ __  | |_  _   __ _ 
echo " / _` || | | || __| / _ \ | |      / _ \ | '_ \ |  _|| | / _` |
echo "| (_| || |_| || |_ | (_) || |____ | (_) || | | || |  | || (_| |
echo " \__,_| \__,_| \__| \___/  \_____| \___/ |_| |_||_|  |_| \__, |
echo "                                                          __/ |
echo "                               Made by Darlan HS Oliveira|___/   %version%
echo.

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

:setuser
color F0
echo.
set /p userPrincipal="Digite o usuario logado e pressione ENTER: "

:menu
color F0
cls

echo. 
echo  %version% 
echo             PC: %computername%        user: %userPrincipal% 
echo ***************************************************************************
echo **        MENU DE INSTALACAO E CONFIGURACAO DE PROGRAMAS POR SETOR       **
echo **                                                                       **
echo **     1)Atualizar Aplicativo                     0)Sair                 **
echo **                                                                       **
echo **           Instalacoes                          Comandos               **
echo **     10) Download Microsoft Teams      20) Inventario                  **
echo **     11) Download Pacote Office        21) Codigo de Ativar Mocha      **
echo **     12) Download Toolbar              22) Ativar Toolbar              **
echo **     13) Download SipPhone             23) Ativar SipPhone             **
echo **     14) Configurar BitLocker          24) Mudar Ramais                **  
echo **     15) Atualizar Windows             25) Desligar Maquina            **
echo **                                       26) Reiniciar Maquina           **
echo **           Aplicativos                 27) Cancelar Desligamento       **
echo **      30) Abrir FortClient VPN         28) Atualizar Politicas         **		
echo **      31) Abrir MochaSoft              29) Winrm quickconfig           **
echo **                                                                       **
echo ***************************************************************************
echo *********   Densenvolvido por Darlan Henrique de Souza Oliveira   *********
echo ********************   Para uso da MICRO-INFORMATICA   ********************  
echo ***************************************************************************
echo. 

set /p op= Qual a opcao desejada?

if "%op%"=="" (
    echo Por favor, insira uma opcao valida.
	echo.
	pause
    goto menu
)

if "%op%"=="0" exit /b

if %op% geq 1 if %op% leq 32 (
	rem a opção é válida, não faz nada
) else (
	rem a opção é inválida, exibe uma mensagem de erro
	echo.
    echo Por favor, insira uma opcao valida.
	echo.
	pause
    goto menu
)

rem  ESTRUTURAS DE DECISÃO
if %op% equ 1 goto updateApp

rem        INSTALAÇÕES
if %op% equ 10 goto TeamsSetup
if %op% equ 11 goto OfficeSetup
if %op% equ 12 goto ToolbarSetup
if %op% equ 13 goto SipphoneSetup
if %op% equ 14 goto BitLocker
if %op% equ 15 goto WindowsUpdate

rem        COMANDOS
if %op% equ 20 goto codeInventory
if %op% equ 21 goto commandMocha
if %op% equ 22 goto ativarToolbar
if %op% equ 23 goto ativarSipphone
if %op% equ 24 goto changeRamal
if %op% equ 25 goto shutdownComputer
if %op% equ 26 goto restartComputer
if %op% equ 27 goto abortShutdown
if %op% equ 28 goto updateGPO
if %op% equ 28 goto WinrmQuickconfig
 
rem        APLICATIVOS
if %op% equ 30 goto openFortclient
if %op% equ 31 goto openMocha


:ativarSipphone
	cls
	start "" "C:\Users\Public\auto_config\scripts\codeSipphone"
	Xcopy C:\Verisys\SipPhoneVerisys\SipPhoneVerisys.lnk "C:\Users\%userPrincipal%\desktop" /E /Q /H /Y
	goto menu

:ativarToolbar
	cls
	start "" "C:\Users\Public\auto_config\scripts\codeToolbar"
	rem Copia arquivos da toolbar funcional para a recém instalada
	Xcopy C:\Users\Public\auto_config\apps\VerisysToolbar\ "C:\Verisys\VerisysToolbar\" /E /Q /H /Y /D
	rem Cria atalhos no desktop
	Xcopy C:\Verisys\VerisysToolbar\VerisysToolbar.exe.lnk "C:\Users\%userPrincipal%\desktop" /E /Q /H /Y
	copy C:\Verisys\VerisysLauncher\VerisysLauncher.exe.lnk "C:\Users\%userPrincipal%\desktop"
	goto menu

:updateApp
	cls
	rem Atualiza a pasta autoConfig com os softwares e scripts mais recentes
	echo. Atualizando Aplicativo
	start "" "C:\Users\Public\auto_config\scripts\updateApp.bat"
	rem Xcopy "\\caminho_servidor\auto_config\path\" "C:\Users\Public\" /E /Q /H /Y /D
	rem timeout /t 10
	rem copy C:\Users\Public\auto_config\links "C:\Users\Public\Desktop" 
	rem pause
	goto menu


rem     COMANDOS DE INTALAÇÃO
:BitLocker
	cls
	rem Abre as opções do Bitlocker
	start "" "C:\Users\Public\auto_config\apps\BitLocker.lnk"
	goto menu
	
:TeamsSetup
	cls
	rem Instala o Microsoft Teams
	start "" "C:\Users\Public\auto_config\apps\TeamsSetup"
	goto menu

:OfficeSetup
	cls
	rem Instala o Pacote Office 365
	start "" "C:\Users\Public\auto_config\apps\OfficeSetup"
	goto menu

:ToolbarSetup
	cls
	rem Instala a Verisys Toolbar
	start "" "C:\Users\Public\auto_config\apps\ToolbarSetup.msi"	
	goto menu

:SipphoneSetup
	cls
	rem Instala o SipPhone
	start "" "C:\Users\Public\auto_config\apps\SipphoneSetup.msi"
	goto menu

:WindowsUpdate
	cls
	rem Executa o instalador do Windows
	start "" "C:\Users\Public\auto_config\apps\WindowsSetup.exe"
	goto menu


REM COMANDOS DE CHAMADA DE SCRIPTS
:changeRamal
	cls
	rem Roda um script para alterar o arquivo de ramal local da máquina
	start "" "C:\Users\Public\auto_config\scripts\changeRamal"
	goto menu

:codeInventory
	cls
	rem Inventaria a máquina no GLPI
	start "" "C:\Users\Public\auto_config\scripts\codeInventory.bat"
	goto menu

:commandMocha
	cls
	rem Abre o comando para ativar o Mocha
	start "" "C:\Users\Public\auto_config\commands\Mocha.txt"
	goto menu

:openFortclient
	cls
	rem Abre o FortiClient para testar a VPN
	start "" "C:\Users\Public\Desktop\FortiClient.lnk"
	goto menu

:openMocha
	cls
	rem Abre o MochaSoft 
	start "" "C:\Users\Public\Desktop\Mocha TN3270.lnk" 
	goto menu


rem COMANDOS DE WINDOWS
	:WinrmQuickconfig
		cls
		start "C:\Users\Public\auto_config\scripts\winrmQuickconfig"
		goto menu
	:updateGPO
		cls
		start "" "C:\Users\Public\auto_config\scripts\updateGPO" 
		goto menu

	:restartComputer
		cls 
		shutdown /r /t 10
		goto menu

	:shutdownComputer
		cls 
		shutdown /s /t 10
		goto menu
	
	:abortShutdown
		cls
		shutdown /a
		echo.
		echo    Cancelamento efetuado
		timeout /t 2
		goto menu