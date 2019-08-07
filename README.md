
# terraform-aws-lambdas-alias

Terraform module that creates Alias to Lambda Functions resources in AWS

This Lambda module needs:
  * module of [Lambda Function](https://registry.terraform.io/modules/corpit-consulting-public/lambda-function-mod/aws/0.1.1)

## Usage

```hcl

module "lambda_alias_dev" {
  source           = "./modules/terraform-aws-lambda-alias"
  name             = "${var.name}"
  description      = "${var.description}"
  function_name    = "${module.lambda-function.id}"
  function_version = "${module.lambda-function-.version}"
}

module "lambda_alias_prod" {
  source           = "./modules/terraform-aws-lambda-alias"
  name             = "${var.name}"
  description      = "${var.description}"
  function_name    = "${module.lambda-function.id}"
  function_version = "${module.lambda-function.version}"
}

```

## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| additional\_version\_weights | A map that defines the proportion of events that should be sent to different versions of a lambda function. | map | `<map>` | no |
| description | Description of the alias | string | `""` | no |
| function\_name | The function ARN of the Lambda function for which you want to create an alias. | string | n/a | yes |
| function\_version | Lambda function version for which you are creating the alias. Pattern: (LATEST|[0-9]+). | string | n/a | yes |
| name | Name for the alias you are creating. Pattern: (?!^[0-9]+$)([a-zA-Z0-9-_]+) | string | n/a | yes |
| routing\_config | The Lambda alias' route configuration settings. Fields documented below | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The Amazon Resource Name (ARN) identifying your Lambda Function. |
| function\_name | The function Name of the Lambda function for which you want to create an alias. |
| id | The function ARN of the Lambda function for which you want to create an alias. |
| invoke\_arn | The ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri |
| name |  |

