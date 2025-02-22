resource "aws_db_instance" "rds_instance" {
  allocated_storage     =    var.allocated_storage
  engine                =    var.engine
  engine_version        =    var.engine_version
  instance_class        =    var.instance_class
  username              =    var.username
  password              =    var.password
  skip_final_snapshot   =    true
}

