# Terraform Module : terraform-module-aws-route53-zone


## General

_This module may be used to create_ **_Route53 Zone_** _resources in AWS cloud provider......_



---


## Prerequisites

_This module needs_ **_Terraform 0.12.19_** _or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).

_This module deploys aws services details are in respective feature branches._



---


## Features Branches

_Below we are able to check the resources that are being created as part of this module call:_

* **_Route53 Zone_**


---

## Usage

## Using this repo

_To use this module, add the following call to your code:_

_Example for_ **_Public Route53 Domain_**

```tf


module "autoscaling_group" {
  source = "git::https://github.com/nitinda/terraform-module-aws-route53-zone.git?ref=master"

  providers = {
    aws = aws.services
  }
  
  name          = "example.test.org"
  comment       = "Route53 Zone"
  force_destroy = true
  tags          = var.tags
}


```

_Example for_ **_Privte Route53 Domain_**

```tf

module "autoscaling_group" {
  source = "git::https://github.com/nitinda/terraform-module-aws-route53-zone.git?ref=master"

  providers = {
    aws = aws.services
  }
  
  name          = "example.test.org"
  comment       = "Route53 Zone"
  force_destroy = true
  tags          = var.tags
  vpc           = {
      vpc_id     = var.vpc_id
      vpc_region = var.region
  }
}


```


---

## Inputs

_The variables required in order for the module to be successfully called from the deployment repository are the following:_


|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** |
|:----|:----|-----:|-----:|
| **_name\_prefix_** | Creates a unique name | _string_ | **_Required_** |




## Outputs

* **_zone\_id_**
* **_name\_servers_**




### Usage

_In order for the variables to be accessed on module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```

_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<module_name>.<output_variable_name>

```


## Authors
_Module maintained by Module maintained by the -_ **_Nitin Das_**
