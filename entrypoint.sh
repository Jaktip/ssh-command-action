#!/bin/bash

export SSHPASS=@chewathai26
commandStdout=$(sshpass -e ssh -o StrictHostKeyChecking=no -p 22 rbkadmin@185.78.164.161 "/home/shared/wsg_backend/check_service_start_up_message.sh bns")
echo $1
echo "::set-output name=command_execution_stdout::$commandStdout"

exit 0