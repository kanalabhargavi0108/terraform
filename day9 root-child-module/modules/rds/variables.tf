variable "allocated_storage" {
  description = "The allocated storage for the RDS instance in GB"
  type        = number
}

variable "engine" {
  description = "The database engine (e.g., MySQL, PostgreSQL)"
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
}

variable "instance_class" {
  description = "The RDS instance class"
  type        = string
}

variable "username" {
  description = "The database administrator username"
  type        = string
}

variable "password" {
  description = "The database administrator password"
  type        = string
  sensitive   = true
}

