provider "aws" {
  
}

resource "aws_instance" "import" {
  ami="ami-085ad6ae776d8f09c"
  instance_type = "t2.nano"
  key_name = "ec2test"
  availability_zone = "us-east-1a"
  tags = {
    Name = "dev"
  } 



#below examples are for lifecycle meta_arguments 

#   lifecycle {
#     create_before_destroy = true    
#   }

# lifecycle {
#   prevent_destroy = true   
# }


#   lifecycle {
#     ignore_changes = [tags,] 

  
}