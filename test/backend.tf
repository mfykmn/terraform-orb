#####################################
# Management of tfstate
#####################################
terraform {
  required_version = "0.11.11"

  backend "s3" {
    bucket         = "terraform-orb.tfstate"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-orb.tfstate-lock"
    encrypt        = true
  }
}