for i in {1..1000}
do
    echo $i, $((i * i)) >> NumerosEnteros.csv
done

awk -F"," '{print $1+$2}' NumerosEnteros.csv > NumerosSumados.csv