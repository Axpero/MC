#Taller 1 (29/5/2015)
##Punto 1
### Cursos vacacionales
Para el desarrollo de las actividades es necesario y muy importante el siguiente link:
[Métodos computacionales Uniandes](https://github.com/ComputoCienciasUniandes/MetodosComputacionales)
#### Métodos computacionales
Lenguajes de programación que se usaran:
- C
- C+
- Python
- Bash
- Git
- MarkDown

##### Laboratorio de métodos computacionales
Se aprenderán a modelar cosas y herramientas de carpintería para el desarrollo de:

1. Derivadas.

2. Integrales.

3. Ecuaciones diferenciales.

``Revisar la Bibliografia``

>Bibliografía disponible en la pagina del curso.

##Punto 2
```
for i in {1..1000}
do
    echo $i, $((i * i)) >> NumerosEnteros.csv
done
```

##Punto 3
```awk -F"," '{print $1+$2}' NumerosEnteros.csv > NumerosSumados.csv```

##Punto 4
```
echo -n "Escriba un numero: "
read numerox
echo -n "Escriba otro numero: "
read numeroy

echo "Un numero + Otro Numero = $((numerox + numeroy))"
```
