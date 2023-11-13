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