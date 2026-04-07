resource "aws_apigatewayv2_api" "visitor_api" {
  name          = "visitorAPI"
  protocol_type = "HTTP"

  cors_configuration {
    allow_credentials = false
    allow_headers = [
      "*",
    ]
    allow_methods = [
      "GET",
      "OPTIONS",
      "POST",
    ]
    allow_origins = [
      "*",
    ]
    expose_headers = []
    max_age        = 0
  }
}
