resource "aws_instance" "wordpress" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  security_groups        = [var.security_group_id]
  key_name               = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = var.name
  }

  provisioner "local-exec" {
    command = "sleep 30 && ansible-playbook -i '${self.public_ip},' -u ubuntu --private-key ${var.private_key_path} playbook.yml"
  }
}
