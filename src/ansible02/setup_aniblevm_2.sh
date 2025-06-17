#!/bin/bash

sudo apt update

sudo apt install ansible -y
sudo cp -r /vagrant/ansible02/ansible.cfg /etc/ansible/
sudo cp -r /vagrant/ansible02/playbook.yml /etc/ansible/
sudo cp -r /vagrant/ansible02/inventory.ini /etc/ansible/
cd /etc/ansible/
ansible-playbook playbook.yml
