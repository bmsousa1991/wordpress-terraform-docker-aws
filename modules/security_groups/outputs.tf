output "ec2_security_group_id" {
  description = "ID do grupo de segurança para EC2"
  value       = aws_security_group.ec2.id
}


