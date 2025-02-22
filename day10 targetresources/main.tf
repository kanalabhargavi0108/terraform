resource "aws_instance" "ec2" {
    instance_type = "t2.micro"
    ami = "ami-0d682f26195e9ec0f"
    
}

resource "aws_s3_bucket" "s3" {
    bucket = "commonstatefile" 
}
 
resource "aws_db_instance" "rds" {
  allocated_storage    = 5
  db_name              = "rdsdatabase"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "Cloud123"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}
