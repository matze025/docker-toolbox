FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get install -y --no-install-recommends apt-utils &&\
    apt-get -y upgrade && \
    apt-get install -y locales xmlstarlet python3 python3-yaml python3-jinja2 \
    python3-httplib2 python3-paramiko python3-setuptools python3-pkg-resources \
    python3-pip htop tree nano vim wget curl software-properties-common libcurl4-gnutls-dev \
    libexpat1-dev gettext libz-dev libssl-dev build-essential autoconf git awscli zip unzip && \
    apt-get install -y dnsutils curl wget inetutils-ping docker zsh tmux dialog && \
    apt-get autoremove && \
    apt-get autoclean && \
    apt-get clean

RUN pip3 install --upgrade pip && pip install python3-keyczar && ln -s /usr/bin/python3 /usr/bin/python

RUN locale-gen de_DE && \
    locale-gen de_DE.UTF-8 && \
    update-locale

RUN chsh -s $(which zsh); sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; exit 0;

CMD mkdir -p /workdir

WORKDIR /workdir
