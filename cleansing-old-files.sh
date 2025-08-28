ruta="/Users/danito/Desktop/ProyectoPersonal/PythonBash/deleteFiles/"
antiguedad=30
var=$(find $ruta -mtime +"$antiguedad")
lines=$(find $ruta -mtime +"$antiguedad"| wc -l | xargs)
if [ "$lines" -ne 0 ] ; then
    echo "Mandando alerta con python..."
    python3 cleansing-old-files.py "$var"
else
    echo "No se ha encontrado ningun archivo con más de $antiguedad días de antigüedad."
fi
