@echo off

mkdir "C:\Program Files\Verisys\VerisysLauncher\Backup"
rd /S /Q C:\Verisys\VerisysLauncher
mkdir C:\Verisys\VerisysLauncher
Xcopy "\\caminho_servidor\VerisysLauncher" C:\Verisys\VerisysLauncher\ /E /Q /H /Y

\\caminho_servidor\Script_verisys.bat

exit