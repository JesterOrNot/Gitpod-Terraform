provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "HelloTerraform" {
  ami           = "ami-0fc20dd1da406780b"
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo Hello World From Terraform > helloworld.txt"
  }
}
