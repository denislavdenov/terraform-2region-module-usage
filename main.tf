provider "aws" {
  region = "us-east-1"
}

# Additional provider configuration for west coast region
provider "aws" {
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
