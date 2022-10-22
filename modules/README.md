# modules

## Basic usage of module
```
module "tfc" {
  source = "../../terraform-cloud-provision/modules"

  variable_set_config_path = "./config/variable_sets.yaml"
  workspaces_config_path   = "./config/workspaces.yaml"
  organization_name = "organization_name"

}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.37.0 |

## Providers

No providers.

## Modules


| Name | Source | Version |
|------|--------|---------|
| <a name="module_tfc_variable_sets"></a> [tfc\_variable\_sets](#module\_tfc\_variable\_sets) | ./tfc_variable_set | n/a |
| <a name="module_tfc_workspace"></a> [tfc\_workspace](#module\_tfc\_workspace) | ./tfc_workspace | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_management_workspace_trigger"></a> [default\_management\_workspace\_trigger](#input\_default\_management\_workspace\_trigger) | Managed workspaces should have a run triggered when the managed workspace is executed. This variable sets the name of this workspace. If you want to disable this set the value to null. | `string` | `null` | no |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | Organization name of Terraform Cloud | `string` | n/a | yes |
| <a name="input_variable_set_config_path"></a> [variable\_set\_config\_path](#input\_variable\_set\_config\_path) | Path to variable sets configuration path | `string` | n/a | yes |
| <a name="input_vcs_oauth_token_id"></a> [vcs\_oauth\_token\_id](#input\_vcs\_oauth\_token\_id) | n/a | `string` | `null` | no |
| <a name="input_workspaces_config_path"></a> [workspaces\_config\_path](#input\_workspaces\_config\_path) | Path to workspace configuration yaml file | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_variable_sets_yamldecode"></a> [variable\_sets\_yamldecode](#output\_variable\_sets\_yamldecode) | n/a |
| <a name="output_workspace_config_yamldecode"></a> [workspace\_config\_yamldecode](#output\_workspace\_config\_yamldecode) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
