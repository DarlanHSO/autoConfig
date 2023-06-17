@echo off

cls

echo.
echo Ramal para Toolbar:
echo.
set /p id="Digite seu ramal e pressione ENTER: "
echo %id% > C:\Verisys\VerisysToolbar\Ramal\Ramal.ini
echo.
echo Ramal para SipPhone:
echo.
set /p id="Digite seu ramal e pressione ENTER: "
echo %id% > C:\Verisys\SipPhoneVerisys\Ramal\ramal.ini

pause
exit