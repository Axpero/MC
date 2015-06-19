# 27/05/15
##Métodos computacionales
> Primer Clase.
>**Aquí** en la primer clase.

>Herramientas del curso:
+ Git
+ Bash
+ C
+ Python
+ GitHub

>Métodos que se estudiaran para desarrollar problemas númericos:
+ Interpolación
+ Análisis de Fourier
+ Diferenciación númerica
+ Integración númerica
+ Ecuaciones diferenciales.

----------------------------------------------

####Clase
Durante la clase se realizó una introducción a la plataforma **LINUX**, donde también se interactuó con la terminal del mismo.   
Toda la práctica se realizó en la **Terminal**,  donde se implementaron diversos comandos para diferentes tareas. Estas tareas consistían en la navegación a través de las carpetas, manipulación de archivos y modificación de repositorio de GitHub desde la **Terminal**.
#####Comandos vistos para las diferentes tareas desarrolladas:

- Navegación a través de carpetas.  

```
-¿Dónde estoy situado?
pwd
-¿Cómo se que carpetas y archivos se encuentran en mi ubicación?
ls
-¿Cómo entro a una carpeta?
cd NombreDeLaCarpeta
-¿Cómo salgo de una carpeta al directorio anterior?
cd ..
-¿Cómo crear una carpeta?
mkdir NombreDeLaCarpeta
-¿Cómo borrar un carpeta?
rmdir NombreDeLaCarpeta
```
- Manipulación de archivos

```
-¿Cómo crear un archivo?(Si no quiere un editor determinado, sino simplemente un archivo vacío, no se pone un nombre de editor(Vim,Emacs,etc))
nombreEditorDeTexto nombreArchivo
-¿Cómo ver lo que contiene una columna de un archivo?
awk ´{print $NumeroDeLaColumna}´ NombreDelArchivo
-Si se sabe como estan delimitadas las columnas, ¿cómo ver lo que contiene una columna de un archivo?
awk -F"limitador(pueden ser comas)" ´{print $NumeroDeLaColumna}´ NombreDelArchivo
-¿Cómo operar números de dos columnas de un archivo?(Puede ser +,*,-,/ defendiendo de la operación que se quiera realizar)
awk '{print $NumeroDeColumna + $NumeroDeColumna}' archivo
-¿Cómo reemplazar un ítem especifico de un archivo por otro?
sed 's/CosaQueSeQuiereCambiar/PorLoQueSeQuiereCambiarLaCosa/g'
```
- Modificación de repositorio GitHub

Para la modificación de archivos y repositorios en GitHub es muy útil descargar el repositorio de GitHub, modificar todo lo que se quiera en el computador y luego subir todos los cambios, ya sea haber creado subrepositorios o archivos. Para esto se emplean las siguientes líneas de código:
```
1) Bajar el repositorio.
#Esto permitirá descargar todos los repositorios de un GitHub determinado, solicitando el nombre de Usuario de GitHub y la contraseña.
git pull origin master
2) Se modifican los archivos que se quieran, se crean carpetas, etc, en el computador.
3) Se agregan los archivos al repositorio.
#Este comando agrega los archivos a una carpeta oculta llamada .git, los elementos en esta carpeta son los que se actualizaran en GitHub. Si el archivo esta en una carpeta, se también se creara una carpeta en GitHub donde se sitúa el archivo en el computador, por ejemplo, si el archivo se encuentra en MC/Clase/Trabajo/Clase10/NombreDelArchivo, en GitHub se crearan las carpetas MC, Clase, Trabajo y Clase10, una dentro de la otra, y dentro del Clase10 estará el archivo que se sube. 
git add NombreDelArchivo
4) Se le agrega un commit.
#El archivo no se subirá a GitHub sino se le hace su correspondiente commit, que es una especie de comentario acerca del archivo.
git commit Comentario
5) Se sube todo a GitHub
#Este comando subirá lo que se acaba de agregar en el paso 3, prácticamente actualiza el GitHub, este también solicitará nombre de usuario y contraseña de GitHub.
git push origin master
```
- Comandos adicionales

En clase también se vio un comando, el cual permitía bajar el código fuente de cualquier página de internet
```
curl URLaLaQueSeLeQuiereBajarElCodigoFuente
```
También se vio un comando para entrar a computador remoto
```
ssh usuario@computadorRemoto
```
***************
***************
#29/05/2015
##Laboratorio Métodos Computacionales

Se realizó un taller, el cual permitió familiarizarse con MardDown, con Bash y con Git. Para esta cesión era necesario haber leído el material propuesto (Pro Git, Pro Bash Programming y Survey of Computational Physics).
El taller se puede encontrar [aquí](https://github.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/blob/master/2015-V/actividades/talleres/Taller1.md) y lo que se alcanzo a realizar [aquí](https://github.com/Axpero/MC/blob/master/Talleres/Taller%201/Taller%201.md).
##Descanso (Comida, comida :D)
##Métodos Computacionales

Se procedió a realizar unos ejercicios en clase, los cuales consistían en poder ingresar en un computador remoto a través de la terminal.  
En el ejercicio se buscaba recuperar un archivo borrado de GitHub a partir del commit y la descarga del repositorio. También se buscaba un commit de un archivo en la computadora, en este commti se lograba determinar que se creó el 05/01/2013 a las 19:28:57 y que el tema Método de Interferencia Bayesiana correspondía a la semana 15 del curso.
***************
***************
#02/06/2015
##Métodos Computacionales

Se explicaron los conceptos básicos de expresiones regulares. Y nos dieron una introducción con expresiones regulares básicos.

- Inicio de líneas `^`
- Final de las líneas `$`
- Intervalos `(a|b)`
- Caracteres especiales `\@`
- Buscar caracteres `[aquiVanCaracteres\@]`
- Dígitos `\d`
- No dígitos `\D`

Por medio de GNUPlot, se observó y aprendió cómo graficar en la terminal y generar muy buenas gráficas con **aqua** desde la **Terminal**. En GNU se pueden graficar funciones, aunque la aplicación 'aqua' no estaba disponible en Ubuntu, se pudo observar la calidad de las gráficas que ofrece. En GNU se pueden hacer interpolaciones y señalarlas con diferentes figuras.

---------------------------------
En clase se realizaron ejercicios sencillos, estos ejercicios tenían como fundamento el uso de las expresiones regulares y el uso de GNUPlot para graficar.

El primer ejercicio tenia como objetivo representar 4 caracteres con las expresiones regulares, esto  se realiza con la siguiente línea de código:

>^.... 

Los puntos indican un carácter cualquiera y `^` es para ponerlo al inicio de una linea. Esto se puede ser útil al momento de crear archivos que se implementaran para un análisis de datos.


Para el ejercicio de GNUPlot se realizó el siguiente script:
```
#!/bin/bash
echo -n "El nombre del archivo csv: "
read archivo
echo -n "Escriba el numero de la columna vertical: "
read ejey
echo -n "Escriba el numero de la columna horizontal: "
read ejex

gnuplot<<EOF 
plot "$archivo" using $ejex:$ejey with linesp
EOF
```

***************
***************
#03/06/2015
##Laboratorio Métodos Computacionales

En el laboratorio se trabajo la limpieza de una tabla para crear un archivo .csv, para poder procesar los datos. El ejercicio consistía en tomar los datos de una tabla en internet y limpiar el archivo para procesar los datos y hacer uso de GNUPlot para realizar una gráfica de el periodo al cuadrado contra el radio al cubo, esto para mostrar la tercer ley de Kepler con los datos de los satélites de Saturno.

----------------------------------

##Métodos computacionales

En clase se estudio el uso de la herramienta GNUPlot, se vieron los siguientes comandos para la configuración del cuadro de la gráfica producida por GNUPlot:

```
+ Poner título
set title "Aquí se pone el título"
+ Poner label en los ejes
set xlabel "Cosa"
set ylabel "Coso"
+ Con que quiere graficar:
- Lineas
plot f(x) with line
- Puntos y líneas
plot f(x) with linesp
```

Luego se realizaron regresiones, un ejemplo de esto se puede ver [aquí](http://gnuplot.sourceforge.net/docs_4.2/node82.html), el siguiente ejemplo fue tomado del link anterior.

```
f(x) = a*x**2 + b*x + c
g(x,y) = a*x**2 + b*y**2 + c*x*y
FIT_LIMIT = 1e-6
fit f(x) 'measured.dat' via 'start.par'
fit f(x) 'measured.dat' using 3:($7-5) via 'start.par'
fit f(x) './data/trash.dat' using 1:2:3 via a, b, c
fit g(x,y) 'surface.dat' using 1:2:3:(1) via a, b, c
```

*************
*************

#05/06/2015
##Laboratorio Métodos Computacionales

Se realizó un taller relacionado con C, el cual consistía en crear archivos ejecutables y estudiar como era su estructura. [Aqí esta el taller](https://github.com/Axpero/MC/blob/master/Talleres/Taller%203/Taller3.md).

---------------------------------

##Métodos Computacionales

En la clase se vio cómo era la estructura básica para la creación de funciones en C, también se compararon los tiempos de ejecución de Bash, C y Python. El libro **Beginning C** de **Ivor Horton** es una guía básica y muy útil para aprender las estructuras básicas de C.

Luego se procedió a realizar ciertas actividades en Python, para familiarizarse con el lenguaje de programación.
*************
*************

#09/06/2015
##Métodos Computacionales

Para la clase se realizó un estudio de la herramienta Make, esta herramienta permite automatizar ciertas tareas. Para esto se debe tener claro el patrón en el cual las tareas deben ejecutarse. Se realizó un ejercicio de ejecución de scripts con Make.

*************
*************

#10/06/2015
##Laboratorio Métodos Computacionales
Se empezó el Experimento1 de la clase.
 
##Métodos computacionales

En la práctica se pidio realizar una cuadricula que contenga 25 figuras de Lissajous usando la libreria matplotlib de Python, se realizó el siguiente código.

```
%pylab inline
#Se crean los arrays de las variables que van a variar, para crear las diferentes curvas
#Estas variables son a y b, entonces:
a = range (0,25)
b = range (1,26)
#La función tiene un delta el cual es pi/2, entonces se crea el delta:
d = pi/2
#Se crea el periodo
t = linspace(0, 2*pi, 400)
#Se crea un for para que recorra los arrays y varie a,b y cree las gráficas.
figure (figsize = (10,10))
for i in range(0,25):
    x = sin(a[i]*t + d)
    y = sin(b[i]*t)
    subplot(5, 5, i+1)
    plot (x,y)
    plt.axis('off')
show()
```

Y dio las siguientes gráficas:

![alt text](https://raw.githubusercontent.com/Axpero/MC/master/Lissajous.png "Lissajous")

*************
*************


