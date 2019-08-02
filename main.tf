resource "aws_lambda_alias" "test_alias" {
  name             = "${var.name}"
  description      = "${var.description}"
  function_name    = "${var.function_name}"
  function_version = "${var.function_version}"
}
