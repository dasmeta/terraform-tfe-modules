# tfc_workspace

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
| [tfe_run_trigger.triggers](https://registry.terraform.io/providers/hashicorp/tfe/0.37.0/docs/resources/run_trigger) | resource |
| [tfe_variable.env](https://registry.terraform.io/providers/hashicorp/tfe/0.37.0/docs/resources/variable) | resource |
| [tfe_variable.terraform](https://registry.terraform.io/providers/hashicorp/tfe/0.37.0/docs/resources/variable) | resource |
| [tfe_workspace.test](https://registry.terraform.io/providers/hashicorp/tfe/0.37.0/docs/resources/workspace) | resource |
| [tfe_ssh_key.this](https://registry.terraform.io/providers/hashicorp/tfe/0.37.0/docs/data-sources/ssh_key) | data source |
| [tfe_workspace.triggers](https://registry.terraform.io/providers/hashicorp/tfe/0.37.0/docs/data-sources/workspace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | (Optional, default false) Whether destroy plans can be queued on the workspace. | `bool` | `false` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | (Optional) Whether to automatically apply changes when a Terraform plan is successful. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_default_management_workspace_trigger"></a> [default\_management\_workspace\_trigger](#input\_default\_management\_workspace\_trigger) | Managed workspaces should have a run triggered when the managed workspace is executed. This variable sets the name of this workspace. If you want to disable this set the value to null. | `string` | `null` | no |
| <a name="input_env_variables"></a> [env\_variables](#input\_env\_variables) | List of environment variables for this workspace. | <pre>map(object({<br>    value       = string<br>    description = optional(string)<br>    sensitive   = optional(bool)<br>  }))</pre> | `{}` | no |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | Which execution mode to use. Using Terraform Cloud, valid values are `remote` or `local`. Defaults to `remote` | `string` | `"remote"` | no |
| <a name="input_organization_name"></a> [organization\_name](#input\_organization\_name) | Organization name of terraform cloud | `string` | n/a | yes |
| <a name="input_run_trigger_workspaces"></a> [run\_trigger\_workspaces](#input\_run\_trigger\_workspaces) | A list of workspace names which should trigger a plan run for this workspace when these workspaces run. | `list(string)` | `[]` | no |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | Whether this workspace allows speculative plans. | `bool` | `true` | no |
| <a name="input_ssh_key_id"></a> [ssh\_key\_id](#input\_ssh\_key\_id) | SSH key ID to use for this workspace. | `string` | `null` | no |
| <a name="input_tag_names"></a> [tag\_names](#input\_tag\_names) | n/a | `list(string)` | <pre>[<br>  "tf"<br>]</pre> | no |
| <a name="input_terraform_variables"></a> [terraform\_variables](#input\_terraform\_variables) | List of terraform variables for this workspace. | <pre>map(object({<br>    value       = string<br>    description = optional(string)<br>    hcl         = optional(bool)<br>    sensitive   = optional(bool)<br>  }))</pre> | `{}` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | (Optional) The version of Terraform to use for this workspace. This can be either an exact version or a version constraint (like ~> 1.0.0); if you specify a constraint, the workspace will always use the newest release that meets that constraint. Defaults to the latest available version. | `string` | `null` | no |
| <a name="input_trigger_prefixes"></a> [trigger\_prefixes](#input\_trigger\_prefixes) | (Optional) List of repository-root-relative paths which describe all locations to be tracked for changes. | `list(string)` | `[]` | no |
| <a name="input_vcs_repo"></a> [vcs\_repo](#input\_vcs\_repo) | Version Control System repo for connecting to workspace | <pre>list(object({<br>    identifier     = string<br>    branch         = string<br>    oauth_token_id = string<br>  }))</pre> | `[]` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | (Optional) A relative path that Terraform will execute within. Defaults to the root of your repository. | `string` | `null` | no |
| <a name="input_workspace_name"></a> [workspace\_name](#input\_workspace\_name) | Workspace name in organization to create | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Returns the ID of the created workspace. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
