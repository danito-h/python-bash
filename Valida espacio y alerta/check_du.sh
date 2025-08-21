#!/bin/bash
#Umbral para enviar alerta
umbral=5
#Colocar la ruta a evaluar
ruta="/"
diskusage=$(du -s "$ruta" | awk '{print $1}')
echo "El tamaño de lo usado es: $diskusage"
uso=0
fquantity=6
if [ "$diskusage" -lt "$umbral" ] ; then
	echo "OK"
else
	echo "Se superó el umbral, mandando alerta con Python..."
        uso=$(du -sh "$ruta" | awk '{print $1}')
	files=$(ls -sh "$ruta" | sed -n "2,${fquantity}p" | sed 's/^/\t\t\t/')
	python3 alerta.py "$ruta" "$uso" "$umbral" "$files"
fi 

 
