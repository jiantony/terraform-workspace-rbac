resource "local_file" "goodmorning_python_file" {
    content = <<EOF
import json
import os

def lambda_handler(event, context):
    return {
        'statusCode': 200,
        'body': json.dumps('Good morning Jibin from %s with path #112233' % os.environ['env'])
    }
EOF
    filename = "goodmorning.py"
}

data "archive_file" "goodmorning_python" {
  type             = "zip"
  source_file      = "goodmorning.py"
  output_file_mode = "0644"
  output_path      = "goodmorning.py.zip"
  depends_on = [
      local_file.goodmorning_python_file
  ]
}

resource "aws_lambda_function" "goodmorning_lambda" {
  filename      = "goodmorning.py.zip"
  function_name = "goodmorning_lambda"
  role          = aws_iam_role.lamda_execution_role.arn
  handler       = "goodmorning.lambda_handler"
  depends_on = [
      data.archive_file.goodmorning_python
  ]

  source_code_hash = data.archive_file.goodmorning_python.output_base64sha256
  runtime = "python3.9"

  environment {
    variables = {
      env = "${var.env}"
    }
  }
}
