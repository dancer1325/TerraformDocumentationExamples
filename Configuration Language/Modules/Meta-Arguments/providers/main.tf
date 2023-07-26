provider "aws" {
  region = "us-west-2"
}

module "child" {
  source = "./modules/child_module"

  # Variable to pass
  providers_map = {
    aws = {
      alias   = "us_east_1"
      version = "~> 3.0"
    }
  }
}