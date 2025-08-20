#!/bin/bash
# setup-appserver.sh

# Atualiza pacotes
sudo apt-get update -y
sudo apt-get upgrade -y

# Instala serviços básicos
sudo apt-get install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2
