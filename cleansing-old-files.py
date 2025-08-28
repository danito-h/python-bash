import sys
import os
from datetime import datetime

# Validar que llegaron 4 argumentos
if len(sys.argv) != 2:
    print("Uso: python3 cleansing-old-files.py <lista de archivos>")
    sys.exit(1)
else:
    lista = sys.argv[1]
    lista_de_lineas = lista.splitlines()
    timestamp = datetime.now().strftime("%Y-%m-%d")
    for elemento in lista_de_lineas:
        try:
            print("El archivo ha llegado: " + elemento)
            #os.rename(elemento , timestamp + "_" + elemento)
        except OSError as e:
            with open ("filesToDelete.log", "a") as log:
                log.write(e)