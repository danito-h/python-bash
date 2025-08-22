import sys
import os
import json
from datetime import datetime

timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
#Agregar la ruta a evalaur con os.path.exists
print("Entrando a pyhton...")
if(os.path.exists(".tar")):
    mensaje = {
        "fecha" : timestamp,
        "nombre" : "ComprimidoLibros.tar"
    }
else:
    mensaje = {
        "fecha" : timestamp,
        "error" : "No se pudo crear el comprimido"
    }
with open("resultadoBackup.txt", "a") as archivo:
    json.dump(mensaje , archivo, indent=4)