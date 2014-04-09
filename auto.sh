#!/bin/sh

i=0
server=$1
mkdir -p tmp/${server}
while [ $i -lt 100000 ];do
    file=`date "+%y%m%d%H%M"`.$i 
    echo "python ssl.py $1 >tmp/${server}/${file}"
    python ssl.py ${server} >tmp/${server}/${file}
    sleep 1
    ((i++))
done
