#!/bin/sh

apt-get update
apt-get install -y apt-transport-https ca-certificates curl software-properties-common socat
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable"
apt-get update
apt-get install -y  docker-ce=17.03.2~ce-0~ubuntu-xenial
docker --version
usermod -G docker ${SUDO_USER:-root}
