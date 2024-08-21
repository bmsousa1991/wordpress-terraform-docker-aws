resource "aws_route_table" "main" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  }

  tags = {
    Name = var.name
  }
}

resource "aws_route_table_association" "public" {
  count          = length(var.subnet_ids)
  subnet_id      = element(var.subnet_ids, count.index)
  route_table_id = aws_route_table.main.id
}
