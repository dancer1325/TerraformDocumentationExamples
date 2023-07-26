resource "aws_instance" "us_east_1_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

resource "aws_instance" "us_west_2_instance" {
  provider = aws.us_west_2  # Using the overridden AWS provider.

  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}