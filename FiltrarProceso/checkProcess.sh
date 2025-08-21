#!/bin/bash
#Cambiar por ruta del proceso que se quiera evaluar 
proceso="System/Applications/Notes.app" 
salida=$(ps aux | grep $proceso| awk '{print $11}')
if [ "$salida" = "grep" ] ; then
   echo "Mandando alerta con Python..."
    python3 alertaProceso.py "$proceso" 
else
    echo -e "--->Proceso actual:<---\nUSUARIO PID PROCESO"
    ps aux | grep $proceso| awk '{print $1 "    " $2 "  " $11}'
fi
