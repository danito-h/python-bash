import sys
from datetime import datetime

# Validar que llegaron 4 argumentos
if len(sys.argv) != 5:
    print("Uso: python3 alerta.py <directorio> <tamano_en_MB> <umbral> <lista de archivos para borrar>")
    sys.exit(1)

directorio = sys.argv[1]
tamano = sys.argv[2]
umbral = sys.argv[3]
fquantity = sys.argv[4]

timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
mensaje = f"[{timestamp}] ⚠️ ALERTA: El directorio '{directorio}' está usando {tamano}.\n"
explicacion = f"\t\t\tEl umbral estimado es de {umbral} y este directorio excede el tamaño permitido. Puedes cambiarlo en el .sh de la carpeta del proyecto.\n"
files = f"\t\t\tEstos son los archivos que más pesan en esa carpeta: \n{fquantity}\n\n"
# Mostrar en consola
print(mensaje)

# Guardar en log
with open("alertas.log", "a") as log:
    log.write(mensaje+explicacion+files+"\n\n")
    