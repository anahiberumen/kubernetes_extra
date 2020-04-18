#!/bin/bash
#Script para instalar kops y kubectl, además los ubica en el path
echo "Script de instalación para Kops y Kubectl"
sleep 7s

#Se descarga Kops y lo mueve a la carpeta bin
echo "Instalando Kops----------------------------------------"
curl -LO https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x kops-linux-amd64
sudo mv kops-linux-amd64 /usr/local/bin/kops

#Se descarga kubectl y lo mueve a la carpeta bin
echo "Instalando Kubectl-------------------------------------"
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
echo "Instalacion completada--------------------------------"
