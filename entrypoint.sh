#!/bin/bash

export SSHPASS=$PASSWORD

commandStdout=$(sshpass -e ssh -o StrictHostKeyChecking=no -p $PORT $USERNAME@$HOST "$COMMAND")

echo "::debug::COMMAND is $COMMAND"

echo "::set-output name=command_execution_stdout::$commandStdout"

exit 0