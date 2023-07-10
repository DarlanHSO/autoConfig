@echo off

set caminho_servidor="grupo-sorocred.br"

mkdir "C:\Program Files\Verisys\VerisysLauncher\Backup"
rd /S /Q C:\Verisys\VerisysLauncher
mkdir C:\Verisys\VerisysLauncher
Xcopy "\\%caminho_servidor%\dfs-filiais\Sistema\Repositorio Toolbar\VerisysLauncher" C:\Verisys\VerisysLauncher\ /E /Q /H /Y

\\%caminho_servidor%\sysvol\%caminho_servidor%\scripts\Scripts_Logon\Script_verisys.bat

exit