variable "vpc_id" {
  description = "ID da VPC onde os grupos de segurança serão criados"
  type        = string
}

variable "name" {
  description = "Nome base para os grupos de segurança"
  type        = string
}
