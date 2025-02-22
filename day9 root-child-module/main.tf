

module "ec2" {
  source             = "./modules/ec2"
  ami               = "ami-0d682f26195e9ec0f"
  instance_type     = "t2.micro"
  

  instance_name     = "MyEC2Instance"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "commonstatefile"
 
}

module "rds" {
  source             = "./modules/rds"
  allocated_storage = 10
  engine           = "mysql"
  engine_version   = "8.0"
  instance_class   = "db.t3.micro"
  username        = "admin"
  password        = "password123"
  
}
