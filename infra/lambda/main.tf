resource "aws_lambda_function" "myfunc"{
    filename      = data.archive_file.zip.output_path
    source_code_hash = data.archive_file.zip.output_base64sha256
    function_name = "myfunc"
    role          = aws_iam_role.resumeadmin.arn
    handler       = "func.handler"
    runtime       = "python3.9"
}

resource "aws_iam_role" "resumeadmin" {
  name = "resumeadmin"
  
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

data "archive_file" "zip" {
  type        = "zip"
  source_file = "${path.module}/lambda/"
  output_path = "${path.module}/packedlambda.zip"
}


