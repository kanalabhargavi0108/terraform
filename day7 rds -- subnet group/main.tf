resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  db_name              = "rdsdatabase"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "Cloud123"
  parameter_group_name = "default.mysql8.0"
  db_subnet_group_name =  aws_db_subnet_group.rds.id
  skip_final_snapshot  = true
}
resource "aws_db_subnet_group" "rds" {
  name       = "customsubnetgroup"
  subnet_ids = ["subnet-0d4a8d7d24acef336", "subnet-0711196306b34bea1"]

  tags = {
    Name = " DB subnet group"
  }
}