resource "aws_lambda_function" "myfunc" {
  filename         = data.archive_file.zip.output_path
  source_code_hash = data.archive_file.zip.output_base64sha256
  function_name    = "myfunc"
  role             = data.aws_iam_role.resumeadmin.arn
  handler          = "func.handler"  # Update this if your handler function is located elsewhere
  runtime          = "python3.9"     # Ensure this matches the runtime you are using
}


# Reference to the existing IAM role
data "aws_iam_role" "resumeadmin" {
  name = "resumeadmin"
}


data "archive_file" "zip" {
  type        = "zip"
  source_dir  = "${path.module}/lambda/"
  output_path = "${path.module}/packedlambda.zip"
}

resource "aws_lambda_function_url" "url1" {
  function_name      = aws_lambda_function.myfunc.function_name
  authorization_type = "NONE"


  cors {
    allow_credentials = true
    allow_origins     = ["*"]
    allow_methods     = ["*"]
    allow_headers     = ["date", "keep-alive",]
    expose_headers    = ["keep-alive", "date"]
    max_age           = 86400
  }
}

