FROM ubuntu:18.04

LABEL "com.github.actions.name"="SSH Github Action"
LABEL "com.github.actions.description"="SSH Github Action"

RUN mkdir -p ~/.ssh && chmod 700 ~/.ssh

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
