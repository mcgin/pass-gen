count=$(grep -c . wordlist.txt)
result=""
for i in {1..10}
do 
    n=$(( ( RANDOM % $count )  + 1 ))
    result+=$(head -$n wordlist.txt | tail -1)
    result+=" "
done
echo $result
