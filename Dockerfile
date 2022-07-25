FROM ubuntu:18.04

LABEL "com.github.actions.name"="SSH Github Action"
LABEL "com.github.actions.description"="SSH Github Action"

RUN apt-get update && \
    apt-get install -y openssh-client

# RUN eval "$(ssh-agent -s)"

RUN mkdir -p ~/.ssh && chmod 777 ~/.ssh

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
