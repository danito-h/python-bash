#!/bin/bash
#agregar la ruta del fichero a comprimir
ruta=""
tar -czf ComprimidoLibros.tar $ruta
echo "Enviando resultado con Python en <resultadoBackup.txt>... $?"
python3 reviewStatusBackup.py "$?"
