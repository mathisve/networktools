FROM alpine:latest

LABEL org.opencontainers.image.source="https://github.com/mathisve/networktools.git"
LABEL org.opencontainers.image.description="lightweight container with network tools installed"

RUN echo 'export PS1="\$ "' >> /root/.bash_profile

RUN apk -U update

RUN apk add --no-cache \
    bash \
    bash-completion \
    bind-tools \
    jq \
    netcat-openbsd \
    openssl \
    curl \
    iputils-ping \
    nano \
    speedtest-cli

CMD ["/bin/bash", "--login"]
