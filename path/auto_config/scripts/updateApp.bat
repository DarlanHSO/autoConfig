@echo off
cls
set caminho_servidor="\\scdcasv09\downloads"

echo. Atualizando Aplicativo

start "" "%caminho_servidor%\auto_config\setup"

exit