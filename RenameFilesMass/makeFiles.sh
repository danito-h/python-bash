#!/bin/bash
qtty=10
for i in {1..10} ; do
    touch archivo$i.txt
    echo "Esta es la primera linea de un texto" >>archivo$i.txt
done