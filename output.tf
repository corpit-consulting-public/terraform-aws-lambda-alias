output "arn" {
  description = "The Amazon Resource Name (ARN) identifying your Lambda Function."
  value = "${aws_lambda_alias.test_alias.arn}"
}

output "id" {
  description = "The function ARN of the Lambda function for which you want to create an alias."
  value = "${aws_lambda_alias.test_alias.id}"
}

output "name" {
  value = "${aws_lambda_alias.test_alias.name}"
}

output "invoke_arn" {
  description = "The ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri"
  value = "${aws_lambda_alias.test_alias.invoke_arn}"
}

output "function_name" {
  description = "The function Name of the Lambda function for which you want to create an alias."
  value = "${aws_lambda_alias.test_alias.function_name}"
}
