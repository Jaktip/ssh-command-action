FROM ubuntu:18.04

LABEL "com.github.actions.name"="SSHPASS Github Action"
LABEL "com.github.actions.description"="SSHPASS Github Action"

RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
