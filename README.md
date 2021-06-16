Terraform AWS Network Module
============================

Terraform module to create following AWS resources:
- VPC
- Subnets

# Contents
- [Required Input Variables](#variables)
- [Usage](#usage)
- [Outputs](#outputs)
- [Licence](#licence)
- [Author Information](#author)

## <a name="variables"></a> Required Input Variables
At least following input variables must be provided. See [full list](variables.tf) of supported variables

| Name | Description                     |
| ---- | ------------------------------- |
| name | Common name - unique identifier |

## <a name="usage"></a> Usage

To provision default configuration containing one single subnet use:
```hcl-terraform
module "network" {
  source = "git::https://gitlab.com/HippoLab/terraform-modules/hcloud-network.git"
  name   = "${var.project_name} ${var.environment}"
}
```

## <a name="outputs"></a> Outputs
Full list of module outputs and their descriptions can be found in [outputs.tf](outputs.tf)

## <a name="licence"></a> Licence
The module is being distributed under [MIT Licence](LICENCE.txt). Please make sure you have read, understood and agreed
to its terms and conditions

## <a name="author"></a> Author Information
Vladimir Tiukhtin <vladimir.tiukhtin@hippolab.ru><br/>London
