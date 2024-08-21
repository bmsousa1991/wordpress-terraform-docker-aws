#!/bin/bash

# Atualiza o sistema
sudo apt update && sudo apt upgrade -y

# Instala dependências para adicionar repositórios
sudo apt install -y software-properties-common curl gnupg unzip

# Instala o Terraform
echo "Instalando Terraform..."
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install -y terraform

# Instala o Ansible
echo "Instalando Ansible..."
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt update && sudo apt install -y ansible

# Instala o AWS CLI
echo "Instalando AWS CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip aws/

# Configurações de chave de acesso da AWS CLI
echo "Configurando AWS CLI..."
aws configure set aws_access_key_id AKJGHGC54678544A
aws configure set aws_secret_access_key kjsfaljkhs87574654
aws configure set default.region YOUR_DEFAULT_REGION
aws configure set output

# Verifica as instalações
echo "Verificando instalações..."
terraform --version
ansible --version
aws --version

echo "Instalação concluída!"

# Entrar na pasta 'infra'
cd /home/ubuntu/wordpress-terraform-docker-aws

# Inicializa o Terraform
echo "Executando terraform init..."
terraform init

# Ajusta as permissões da chave privada
echo "Ajustando permissões da chave privada..."
chmod 600 /home/ubuntu/wordpress-terraform-docker-aws/infra.pem

# Executa o terraform apply com auto-approve
echo "Aplicando Terraform..."
terraform apply -auto-approve
