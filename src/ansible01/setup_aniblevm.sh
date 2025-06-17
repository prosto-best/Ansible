#!/bin/bash

sudo apt update

sudo apt install ansible -y
sudo cp -r /vagrant/ansible01/ansible.cfg /etc/ansible/
sudo cp -r /vagrant/ansible01/playbook.yml /etc/ansible/
sudo cp -r /vagrant/ansible01/inventory.ini /etc/ansible/
cd /etc/ansible/
ansible-playbook playbook.yml
