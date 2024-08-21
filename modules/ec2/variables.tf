variable "ami" {
  description = "ID da AMI para a instância EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
}

variable "subnet_id" {
  description = "ID da subnet onde a instância será provisionada"
  type        = string
}

variable "security_group_id" {
  description = "ID do grupo de segurança para a instância EC2"
  type        = string
}

variable "key_name" {
  description = "Nome da chave para acessar a instância EC2"
  type        = string
}

variable "name" {
  description = "Nome da instância EC2"
  type        = string
}

variable "private_key_path" {
  description = "Caminho para a chave privada usada no provisionamento com Ansible"
  type        = string
}