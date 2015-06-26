# sendCommands

 This bash script will send a command to a list of servers to be executed. You should have a file in the same directory as this script named servers and it should contain the username, password, and server ip addresses in this format:

``` 
user@ip # password
user@ip -p port #password
user@ip # password
user@ip #password
```

Example usage:
``` ./sendCommandToServers.sh 'apt-get update && apt-get upgrade -y' ```
