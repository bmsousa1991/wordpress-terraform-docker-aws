output "route_table_id" {
  description = "ID da tabela de rotas"
  value       = aws_route_table.main.id
}

output "route_table_association_ids" {
  description = "IDs das associações de tabela de rotas"
  value       = aws_route_table_association.public[*].id
}
