@echo off
title Calculadora
:hom
:: otorgamos el primer valor de la operación.
echo Escriba el primer numero de la operacion
set/p paso1=
:: limpiamos para que nos pida el signo de operación.
:: para que los signos de operaciones funcionen, los colocamos entre parentesis y con comas. Para que lo detecte como símbolos matemáticos.
echo Escriba el signo de operacion (+,-,*,/,)
:: enlazamos el paso1 con el set/p al paso2.
set/p paso2=%paso1%...
:: otorgamos el segundo valor de la operación.
echo Escriba el segundo numero de la operacion
:: enlazamos el paso1 y el paso2 al paso3.
set/p paso3=%paso1%%paso2%...
:: enlazamos el resultado para que haga la operación con los pasos anteriores.
set/a pasofinal=%paso1%%paso2%%paso3%...
:: conseguimos el resultado finalmente.
echo Total: %paso1%%paso2%%paso3%=%pasofinal%
echo. 
echo Pulsa una tecla para salir.
pause
exit
