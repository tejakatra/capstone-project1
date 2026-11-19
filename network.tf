data "aws_vpc" "default" {
  id = "vpc-03389c41f719f68ac"
}

data "aws_subnet" "public" {
  id = "subnet-02a246541c0a65ad4"
}
