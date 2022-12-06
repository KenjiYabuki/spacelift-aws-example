resource "aws_vpc" "terraform-vpc" {

  cidr_block = "192.168.0.0/16"
  tags = {
    Name      = "terraform-vpc",
    Terraform = "True"
  }
  enable_dns_hostnames = true

}
