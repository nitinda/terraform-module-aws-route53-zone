# Terraform Module Name: terraform-module-aws-route53-zone


## General

This module may be used to create **_Route53 Zone_** resources in AWS cloud provider..



---


## Prerequisites

This module needs **_Terraform 0.12.19_** or newer.
You can download the latest Terraform version from [here](https://www.terraform.io/downloads.html).

This module deploys aws services details are in respective feature branches.



---


## Features Branches

Below we are able to check the resources that are being created as part of this module call:

* **_Route53 Zone_**


---

## Usage

## Using this repo

To use this module, add the following call to your code:

_Example with_ **_launch\_tamplate_**

```tf
module "autoscaling_group" {
  source = "git::https://github.com/nitinda/terraform-module-aws-route53-zone.git?ref=master"

  providers = {
    aws = aws.services
  }

}

```



---

## Inputs

The variables required in order for the module to be successfully called from the deployment repository are the following:


|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** |
|:----|:----|-----:|-----:|
| **_name\_prefix_** | Creates a unique name | _string_ | **_Required_** |




## Outputs

* **_zone\_id_**
* **_name\_servers_**




### Usage
In order for the variables to be accessed on module level please use the syntax below:

```tf
module.<module_name>.<output_variable_name>
```

- The output variable is able to be accessed through terraform state file using the syntax below:

```tf
data.terraform_remote_state.<module_name>.<output_variable_name>

```


## Authors
Module maintained by Module maintained by the - **_Nitin Das_**
