resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr_block
   tags = {
    Name = "my vpc"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subcidr

  tags = {
    Name = "public"
  }
}