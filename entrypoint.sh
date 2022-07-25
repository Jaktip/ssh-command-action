#!/bin/bash

eval "$(ssh-agent -s)"

echo $PRIVATE_KEY > /id_rsa && chmod 700 /id_rsa

cat /id_rsa

ssh-add /id_rsa 

# echo $KNOWN_HOSTS > ~/.ssh/known_hosts

ssh-add -l

# ls ~/.ssh

commandStdout=$(ssh $PORT $USERNAME@$HOST "$COMMAND")

echo "::set-output name=command_execution_stdout::$commandStdout"

exit 0