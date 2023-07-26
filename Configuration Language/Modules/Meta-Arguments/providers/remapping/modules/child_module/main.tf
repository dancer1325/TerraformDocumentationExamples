variable "providers_map" {
  type = map(object({
    alias   = string
    version = string
  }))
}

provider "aws" {
  alias  = var.providers_map["aws"].alias # Remap to use an alias
  region = "us-east-1"  # A different region than the one in the parent module.
}

resource "aws_instance" "example_instance" {
  provider = aws  # Using the provider defined above with alias from providers_map.

  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}