#Ejercicio1
cat /proc/cpuinfo | grep model
#Ejercicio2
cat /proc/cpuinfo | grep model | wc -l
#Ejercicio3
wget -O Juan_in_wonderland.txt https://www.gutenberg.org/files/11/11-0.txt && sed -i 's/Alice/Juan/g' Juan_in_wonderland.txt && rm Juan_in_wonderland.txt
#Ejercicio4
sort -k 4n -o weather_cordoba_out.in weather_cordoba.in && head -1 weather_cordoba_out.in | awk '{ print $1,$2,$3 }' && tail -1 weather_cordoba_out.in | awk '{ print $1,$2,$3 }'
#Ejercicio5
sort -k 3n -o atpplayers_out.in atpplayers.in
#Ejercicio6
cat superliga.in | sort -k 2n -o superliga_out.in superliga.in && awk '$7 > max[$2] {max[$2]=$7; row[$2]=$0} END { for (i in row) print row[i] }' superliga_out.in > superliga_out_new.in
#Ejercicio7
ip addr | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'
#Ejercicio8a
mkdir nombre_serie && touch nombre_serie/fma_S01E{1..10}_es.srt
#Ejercicio8b
cd nombre_serie && for i in *_es.srt; do mv -- "$i" "${i%_es.srt}.srt"; done

$SHELL
