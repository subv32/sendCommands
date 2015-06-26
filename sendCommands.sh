#!/bin/bash
while read server 
do 
  serversMinusPassword=$(echo -e "ssh $server" | cut -d"#" -f1) 
  #commandToSend=$(printf "'%s'" "$arguments") 
  password=$(echo -e "$server" | cut -d"#" -f2- | tr -d [[:space:]]) 
  nohup sshpass -p $password $serversMinusPassword $@ & 
done<servers
