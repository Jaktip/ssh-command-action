#!/bin/bash

echo $PRIVATE_KEY > ~/.ssh/id_rsa 
echo $KNOWN_HOSTS > ~/.ssh/known_hosts

ls ~/.ssh

commandStdout=$(ssh $PORT $USERNAME@$HOST "$COMMAND")

echo "::set-output name=command_execution_stdout::$commandStdout"

exit 0