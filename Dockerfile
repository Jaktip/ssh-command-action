FROM ubuntu:18.04

LABEL "com.github.actions.name"="SSHPASS Github Action"
LABEL "com.github.actions.description"="SSHPASS Github Action"

RUN apt-get update && apt-get install -y sshpass

RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh
RUN touch ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa
RUN touch ~/.ssh/known_hosts && chmod 600 ~/.ssh/known_hosts

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]