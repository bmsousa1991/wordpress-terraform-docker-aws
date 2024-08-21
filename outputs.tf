output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.subnets.subnet_ids
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = module.internet_gateway.internet_gateway_id
}

output "route_table_id" {
  description = "The ID of the Route Table"
  value       = module.route_table.route_table_id
}

output "ec2_security_group_id" {
  description = "The ID of the EC2 security group"
  value       = module.security_groups.ec2_security_group_id
}

output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2.instance_id
}


