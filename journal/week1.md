# Terraform Beginner Bootcamp-2023 - WEEK 1

## Root Module Structure

Our root module structure is as follows:

```
- PROJECT_ROOT/
-  ├── main.tf              # everything else
-  ├── variables.tf         # stores the structures of input variables
-  ├── providers.tf         # defined required providers and their configurations
-  ├── outputs.tf           # store our outputs
-  ├── terraform.tfvars     # the data of variables we want to load into our terraform projects
-  └── README.md            # required for root modules
```



[Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

## Terraform and Input Variables
### Terraform Cloud Variables
In terraform we can set two kind of variables:
- Environment variables - those that you would set in your bash terminals e.g Aws Credentials
- Terraform variables - those that you would normally set in your tfvars file

We can set terraform Cloud variables to be sensitive so they are not shown visibly in the UI

### Loading Terraform Input Variables
[Loading Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)
### var flag
We can use the '-var' flag to set an input variable or override a variable in the tfvars file eg. terraform -var user_ud="my-user_id"

### var-file flag
TODO: document this flag

### terraform.tvfars
This is the default file to load in terraform variables in blunk

### auto.tfvars
- TODO: document this functionality for terraform cloud

### order of terraform variables
- TODO: document which terraform variables takes presendence.

## Dealing With bConfiguration Drift
## What happens if we lose our state file?
If you lose your statefile, you most likley have to tear down all your cloud infrastructure manually.

You can use terraform port but it won't for all cloud resources. You need check the terraform providers documentation for which resources support import.


### Fix Missing Resources With Terraform Import 
`terraform import aws_s3_bucket.bucket bucket-name'
[Terraform Import AWS S3 Bucket Import](https://developer.hashicorp.com/terraform/cli/import)

### Fix Manual Connfiguration
If someone goes and delete or modifies cloud resource manually through ClickOps.

If we run Terraform plan is with attempt to put our infrstraucture back into the expected state fixing Configuration Drift

## Fix using Terraform Refresh
```sh
terraform apply -refresh-only -auto-approve
```

## Terraform Mudules

### Terraform Module Structure
It is recommended to placce module in a 'modules' directory when locally developing modules but you can name it whatever you like

### Passing Input Variables
We can pass imput variables to our Module
The module has to declare it's own terraform variables in it's own variables.tf
```tf
module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}
```

### Modules Sources
Using the source we can import the module from various places e.g
- Locally
- Github
- Terraform Registry
```tf
module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
}
```

[Modules Sources](https://developer.hashicorp.com/terraform/language/modules/sources)