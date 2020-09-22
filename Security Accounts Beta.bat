=====================================================================================
@echo off
:data
title Security Accounts BETA
mode con cols=120 lines=35
CHCP 65001
cls
Color F

echo Cargando...
echo.
FOR /F "tokens=*" %%A IN (Config.ini) DO @ECHO %%A

timeout /t 2 /nobreak > nul
start Loader.bat
cd Accounts
if not exist MD call Registrar.bat
set accounts=0
if %accounts% == 1 start Registrar.bat
mode con cols=120 lines=35
set version=0.0.10.29B
set compilation=0.0.10.29B
CHCP 65001
=====================================================================================

=====================================================================================
:menu
cls
Color F
echo Version %version%
echo   ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■
echo   ■  Creado por Dazaryx (Zarteryx Studios)                                                        ■
echo   ■  Motivos de Privacidad                                                                        ■
echo   ■                                                                                               ■
echo   ■  Opciones del Menu (Accounts,Acerca)                               Version %version%         ■
echo   ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■ ■ ■■
echo.
echo ¡Bienvenido Usuario!
set/p "manager=[ ]¿Que desea hacer?> "
if %manager%==Cuentas goto cuentas
if %manager%==Acerca goto acerca

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo      ■■■■■■■■■■■■■■■■■■          ■■■■■■■■■■■■■■■■■■          ■■■■■■■■■■■■■■■■■■
echo      ■                ■          ■                ■          ■                ■
echo      ■    Cuentas     ■          ■                ■          ■                ■
echo      ■                ■          ■                ■          ■                ■
echo      ■■■■■■■■■■■■■■■■■■          ■■■■■■■■■■■■■■■■■■          ■■■■■■■■■■■■■■■■■■
echo.
echo      ■■■■■■■■■■■■■■■■■■          ■■■■■■■■■■■■■■■■■■          ■■■■■■■■■■■■■■■■■■
echo      ■                ■          ■                ■          ■                ■
echo      ■                ■          ■     Acerca     ■          ■                ■
echo      ■                ■          ■                ■          ■                ■
echo      ■■■■■■■■■■■■■■■■■■          ■■■■■■■■■■■■■■■■■■          ■■■■■■■■■■■■■■■■■■
echo.
=====================================================================================

=====================================================================================
:cuentas
cls
Color F
dir
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo   Opciones         [Nueva Cuenta] E                     [Seleccionar Cuenta] A
set/p "selectAccount=>"
if %selectAccount%==E goto newaccount
if %selectAccount%==A goto selectaccount

:newaccount
echo.
echo Cargando...
timeout /t 4 /nobreak > nul
echo.
echo    Crear Nueva Cuenta
set/p "ANombre=Nombre>"
set/p "AContra=Contraseña>"
MD %ANombre%
cd %ANombre%
type Access.key
%AContra% >> Access.key
goto cuentas

:selectaccount
cd %selectAccount%


:cuentastest
echo.
echo Inserta la contrasena
set/p "pass=>"
if not %pass%== MasterGaming goto Incorrecta
echo.
echo Contrasena Correcta
echo Presione ENTER para continuar
pause > nul
=====================================================================================

=====================================================================================
:acerca
cls
Color F
set xxxxxB=%compilation%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                                       ■■■■■■■■■■
echo                                                                      ■          ■
echo                                                                      ■          ■
echo                                Security Accounts Beta                ■          ■
echo                         Version %xxxxxB% (Compilacion BETA)          ■          ■
echo                                                                       ■        ■
echo                                                                       ■        ■
echo                                                                        ■      ■
echo                                                                         ■■■■■■
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo        Presione para Regresar
echo.
echo.
pause > nul
goto menu
=====================================================================================