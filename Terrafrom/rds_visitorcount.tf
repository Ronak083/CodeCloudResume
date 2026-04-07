resource "aws_dynamodb_table" "visitor_counter" {
  name         = "VisitorCounter"
  billing_mode = "PAY_PER_REQUEST"

  hash_key    = "counterId"
  table_class = "STANDARD"

  attribute {
    name = "counterId"
    type = "S"
  }
}
