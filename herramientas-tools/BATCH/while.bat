@echo off
set contador=1
set limite=10

echo "Comenzando el bucle..."

:while
if %contador% gtr %limite% goto fin

echo "Iteración número %contador%"

set /a contador+=1
goto while

:fin
echo "Fin del bucle."


