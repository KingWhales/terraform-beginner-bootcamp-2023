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
