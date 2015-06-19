#Taller 3 (5/06/2015)

## Punto 1


```
#!/bin/bash
touch archivo.md
for file in $(ls *.c)
do
	echo -e "#"$file >> archivo.md
	echo -e "\n" >> archivo.md
	echo -e "\`\`\`" >> archivo.md
	cat $file >> archivo.md
	echo -e "\`\`\`" >> archivo.md
	echo -e "\n" >> archivo.md
done
```

##Punto 2

```
#!/bin/bash
rm c31_goto.c
rm c83_terminal_io.c
rm cA5_thread_join.c
for file in $(ls *.c | head -30)
do
	gcc -o $file.out $file
	grep -A 2 "Example" $file
	echo "espiche 30 veces"
	read espiche
	./$file.out
done
#Se borran los ejecutables
rm *.out
```
