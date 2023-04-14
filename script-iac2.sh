#!/bin/bash

echo "Atualização do servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
echo "Atualização concluída"

echo "Baixando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos da aplicação..."
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim."