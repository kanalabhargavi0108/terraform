module "s3-bucket" {
  source = "github.com/terraform-aws-modules/terraform-aws-s3-bucket"
  bucket = "s3-bucket-modules"
  versioning = {
      enabled = true
    }
  }
