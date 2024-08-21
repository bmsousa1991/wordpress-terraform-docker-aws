output "subnet_ids" {
  description = "IDs das subnets públicas criadas"
  value       = aws_subnet.public[*].id
}
