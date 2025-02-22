module "db" {
  source     = "github.com/CloudTechDevOps/terraform-aws-rds"
  identifier = "demodb"

  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t3.micro"
  allocated_storage = 5

  db_name             = "demodb"
  username            = "user"
  port                = "3306"
  skip_final_snapshot = true

  iam_database_authentication_enabled = true


  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  # DB parameter group
  family = "mysql5.7"

  # DB option group
  major_engine_version = "5.7"




}


