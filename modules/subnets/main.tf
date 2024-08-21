resource "aws_subnet" "public" {
  count                   = length(var.subnet_cidrs)
  vpc_id                  = var.vpc_id
  cidr_block              = element(var.subnet_cidrs, count.index)
  availability_zone       = element(var.availability_zones, count.index)

  tags = {
    Name = "${var.name}-public-${count.index}"
  }
}
