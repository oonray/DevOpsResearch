#!/bin/bash
st=`docker ps | sed -nr 's:.*minion::p' | sort | tail -1`
numb=`printf minion%03d $(($st+1))`

if [ -z "$st" ]
then
    numb=`printf "minion%03d" 0` 
fi
docker run -d --name $numb --hostname $numb --network bridges salt-minion $1

