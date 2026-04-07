resource "aws_lambda_function" "visitor_count" {
  function_name = "VisitorCountFunction"
  runtime       = "python3.13"
  handler       = "lambda_function.lambda_handler"

  #role = "arn:aws:iam::300545976125:role/CloudResumeLambdaRole"
  role             = "arn:aws:iam::300545976125:role/service-role/VisitorCountFunction-role-wi5hqy12"
  filename         = "../contents/lambda_visitorcount.zip"
  source_code_hash = filebase64sha256("../contents/lambda_visitorcount.zip")

  publish = false
  lifecycle {
    ignore_changes = [source_code_hash]
  }
}
