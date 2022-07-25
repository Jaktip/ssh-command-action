#!/bin/bash


echo $PRIVATE_KEY > ~/.ssh/id_rsa 
echo $KNOWN_HOSTS > ~/.ssh/known_hosts

commandStdout=$(ssh -p $PORT $USERNAME@$HOST "$COMMAND")

echo $commandStdout

echo "::set-output name=command_execution_stdout::$commandStdout"

exit 0