variable "workspaces_config_path" {
  description = "Path to workspace configuration yaml file"
  type        = string
}

variable "variable_set_config_path" {
  description = "Path to variable sets configuration path"
  type        = string
}

variable "organization_name" {
  description = "Organization name of Terraform Cloud"
  type        = string
}

variable "vcs_oauth_token_id" {
  description = ""
  type        = string
  default     = null
}

variable "default_management_workspace_trigger" {
  description = "Managed workspaces should have a run triggered when the managed workspace is executed. This variable sets the name of this workspace. If you want to disable this set the value to null."
  type        = string
  default     = null
}
