variable "vpc_id" {
  description = "ID da VPC onde a tabela de rotas será criada"
  type        = string
}

variable "internet_gateway_id" {
  description = "ID do Internet Gateway associado à VPC"
  type        = string
}

variable "subnet_ids" {
  description = "Lista de IDs das subnets associadas à tabela de rotas"
  type        = list(string)
}

variable "name" {
  description = "Nome da tabela de rotas"
  type        = string
}
