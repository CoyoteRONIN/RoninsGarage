@echo off
:inicio
echo.
set/p pregunta= ¿cuanto son 2 + 2?
cls
echo.
if %pregunta%==4 goto correcto else goto incorrecto
:incorrecto
echo.
echo Mal!!
echo.
echo Vuelve a intentarlo
pause
cls
goto inicio
:correcto
echo.
echo Bien!!
echo Pulsa una tecla para salir de este ejemplo 
pause>nul
exit
