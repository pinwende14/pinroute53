resource "aws_instance" "pin" {
  ami                         = var.ami-type
  instance_type               = var.instance_type
  key_name                    = "caleb"
  vpc_security_group_ids      = [aws_security_group.pin_sg.id]
  associate_public_ip_address = true
  user_data                   = file("${path.module}/script.sh")

  tags = {
    Name = "pinare"
  }


}
