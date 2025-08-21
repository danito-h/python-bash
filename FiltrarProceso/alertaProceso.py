import sys
from datetime import datetime

# Validar que llegaron 4 argumentos
if len(sys.argv) != 2:
    print("Uso: python3 alertaProceso.py <proceso>")
    sys.exit(1)

proceso = sys.argv[1]

timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
mensaje = f"[{timestamp}] ⚠️ ALERTA: El proceso '{proceso}' no se está ejecutando en este momento"

# Guardar en log
with open("alertasProcesos.log", "a") as log:
    log.write(mensaje+"\n\n")
    