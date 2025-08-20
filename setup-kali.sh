#!/bin/bash
set -e

echo "[*] Atualizando sistema..."
sudo apt update -y
sudo apt upgrade -y

echo "[*] Instalando ferramentas básicas de pentest e enumeração..."
sudo apt install -y \
    gobuster feroxbuster seclists chisel crackmapexec \
    nmap masscan enum4linux nbtscan netcat \
    sqlmap hydra john hashcat cewl wpscan nikto \
    smbclient smbmap curl wget net-tools dnsutils \
    iproute2 inetutils-ping python3 python3-pip \
    ruby git docker.io docker-compose unzip gzip

echo "[*] Instalando ferramentas via pip..."
sudo pip3 install impacket pwntools

echo "[*] Configurando wordlists..."
if [ ! -f /usr/share/wordlists/rockyou.txt ]; then
    sudo apt install -y wordlists
fi
if [ ! -f /usr/share/wordlists/rockyou.txt ]; then
    sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
fi

echo "[*] Instalando BloodHound e Neo4j (para AD pentesting)..."
sudo apt install -y neo4j bloodhound

echo "[*] Configuração completa! Ambiente pronto para pentest, CTF e exploração."
