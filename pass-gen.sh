wordcount=$(grep -c . wordlist.txt)
result=""
i=1
while [ "$i" -le "$1" ]; do
    n=$(( ( RANDOM % $wordcount )  + 1 ))
    result+=$(head -$n wordlist.txt | tail -1)
    result+=" "
    i=$(($i + 1))
done
echo $result
