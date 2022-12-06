resource "aws_vpc" "terraform-vpc" {

  cidr_block = "192.168.0.0/16"
  tags = {
    Name      = "terraform-vpc",
    Terraform = "True"
  }
  enable_dns_hostnames = true

}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "Main"
  }
}
