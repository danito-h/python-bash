ruta="/Users/danito/Desktop/ProyectoPersonal/PythonBash/deleteFiles/"
antiguedad=30
var=$(find $ruta -mtime +"$antiguedad")
lines=$(find $ruta -mtime +"$antiguedad"| wc -l | xargs)
if [ "$lines" -ne 0 ] ; then
    echo "Mandando alerta con python..."
    /Library/Frameworks/Python.framework/Versions/3.10/bin/python3 /Users/danito/Desktop/ProyectoPersonal/PythonBash/cleansing-old-files.py "$var" "$lines"
else
    echo "No se ha encontrado ningun archivo con más de $antiguedad días de antigüedad."
fi
