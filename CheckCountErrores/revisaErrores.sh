#!/bin/bash
archivo=errores.log
lineas=$(grep "ERROR" ${archivo})
qtty=$(grep "ERROR" ${archivo} | wc -l | xargs)
echo $qtty
if [[ "$qtty" -ne 0 ]] ;  then 
	echo "Enviando lineas de error a txt..."
	python3 escribeErrores.py "$qtty" "$lineas" 
else
	echo "No se encontraron errores"
fi
