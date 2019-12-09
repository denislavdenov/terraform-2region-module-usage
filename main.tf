provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# Additional provider configuration for west coast region
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  alias  = "west"
  region = "us-west-2"
}

module "aws_west" {
  source = "github.com/denislavdenov/terraform-module-2region"
  providers = {
    aws = aws.west
  }
  ami = var.ami["west"]
}

module "aws_east" {
  source = "github.com/denislavdenov/terraform-module-2region"
  ami = var.ami["east"]
}
