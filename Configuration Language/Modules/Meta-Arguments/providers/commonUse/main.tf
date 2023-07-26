provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us_west_2"
  region = "us-west-2"
}

module "child" {
  source = "./modules/child_module"
  providers = {
    aws = aws.us_west_2
  }
}