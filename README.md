# Automatizando Deploy de Servidor WordPress com Terraform e Ansible

Este projeto automatiza a criação de um servidor web para WordPress utilizando Terraform para provisionamento de infraestrutura na AWS e Ansible para configuração dos recursos. A aplicação está distribuída em três containers Docker: Nginx, Apache, e MySQL, garantindo um ambiente robusto e escalável.

## Arquitetura

- **Nginx**: Proxy reverso configurado para direcionar o tráfego ao servidor Apache.
- **Apache**: Servidor web que hospeda a aplicação WordPress.
- **PHP**: Última versão disponível para compatibilidade com plugins modernos.
- **MySQL**: Banco de dados em container separado, executando a última versão estável.
- **WordPress**: Instalado e configurado na versão mais recente, rodando no Apache.

## Tecnologias Utilizadas

- **Terraform**: Provisiona a infraestrutura na AWS, incluindo EC2, VPC, subnets, e outros recursos.
- **Ansible**: Automatiza a instalação e configuração dos containers, além de realizar o deployment do WordPress.
- **Docker & Docker Compose**: Gerencia os containers de Nginx, Apache, e MySQL, proporcionando um ambiente isolado e escalável.

## Opções de Deploy

Você pode realizar o deploy deste projeto de duas maneiras:

### Opção 1: Máquina Local

#### Pré-requisitos

- Terraform
- Ansible
- Credenciais AWS configuradas
- Chave.pem da sua conta AWS disponível no diretório raiz do projeto

#### Passos

1. Clone o repositório:
   
    ```bash
    git clone https://github.com/bmsousa1991/wordpress-terraform-docker-aws.git
    cd wordpress-terraform-docker-aws
    ```
    
2. Configure as variáveis sensíveis no arquivo `terraform.tfvars`.
   
3. Provisione a infraestrutura AWS:
 
    ```bash
    terraform init
    terraform apply
    ```
    
4. Após a infraestrutura ser criada, configure o ambiente com Ansible:
   
    ```bash
    ansible-playbook -i hosts playbook.yml
    ```

### Opção 2: Script Automatizado em EC2

1. Crie uma instância EC2 na AWS.
   
2. Acesse a instância via SSH:
   
    ```bash
    ssh -i caminho/para/sua-chave.pem usuário@ip-da-instância
    ```
    
3. Clone o repositório do projeto:
   
    ```bash
    git clone https://github.com/bmsousa1991/wordpress-terraform-docker-aws.git
    cd wordpress-terraform-docker-aws
    ```
    
4. Execute o script `install.sh` disponível na raiz do projeto, que automatiza a instalação do Terraform, Ansible, e realiza o deploy do WordPress:
   
    ```bash
    ./install.sh
    ```

**Nota**: Certifique-se de configurar suas credenciais AWS no script `install.sh` antes de executá-lo e que tenha o arquivo `chave.pem` no diretório raiz do projeto.

## Detalhes da Infraestrutura

- **Nginx**: Proxy reverso que redireciona o tráfego para o servidor Apache.
- **Apache**: Hospeda a aplicação WordPress.
- **MySQL (RDS)**: Banco de dados gerenciado pela AWS, configurado para máxima segurança e escalabilidade.

Toda a infraestrutura é automatizada, permitindo que ela seja facilmente escalável para ambientes de produção.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests para melhorias neste projeto.
