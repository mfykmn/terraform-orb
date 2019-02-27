#####################################
# AWS Authentication
#####################################
provider "aws" {
  version = "1.3.1"
  region  = "us-east-1"
}

#####################################
# AWS Resource
#####################################
resource "aws_instance" "foo" {
  ami           = "ami-1853ac65"
  instance_type = "t2.micro"
}