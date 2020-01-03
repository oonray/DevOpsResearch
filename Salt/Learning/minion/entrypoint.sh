#!/bin/bash
echo $@
echo "${@} salt" >> /etc/hosts 
echo Docker-Salt-Minion-$(uname -n)-$(uname -s)-$(uname -m) > /etc/salt/minion_id
salt-minion -l debug

