FROM debian:stretch-slim

RUN apt-get update                 && \
    apt-get upgrade -y             && \
    apt-get install                   \
        --no-install-recommends -y    \
        texlive-full               && \
    apt-get clean

WORKDIR /data
VOLUME ["/data"]
