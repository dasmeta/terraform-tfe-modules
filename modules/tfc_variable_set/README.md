# tfc_variable_set

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.37.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.37.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.env](https://registry.terraform.io/providers/hashicorp/tfe/0.37.0/docs/resources/variable) | resource |
| [tfe_variable.terraform](https://registry.terraform.io/providers/hashicorp/tfe/0.37.0/docs/resources/variable) | resource |
| [tfe_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/0.37.0/docs/resources/variable_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_tags"></a> [assign\_tags](#input\_assign\_tags) | A list of workspace tags. All workspaces with one of these tags will be assigned. | `list(string)` | `[]` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the variable set. | `string` | `null` | no |
| <a name="input_env_variables"></a> [env\_variables](#input\_env\_variables) | List list of environment variables for this variable set. | <pre>map(object({<br>    value       = string<br>    description = optional(string)<br>    sensitive   = optional(bool)<br>  }))</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the variable set. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Name of the organization the variable set should belong to. | `string` | n/a | yes |
| <a name="input_terraform_variables"></a> [terraform\_variables](#input\_terraform\_variables) | List list of terraform variables for this variable set. | <pre>map(object({<br>    value       = string<br>    description = optional(string)<br>    hcl         = optional(bool)<br>    sensitive   = optional(bool)<br>  }))</pre> | `{}` | no |
| <a name="input_workspace_id_map"></a> [workspace\_id\_map](#input\_workspace\_id\_map) | A map of workspace names to workspace IDs. Used for filtering depending on tags. | `any` | n/a | yes |
| <a name="input_workspace_ids"></a> [workspace\_ids](#input\_workspace\_ids) | A list of workspace IDs to which this variable set should be applied. | `list(string)` | `[]` | no |
| <a name="input_workspace_tags"></a> [workspace\_tags](#input\_workspace\_tags) | A map of all workspaces with the tags assigned to them as list. This is required for filtering tags. | `map(list(string))` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
