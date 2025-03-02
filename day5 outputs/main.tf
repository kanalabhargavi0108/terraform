resource "aws_instance" "dev" {
    ami = "ami-085ad6ae776d8f09c"
    instance_type = "t2.micro"
    key_name = "mykey1"
    tags = {
      Name = "dev"
    }
   
}

 terraform {
backend "s3" {
    bucket         = "commonbucket"  
    region         =  "us-east-1"
    key            = "day-5/terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo" 
    encrypt        = true 
}
 }