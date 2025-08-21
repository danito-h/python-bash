#!/bin/bash
count=$(ls *.txt| wc -l | xargs)
list=$(ls *.txt)
if [ "$count" -ne 0 ] ; then
    python3 renameFiles.py  "$list"
else
    echo "No he encontrado ningun archivo .txt para renombrar"
fi
