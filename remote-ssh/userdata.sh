#!/bin/bash
timedatectl set-timezone Asia/Tokyo

apt-get update
apt-get install -y -q language-pack-ja
localectl set-locale LANG=ja_JP.UTF-8

# AWS CLI
apt-get install -y -q curl unzip
curl -fsSL https://awscli.amazonaws.com/awscli-exe-linux-$(uname -m).zip -o /tmp/aws-cli.zip
unzip -q -d /tmp /tmp/aws-cli.zip
/tmp/aws/install
rm -rf /tmp/aws

# Docker
apt-get install -y -q ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get -y -q install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
usermod -aG docker ubuntu

# Git
add-apt-repository ppa:git-core/ppa
apt-get update
apt-get install -y -q software-properties-common
apt-get install -y -q git

# etc
apt-get install -y -q build-essential jq
apt-get install -y -q fd-find ripgrep bat
