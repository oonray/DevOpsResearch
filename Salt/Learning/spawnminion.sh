#!/bin/bash
st=`docker ps -a | grep -Po 'minion[0-9]{3}' | grep -Po '[0-9]{3}'| sort | tail -1`
numb=`printf minion%03d $(($st+1))`

if [ -z "$st" ]
then
    numb=`printf "minion%03d" 0` 
fi
printf "Spawning %s\n" $numb
docker run -d --name $numb --hostname $numb --network bridges salt:minion $1

