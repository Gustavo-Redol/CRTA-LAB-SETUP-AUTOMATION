🛠️ Laboratório de Red Team com Vagrant

Este repositório contém um ambiente de laboratório automatizado com Vagrant e VirtualBox, projetado para estudos de Red Team, pentesting e movimentação lateral em redes corporativas.

📌 Estrutura da Topologia

A rede é composta por:

Kali Linux

Máquina atacante

Conectada somente à rede externa

Windows Server (DC)

Controlador de domínio (Active Directory)

Conectado somente à rede interna

Windows Employee

Workstation unida ao domínio

Conectada somente à rede interna

App Server (Ubuntu)

Servidor de aplicações

Duas interfaces de rede:

Interna (192.168.56.x) → comunicação com DC e Employee

Externa (192.168.10.x ou NAT) → comunicação com Kali

Web Server (Ubuntu)

Servidor web público

Duas interfaces de rede:

Interna (192.168.56.x) → comunicação corporativa

Externa (192.168.10.x ou NAT) → comunicação com Kali

🌐 Topologia de Redes

Rede Interna (192.168.56.0/24)

DC

Employee

App Server (interface interna)

Web Server (interface interna)

Rede Externa (192.168.10.0/24 ou NAT)

Kali

App Server (interface externa)

Web Server (interface externa)

🚀 Provisionamento

O ambiente é automatizado com:

Vagrantfile: define as VMs, redes e recursos

Scripts de provisionamento: instalam e configuram serviços automaticamente

Exemplo de uso:

# Subir todo o ambiente
vagrant up

# Acessar uma VM
vagrant ssh appserver

# Desligar o ambiente
vagrant halt

# Destruir o ambiente
vagrant destroy -f

📚 Casos de Uso

Prática de pentests internos e movimentação lateral

Exploração de falhas em aplicações corporativas

Ataques em ambientes com múltiplas zonas de rede

Treino de hardening e defesa em profundidade

⚠️ Aviso

Este laboratório é apenas para fins educacionais e deve ser executado em ambientes controlados. Nunca utilize em redes de produção.
