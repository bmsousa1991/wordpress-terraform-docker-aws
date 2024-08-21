terraform {
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source    = "./modules/vpc"
  cidr_block = var.vpc_cidr_block
  name       = var.vpc_name
}

module "subnets" {
  source             = "./modules/subnets"
  vpc_id             = module.vpc.vpc_id
  subnet_cidrs       = var.subnet_cidrs
  availability_zones = var.availability_zones
  name               = var.subnet_name
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
  name   = var.internet_gateway_name
}

module "route_table" {
  source             = "./modules/route_table"
  vpc_id             = module.vpc.vpc_id
  internet_gateway_id = module.internet_gateway.internet_gateway_id
  subnet_ids         = module.subnets.subnet_ids
  name               = var.route_table_name
}

module "security_groups" {
  source = "./modules/security_groups"
  vpc_id = module.vpc.vpc_id
  name   = var.security_group_name
}

module "ec2" {
  source           = "./modules/ec2"
  ami              = var.ami
  instance_type    = var.instance_type
  subnet_id        = element(module.subnets.subnet_ids, 0)
  security_group_id = module.security_groups.ec2_security_group_id
  name             = var.ec2_name
  key_name         = var.key_name
  private_key_path = var.private_key_path
}

