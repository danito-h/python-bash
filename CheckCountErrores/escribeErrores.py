import sys
from datetime import datetime
# Validar que llegaron 4 argumentos
if len(sys.argv) != 3:
    print("Uso: python3 escribeErrores.py <fecha de notificación> <cantidad de errores> <errores>")
    sys.exit(1)

cantidad = sys.argv[1]
errores = sys.argv[2]

timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
mensaje = f"[{timestamp}] ⚠️ ALERTA: Se encontraron {cantidad} errores en el archivo:\n\t\t  {errores}.\n"
with open("errores.txt", "a") as log:
    log.write(mensaje+"\n\n")
    