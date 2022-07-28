#!/bin/bash


mkdir "/root/.ssh"

echo $SSH_PRIVATE_KEY > "/root/.ssh/id_rsa"
chmod 400 "/root/.ssh/id_rsa"

echo "Host *" > "/root/.ssh/config"
echo "  AddKeysToAgent yes" >> "/root/.ssh/config"
echo "  IdentityFile /root/.ssh/id_rsa" >> "/root/.ssh/config"

#commandStdout=$(sshpass ssh -v -o StrictHostKeyChecking=no -p $PORT $USERNAME@$HOST "$COMMAND")
commandStdout=$(sshpass ssh -v -o StrictHostKeyChecking=no -p $PORT $USERNAME@$HOST "pwd")

echo "::set-output name=command_execution_stdout::$commandStdout"

exit 0
