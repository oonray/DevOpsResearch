#!/bin/bash
containers=`docker ps -a | grep -Po 'minion[0-9]{3}'`
docker $1 $containers

