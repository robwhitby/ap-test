FROM ubuntu:20.04
LABEL maintainer="Rob Whitby" url="https://github.com/robwhitby/shakedown"

sdaRUN apt-get update \
    && apt-get install -y curl jq \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
COPY shakedown.sh /usr/local/bin/shakedown.sh
