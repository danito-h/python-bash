import sys
import os
from datetime import datetime

# Validar que llegaron 4 argumentos
if len(sys.argv) != 3:
    print("Uso: python3 cleansing-old-files.py <lista de archivos>")
    sys.exit(1)
else:
    lista = sys.argv[1]
    qtty = sys.argv[2]
    lista_de_lineas = lista.splitlines()
    timestamp = datetime.now().strftime("%Y-%m-%d")
    mensaje = f"[{timestamp}] ⚠️ Estos son los {qtty} archivos que se borrarán: "
    with open ("filesToDelete.log", "a") as log:
                log.write(mensaje)
    for elemento in lista_de_lineas:
        try:
            print("El archivo ha llegado: " + elemento)
            with open ("filesToDelete.log", "a") as log:
                log.write("\t ➡" + elemento + "\n")
            #os.rename(elemento , timestamp + "_" + elemento)
        except OSError as e:
            with open ("cleansing-old-files.log", "a") as log:
                log.write(e)