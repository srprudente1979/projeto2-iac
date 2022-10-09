#!/bin/bash

echo "Atualizando os pacotes"
apt-get update
apt-get upgrade -y

echo "Instalando o Apache e unzip"
apt-get install apache2 unzip -y

echo "Baixando e copiando os arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/.