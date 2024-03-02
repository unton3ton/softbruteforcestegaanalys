#!/bin/bash

for num in 0 1 
do
echo -e "Удаляем из файла stegaanalysresults${num}.txt строки, которые 
содержат подстроки 'Extract', 'ValueError' или 'd1 = d2', результат записываем
в файл diff_${num}.txt\n"

sed '/Extract\|ValueError\|d1 = d2/d' stegaanalysresults$num.txt > diff_$num.txt

echo -e "ищем строки в файле diff_${num}.txt, которые содержат в подстроке
число длиной от 3 до 29 цифр, результат записываем в файл sought_${num}.txt\n"

cat diff_$num.txt | grep -Eona '[[:digit:]]{3,29}' > sought_$num.txt
done