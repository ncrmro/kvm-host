#!/bin/bash
if [ -f /etc/debian_version ]; then
  sudo apt-get update
  sudo apt-get install -y python-pip
elif [ -f /etc/redhat-release ]; then
#  rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
  yum install -y epel-release
  yum install -y git python-pip python-devel python-dnf
fi

sudo pip install ansible
#cd /vagrant
#pipenv --python python3 sync
#ansible-playbook -i tests/inventory tests/test.yml --connection=local
