variable "vpc_id" {
  description = "ID da VPC onde as subnets serão criadas"
  type        = string
}

variable "subnet_cidrs" {
  description = "Lista de CIDRs para as subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "Lista de zonas de disponibilidade para as subnets"
  type        = list(string)
}

variable "name" {
  description = "Nome base para as subnets"
  type        = string
}
