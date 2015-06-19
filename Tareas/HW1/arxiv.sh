#!/bin/bash
#Decoración
figlet arXiv
#Decoración
echo "=============================================="
printf "Searching the arXiv for the new stuff
Condensed Matter http://arxiv.org/list/cond-mat/new
==============================================\n"
#Declaro la palabra clave
printf "Keyword: $1 \n"
echo "=============================================="
#Descargo le código fuente de la pagina
curl -s http://arxiv.org/list/cond-mat/new > archivo.txt
#Selecciono la parte del código fuente, donde sé que estan los títulos y los envio a otro archivo
grep -i Title: archivo.txt > archivo1.txt
#Tomo el archivo y busco en los títulos la palabra clave
grep -i $1 archivo1.txt > archivo.txt
#Quito las partes del código fuente que no necesito y al ver el archivo que creé, sé que lo que no me sirve esta al inicio de cada línea, así que lo cambio por guiones
sed 's/.*<span class="descriptor">Title:<\/span> /-/g' archivo.txt > archivo1.txt
#Creo un variable donde pondre el número de archivos sin que salga el nombre del archivo cuando uso wc
coso=$(wc -l archivo1.txt | sed 's/archivo1.txt//g')
echo "Articles found: $coso"
#Le hago el cat al archivo para que me muestre los títulos
cat archivo1.txt
echo "=============================================="
