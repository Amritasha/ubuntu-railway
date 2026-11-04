FROM ubuntu:26.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y wget curl git python3 python3-pip fastfetch \
        net-tools iproute2 iputils-ping dnsutils \
        vim nano htop tree unzip zip \
        build-essential gcc g++ make \
        openssh-client telnet netcat-openbsd \
        jq less man-db sudo lsof strace \
        procps file ca-certificates \
        libssl-dev zlib1g-dev libffi-dev \
        libsqlite3-dev libreadline-dev libncurses-dev \
        libxml2-dev libxslt1-dev \
        libpq-dev default-libmysqlclient-dev \
        libyaml-dev libpng-dev libjpeg-dev \
        linux-libc-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget -qO /usr/local/bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.3/ttyd.x86_64 && \
    chmod +x /usr/local/bin/ttyd

RUN echo "fastfetch" >> /root/.bashrc && \
    echo "cd /root" >> /root/.bashrc

EXPOSE 7681

CMD ["/bin/bash", "-c", "\
    echo \"export PS1='\\[\\033[01;33m\\]$USERNAME@ubuntu\\[\\033[00m\\]:\\[\\033[01;34m\\]\\w\\[\\033[00m\\]\\$ '\" >> /root/.bashrc && \
    exec /usr/local/bin/ttyd -p 7681 -c \"$USERNAME:$PASSWORD\" /bin/bash"]
