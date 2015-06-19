#!/bin/bash
#Descargo los archivos
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/worldhistory.tsv
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/hyg.csv
#Decorado :v
echo "##########################################"
figlet StarDate
echo "##########################################"
#Decorado de la fecha que entra por parametro
figlet $1
#Defino variables
var1=$1
var2=$((2015-$var1))
var3=$((2016-$var1))
#Busqueda de la fecha que entra por parametro en el documento de acontecimientos historicos
grep $1 worldhistory.tsv > cosito.tsv
#Se toma la columna del acontecimiento y se imprime en un archivo
awk -F"\t" '{print $2}' cosito.tsv > cosita.tsv
#Se muestra lo que ocurrio en el año que entra por parametro
cat cosita.tsv
#Decorado
echo "##########################################"
#Mensaje de la interfaz
echo "LOOK AT THE FOLLOWING STARS:"
#Se le quitan las primeras 32 lineas al archivo, ya que estas son solo descripciones de lo que es cada columna
sed '1,32d' hyg.csv > sinFilaHyg.csv
#Creo un archivo con las datos que necesito, los cuales de encuentran en las columnas dist, ra, dec, hip
awk -F"," '{print $10","$8","$9","$2}' sinFilaHyg.csv > datosNecesarios.csv
awk -F"," '{print $10}' sinFilaHyg.csv > anho.csv
#Selecciono las estrellas contemporaneas al evento
awk -F"," '{if ('$var2' <= $1 && '$var3' > $1) {print $2"\t"$3"\t"$4}}' datosNecesarios.csv > datos.csv
#En datos.csv ya se encuentra todo lo que debe imprimir, aunque en la instruccion dice que se deben imprimir maximo 5 datos, así que solo tomaré las primeras 5 lineas del archivo.
head '-5' datos.csv > 5datos.csv
#Imprimo los datos
echo "RA/°		DEC/°		HIP No."
cat 5datos.csv

