#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
#sudo rm /boot/grub/menu.lst

sudo -E apt-get upgrade -y
sudo -E apt-get install -y software-properties-common git python-dev htop ntp jq apt-transport-https python3-pip
pip3 install awscli boto3


# Disable daily apt unattended updates.
sudo bash -c "echo 'APT::Periodic::Enable "0";' >> /etc/apt/apt.conf.d/10periodic"

