#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando o servidor web e ferramentas..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicacao..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp -r linux-site-dio-main/* /var/www/html
