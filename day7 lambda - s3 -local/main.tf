resource "aws_s3_bucket" "lambda-bucket" {
  bucket = "commonstatefile"
}
resource "aws_s3_object" "lambda-file" {
  bucket = aws_s3_bucket.lambda-bucket.id
  key    ="java"
  source = "../aws/java"
  acl    = "private"

    
}
resource "aws_lambda_function" "lambda-function" {
  function_name = "app"
  role          =  "arn:aws:iam::976193247516:role/lambda-admin"
  handler       = "java.lambda_handler"
  runtime       = "java17"
  s3_bucket     = aws_s3_bucket.lambda-bucket.id
  s3_key        = aws_s3_object.lambda-file.key
  timeout       = 15
  memory_size   = 128
  
}