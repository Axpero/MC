#!/bin/bash
#Descarga los archivos necesarios
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/kepler.csv
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionales/master/homework/2015-V/HW1/keplerREADME
#Uso del comando awk para eliminar la primer linea (ya que esta contiene la descripcion de cada columna)
awk '{if (NR!=1) {print}}' kepler.csv > keplerSinLinea.csv
rm kepler.csv
#Punto 1)
#Con el comando ls cuento el numero de lineas, ya que en cada linea del archivo se encuentra el nombre de un planeta
echo "PUNTO A"
echo "Numero de planetas"
wc -l keplerSinLinea.csv
#Punto 2)
echo "PUNTO B"
#Selecciono los planetas con masa inferior a 0,001 MSINI
awk -F","  '{if ($2 < 0.01 && $2 >= 0) {print $1}}' keplerSinLinea.csv > keplerJupiter.csv
#Cuento las lineas
wc -l keplerJupiter.csv
#Muestro las lineas
echo "Planetas con masa inferior a 0,001"
cat keplerJupiter.csv
#Punto 3)
echo "PUNTO C"
#Selecciono la columna 9, que corresponde al periodo
awk -F"," '{if ($6 > 0) {print $6}}' keplerSinLinea.csv > keplerPeriodo.csv
#Ordeno la columna de mayor a menor
sort  keplerPeriodo.csv > keplerPeriodoOrdenado.csv
head '-1' keplerPeriodoOrdenado.csv > menor.csv
#Selecciono la linea que contiene el numero que indica el menor periodo
grep 0.299697768 keplerSinLinea.csv > linea.csv
#Selecciono la primer columna de la linea que indica el menor periodo
awk -F"," '{print $1}' linea.csv > linea1.csv
#El resultado
echo "El menor periodo es: "
cat menor.csv
echo "Y el planeta al que corresponde este periodo es:"
cat linea1.csv


