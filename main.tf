provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-275f631"
    instance_type = "t2.micro"
}
