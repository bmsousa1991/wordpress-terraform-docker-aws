variable "vpc_cidr_block" {
  description = "CIDR block da VPC"
  type        = string
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
}

variable "subnet_cidrs" {
  description = "CIDRs das subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "Zonas de disponibilidade para as subnets"
  type        = list(string)
}

variable "subnet_name" {
  description = "Nome das subnets"
  type        = string
}

variable "internet_gateway_name" {
  description = "Nome do Internet Gateway"
  type        = string
}

variable "route_table_name" {
  description = "Nome da tabela de rotas"
  type        = string
}

variable "security_group_name" {
  description = "Nome dos grupos de segurança"
  type        = string
}

variable "ami" {
  description = "ID da AMI para a instância EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
}

variable "ec2_name" {
  description = "Nome da instância EC2"
  type        = string
}

variable "key_name" {
  description = "Nome da chave para a instância EC2"
  type        = string
}

variable "private_key_path" {
  description = "Caminho para a chave privada usada no provisionamento com Ansible"
  type        = string
}