resource "aws_lambda_function" "lambda" {
  function_name = "python"
  role          =  "arn:aws:iam::976193247516:role/lambda-admin"
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.12"
  timeout       = 10
  memory_size   = 128
  filename         = "lambda_function.zip"  
  source_code_hash = filebase64sha256("lambda_function.zip")
}