
# Копирование zip ки в диру из files
cp -r /vagrant/ansible02/roles/install_consul_client/files/consul_1.16.6_linux_amd64.zip /home/vagrant/
unzip /home/vagrant/consul_1.16.6_linux_amd64.zip
mv consul /usr/local/bin/consul