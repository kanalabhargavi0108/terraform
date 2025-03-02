provider "aws" {
  
}

resource "aws_instance" "import" {
  ami="ami-085ad6ae776d8f09c"
  instance_type = "t2.nano"
  key_name = "ec2test"
  tags = {
    Name = "dev"
  } 

}