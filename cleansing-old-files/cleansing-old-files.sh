ruta="/Users/danito/ProyectoPersonal/Scripts/PythonBash/cleansing-old-files/deleteFiles/"
FECHA_NOMBRE=$(date +'%d-%m-%Y %H:%M:%S')
antiguedad=30
var=$(find $ruta -mtime +"$antiguedad")
lines=$(find $ruta -mtime +"$antiguedad"| wc -l | xargs)
if [ "$lines" -ne 0 ] ; then
    echo "$FECHA_NOMBRE: Mandando alerta con python..."
    /Library/Frameworks/Python.framework/Versions/3.10/bin/python3 /Users/danito/ProyectoPersonal/Scripts/PythonBash/cleansing-old-files/cleansing-old-files.py "$var" "$lines"
else
    echo "No se ha encontrado ningun archivo con más de $antiguedad días de antigüedad."
fi
