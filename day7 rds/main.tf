resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  db_name              = "rdsdatabase"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "Cloud123"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}