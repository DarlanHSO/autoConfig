@echo off
cls

rem Ainda em desenvolvimento e não inclusa a opção no aplicativo, esse script auxiliaria na instalação dos drivers em máquinas que apresentam sintomas de falta de atualização.

color 02
title Desenvolvido por: Darlan Henrique de Souza Oliveira

rem Verifica se o script está sendo executado como administrador.
rem net session >nul 2>&1
rem if %errorLevel% neq 0 (
rem  echo.
rem  echo Error: Este programa deve ser executado como administrador da Rede.
rem  echo.
rem pause
rem  exit /b 1
rem)

:setMachine
cls
echo.
echo 1. Dell Latitude 5400
echo 2. Dell Latitude 5410
echo 3. Dell Latitude 5420
set /p pcmodel="Digite o numero da maquina e pressione ENTER: "

if %pcmodel% geq 1 if %pcmodel% leq 3 (
	rem a opção é válida, não faz nada
) else (
	rem a opção é inválida, exibe uma mensagem de erro
	echo.
    echo Por favor, insira uma opcao valida.
	echo.
	pause
    goto setMachine
)

if %pcmodel% equ 1 goto installDriversDellLatitude5400
if %pcmodel% equ 2 goto installDriversDellLatitude5410
if %pcmodel% equ 3 goto installDriversDellLatitude5420

:installDriversDellLatitude5400
cls
echo.
echo Drivers do Dell Latitude 5400
echo Qual driver quer Instalar?
echo 1. Video
echo 2. Audio
echo 3. Wifi e Bluetooth
echo 4. Rede
set /p op="Digite a opcao e pressione ENTER: "
if %op% geq 1 if %op% leq 4 (
	rem a opção é válida, não faz nada
) else (
	rem a opção é inválida, exibe uma mensagem de erro
	echo.
    echo Por favor, insira uma opcao valida.
	echo.
	pause
    goto installDriversDellLatitude5400
)

if %op% equ 1 (
    start "" "C:\Users\Public\DRIVERS\5400\video.exe"
    set /p continue1="Quer instalar outro driver? (S/N): "
    if %continue1% equ "s" if %continue1% equ "S"(
        goto installDriversDellLatitude5400
    )else(
        exit
    )
)
if %op% equ 2 (
    start "" "C:\Users\Public\DRIVERS\5400\audio.exe"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5400
            )else(
                exit
            )
)
if %op% equ 3 (
    start "" "C:\Users\Public\DRIVERS\5400\wifibluetooth1.exe"
    start "" "C:\Users\Public\DRIVERS\5400\wifibluetooth2.exe"
    start "" "C:\Users\Public\DRIVERS\5400\wifibluetooth3.exe"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5400
            )else(
                exit
            )
)
if %op% equ 4 (
    start "" "C:\Users\Public\DRIVERS\5400\rede1.exe"
    start "" "C:\Users\Public\DRIVERS\5400\rede2.exe"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5400
            )else(
                exit
            )
)
if %op% equ 5 (
    start "" "C:\Users\Public\DRIVERS\5400\video.exe"
    start "" "C:\Users\Public\DRIVERS\5400\audio.exe"
    start "" "C:\Users\Public\DRIVERS\5400\wifibluetooth1.exe"
    start "" "C:\Users\Public\DRIVERS\5400\wifibluetooth2.exe"
    start "" "C:\Users\Public\DRIVERS\5400\wifibluetooth3.exe"
    start "" "C:\Users\Public\DRIVERS\5400\rede1.exe"
    start "" "C:\Users\Public\DRIVERS\5400\rede2.exe"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5400
            )else(
                exit
            )
)
if %op% equ 6 (
    start "" "C:\Users\Public\DRIVERS\5400\"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5400
            )else(
                exit
            )
)


:installDriversDellLatitude5410
cls
echo.
echo Drivers do Dell Latitude 5410
echo Qual driver quer Instalar?
echo 1. Video
echo 2. Audio
echo 3. Wifi e Bluetooth
echo 4. Rede
echo 5. Todos os essenciais acima
echo 6. Mostrar outros Drivers
set /p op="Digite a opcao e pressione ENTER: "
if %op% geq 1 if %op% leq 4 (
	rem a opção é válida, não faz nada
) else (
	rem a opção é inválida, exibe uma mensagem de erro
	echo.
    echo Por favor, insira uma opcao valida.
	echo.
	pause
    goto installDriversDellLatitude5410
)

if %op% equ 1 (
    start "" "C:\Users\Public\DRIVERS\5410\video.exe"
    set /p continue1="Quer instalar outro driver? (S/N): "
    if %continue1% equ "s" if %continue1% equ "S"(
        goto installDriversDellLatitude5410
    )else(
        exit
    )
)
if %op% equ 2 (
    start "" "C:\Users\Public\DRIVERS\5410\audio.exe"
    set /p continue1="Quer instalar outro driver? (S/N): "
    if %continue1% equ "s" if %continue1% equ "S"(
        goto installDriversDellLatitude5410
    )else(
        exit
    )
)
if %op% equ 3 (
    start "" "C:\Users\Public\DRIVERS\5410\wifibluetooth1.exe"
    start "" "C:\Users\Public\DRIVERS\5410\wifibluetooth2.exe"
    start "" "C:\Users\Public\DRIVERS\5410\wifibluetooth3.exe"
    set /p continue1="Quer instalar outro driver? (S/N): "
    if %continue1% equ "s" if %continue1% equ "S"(
        goto installDriversDellLatitude5410
    )else(
        exit
    )
)
if %op% equ 4 (
    start "" "C:\Users\Public\DRIVERS\5410\rede1.exe"
    start "" "C:\Users\Public\DRIVERS\5410\rede2.exe"
    set /p continue1="Quer instalar outro driver? (S/N): "
    if %continue1% equ "s" if %continue1% equ "S"(
        goto installDriversDellLatitude5410
    )else(
        exit
    )
)
if %op% equ 5 (
    start "" "C:\Users\Public\DRIVERS\5410\video.exe"
    start "" "C:\Users\Public\DRIVERS\5410\audio.exe"
    start "" "C:\Users\Public\DRIVERS\5410\wifibluetooth1.exe"
    start "" "C:\Users\Public\DRIVERS\5410\wifibluetooth2.exe"
    start "" "C:\Users\Public\DRIVERS\5410\wifibluetooth3.exe"
    start "" "C:\Users\Public\DRIVERS\5410\rede1.exe"
    start "" "C:\Users\Public\DRIVERS\5410\rede2.exe"
    set /p continue1="Quer instalar outro driver? (S/N): "
    if %continue1% equ "s" if %continue1% equ "S"(
        goto installDriversDellLatitude5410
    )else(
        exit
    )
)
if %op% equ 6 (
    start "" "C:\Users\Public\DRIVERS\5410\"
    set /p continue1="Quer instalar outro driver? (S/N): "
    if %continue1% equ "s" if %continue1% equ "S"(
        goto installDriversDellLatitude5410
    )else(
        exit
    )
)


:installDriversDellLatitude5420
cls
echo.
echo Drivers do Dell Latitude 5420
echo Qual driver quer Instalar?
echo 1. Video
echo 2. Audio
echo 3. Wifi e Bluetooth
echo 4. Rede
set /p op="Digite a opcao e pressione ENTER: "
if %op% geq 1 if %op% leq 4 (
	rem a opção é válida, não faz nada
) else (
	rem a opção é inválida, exibe uma mensagem de erro
	echo.
    echo Por favor, insira uma opcao valida.
	echo.
	pause
    goto installDriversDellLatitude5420
)

if %op% equ 1 (
    start "" "C:\Users\Public\DRIVERS\5420\video.exe"
    set /p continue1="Quer instalar outro driver? (S/N): "
    if %continue1% equ "s" if %continue1% equ "S"(
        goto installDriversDellLatitude5420
    )else(
        exit
    )
)
if %op% equ 2 (
    start "" "C:\Users\Public\DRIVERS\5420\audio.exe"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5420
            )else(
                exit
            )
)
if %op% equ 3 (
    start "" "C:\Users\Public\DRIVERS\5420\wifibluetooth1.exe"
    start "" "C:\Users\Public\DRIVERS\5420\wifibluetooth2.exe"
    start "" "C:\Users\Public\DRIVERS\5420\wifibluetooth3.exe"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5420
            )else(
                exit
            )
)
if %op% equ 4 (
    start "" "C:\Users\Public\DRIVERS\5420\rede1.exe"
    start "" "C:\Users\Public\DRIVERS\5420\rede2.exe"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5420
            )else(
                exit
            )
)
if %op% equ 5 (
    start "" "C:\Users\Public\DRIVERS\5420\video.exe"
    start "" "C:\Users\Public\DRIVERS\5420\audio.exe"
    start "" "C:\Users\Public\DRIVERS\5420\wifibluetooth1.exe"
    start "" "C:\Users\Public\DRIVERS\5420\wifibluetooth2.exe"
    start "" "C:\Users\Public\DRIVERS\5420\wifibluetooth3.exe"
    start "" "C:\Users\Public\DRIVERS\5420\rede1.exe"
    start "" "C:\Users\Public\DRIVERS\5420\rede2.exe"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5420
            )else(
                exit
            )
)
if %op% equ 6 (
    start "" "C:\Users\Public\DRIVERS\5420\"
        set /p continue1="Quer instalar outro driver? (S/N): "
            if %continue1% equ "s" if %continue1% equ "S"(
                goto installDriversDellLatitude5420
            )else(
                exit
            )
)
