#Taller 2 (03/6/2015)

El enunciado del taller puede encontrarse [aquí](https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/blob/master/2015-V/actividades/talleres/Taller2/Taller2.md)
 
##Punto 1

```
#!/bin/bash
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv
sed '1d' lottery.csv > loterry1.csv
rm lottery.csv
awk -F"," '{if ($1 == 201215447) print $2}' loterry1.csv > lottery.csv
cat lottery.csv
```

##Punto 2

```
#!/bin/bash
#!/bin/bash
wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/talleres/Taller2/pgn.dat
sed -i 's/\.//g' pgn.dat 
sed -E -i 's/\,[[:digit:]]/\.&/g' pgn.dat
sed -E -i 's/\.\,/\./g' pgn.dat
sed -i 's/)//g' pgn.dat
sed -i 's/(/\t-/g' pgn.dat
sed -E -i 's/\s[[:digit:]]/\t&/g' pgn.dat
sed -E -i 's/\t\s/\t/g' pgn.dat
cp pgn.dat pgn.tsv
sort -n --field-separator=$'\t' --key=4 pgn.tsv >> pgn.txt
echo "Esta es el area con menores ingresos"
head '-1' pgn.txt
```

##Punot 3

```
#!/bin/bash
#Borré a mano los dos títulos, Major Satellites y Lesser satellites, tambien borre las líneas en blanco a mano
#Borro los espacios al inicio de cada línea
sed -i 's/^ *//g' saturno.txt
#Cómo vimos en clase eliminamos lo que se encuentra en parentesís con el siguiente comando
sed -i 's/(.*)//g' saturno.txt
#Cambio las comas por vacios
sed -i 's/,//g' saturno.txt
#Finalmente decidií areglar el resto del archivo con el editor gedit (El archivo se encuentra en el repositorio de este taller)
#Luego se procede a realizar hacer la gráfica en gnuplot
gnuplot<<EOF 
#Se ingresa el rango
set xrange [0, 10000]
#Se nombran los ejes
set xlabel "Eje mayor al cubo"
set ylabel "Cuadrado del periodo"
#Se gŕafica el archivo
plot "$saturno.csv" using (($2)**3):(($4)**2)
EOF
```

