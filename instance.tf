resource "aws_instance" "main" {
  ami           = var.ami 
  instance_type = var.ec2type[0]
  subnet_id     = aws_subnet.main.id
  #count = 2
  tags = {
    Name = "myserver"
  }
}