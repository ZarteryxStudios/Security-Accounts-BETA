=================================================================================
@echo off
title Registrar Cuenta
cls
mode con cols=60 lines=40
CHCP 65001
Color F
=================================================================================

=================================================================================
:menu
cls
echo.
echo  Bienvenid@ a Security Accounts Beta
echo.
echo  ¿Desea Registrar una Nueva Cuenta?(New)
echo  ¿O Registrar una Cuenta Existente?(SignIn)
set/p "manager=>"
if %manager%==New goto registrarse
if %manager%==SignIn goto signin
=================================================================================

=================================================================================
:registrarse
cls
echo.
echo  Registrate para continuar
echo  Recuerda nada de esto se registra en linea, todo es local
echo.
echo.
set/p "nombre=>Nombre:"
echo.
set/p "contrasena=>Contrasena:"

:confirmacion
set/p "confirmar=¿Los Datos estan Correctos?(Si o No)"
if %confirmar%==Si goto s
if %confirmar%==No goto n

:s
echo.
echo Creando Cuenta...
cd Accounts
timeout /t 4 /nobreak > nul

MD %nombre%
cd %nombre%
echo Nombre: >> Informacion.txt
echo %nombre% >> Informacion.txt
echo. >> Informacion.txt
echo Contraseña:>> Informacion.txt
echo %contrasena% >> Informacion.txt
echo %contrasena% >> key.txt

echo ¡Cuenta Creada con Exito!
echo.
echo Presione cualquier tecla para finalizar
pause > nul
exit

:n
cls
goto registrarse
=================================================================================

=================================================================================
:signin
cls
cd Accounts
echo.
echo  Inicia sesion para continuar
echo  Recuerda nada de esto se registra en linea, todo es local
echo.
echo.
set/p "account=>Inserte Nombre:"
cd %account%
cls
echo.
echo  Inicia sesion para continuar
echo  Recuerda nada de esto se registra en linea, todo es local
echo.
echo.
set/p "key=>Contrasena:"
timeout /t 1 /nobreak > nul
echo  Iniciando Sesion...
timeout /t 4 /nobreak > nul
echo.
echo ¡Sesion Iniciada!
timeout /t 2 /nobreak > nul
call Security
exit
=================================================================================