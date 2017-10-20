FROM ubuntu:16.04

LABEL maintener Adrian Prado

# RUN DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:chris-lea/node.js
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8842ce5e && \
    echo "deb http://ppa.launchpad.net/bitcoin/bitcoin/ubuntu xenial main" > /etc/apt/sources.list.d/bitcoin.list

RUN apt-get update