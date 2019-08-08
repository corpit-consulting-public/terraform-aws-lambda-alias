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
