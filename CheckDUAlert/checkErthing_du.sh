#!/bin/bash
#Revisar los archivos  dentro de una carpeta, que sean los más pesados
#Umbral para enviar alerta, de los más pesados
umbral=6
ruta=""
files=$(ls -sh "$ruta" | sed -n "2,${umbral}p" | awk '{print $0 "\n"}')
echo $files 
 
