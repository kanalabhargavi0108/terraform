

# EC2 Instance Variables
variable "ec2_ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "ec2_instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}




variable "ec2_instance_name" {
  description = "The name of the EC2 instance"
  type        = string
  default     = "MyEC2Instance"
}

# S3 Bucket Variables
variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}


# RDS Variables
variable "rds_allocated_storage" {
  description = "The allocated storage for the RDS instance in GB"
  type        = number
  default     = 20
}

variable "rds_engine" {
  description = "The database engine type"
  type        = string
  default     = "mysql"
}

variable "rds_engine_version" {
  description = "The database engine version"
  type        = string
  default     = "8.0"
}

variable "rds_instance_class" {
  description = "The RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "rds_username" {
  description = "The database administrator username"
  type        = string
}

variable "rds_password" {
  description = "The database administrator password"
  type        = string
  sensitive   = true
}

