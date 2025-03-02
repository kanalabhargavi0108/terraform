variable "aws_region" {
  description = "The region in which to create the infrastructure"
  type        = string
  default     = "us-west-2" #here we need to define either us-west-1 or eu-west-2 if i give other region will get error 
  validation {
    condition = var.aws_region == "us-west-2" || var.aws_region == "us-west-1"
    error_message = "The variable 'aws_region' must be one of the following regions: us-west-2, us-west-1"
  }
}

provider "aws" {
  region = "us-east-1"
  
   
 }

 resource "aws_s3_bucket" "dev" {
    bucket = "statefile-configuresss"
    
  
}
