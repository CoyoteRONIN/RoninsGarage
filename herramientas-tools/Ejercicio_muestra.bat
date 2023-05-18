@echo off
:: Para hacer un salto de linea
echo.
:: Salida por pantalla de un mensaje
echo hola me llamo Fer
:: El programa espera a pulsar una tecla para seguir 
echo. 
echo probando una nueva linea 
:: no es bonito pero ya sabemos como hacer una linea mas
set nombre= Skynet
set nombre2= T800
:: el set es una variable de asignacion de nombre
echo.
:: dentro de los %% ponemos la variable para que pille el nombre
echo Hola, soy %nombre%, he mandado por ti un %nombre2%
echo.
:: con este comando se puede hacer una pregunta y la podemos responder
set/p nombre= ¿Como te llamas?
echo.
echo Te has librado, solo busco a John Connor, entonces conozcamonos mas
echo.
:: comando para respuesta en numerico.
set/p numero1= Cuantos años tienes?
echo.
echo Has gastado un 30% de tu vida util
echo.
set/p nombre= Has pertenecido a los rebeldes humanos?
echo.
echo Bien, no eres mi enemigo entonces
:: con cls limpiamos la pantalla de comandos.
cls
:: con el siguiente comando vamos a ver una suma, igual prodiamos hacerlo con otra operacion basica.
echo Juguemos a algo.
echo.
set/p numero1= Dime un numero
echo.
set/p numero2= Dime otro para sumar al anterior
cls
set/a suma= %numero1% + %numero2%
echo.
echo %numero1% + %numero2% = %suma%
echo.
@echo off
:inicio
echo.
set/p pregunta= A quien estoy buscando?
cls
echo.
if %pregunta%==John goto correcto else goto incorrecto
:incorrecto
echo.
echo A ese no le estoy buscando, busco al jefe de la rebelion
echo.
echo Vuelve a intentarlo
pause
cls
goto inicio
:correcto
echo.
echo Eso es, John Connor
echo Pulsa una tecla para salir de este ejemplo
pause
:: Salir del programa
exit