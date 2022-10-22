variable "name" {
  description = "Name of the variable set."
  type        = string
}

variable "description" {
  description = "Description of the variable set."
  type        = string
  default     = null
}

variable "organization" {
  description = "Name of the organization the variable set should belong to."
  type        = string
}

variable "terraform_variables" {
  description = "List list of terraform variables for this variable set."
  type = map(object({
    value       = string
    description = optional(string)
    hcl         = optional(bool)
    sensitive   = optional(bool)
  }))
  default = {}
}

variable "env_variables" {
  description = "List list of environment variables for this variable set."
  type = map(object({
    value       = string
    description = optional(string)
    sensitive   = optional(bool)
  }))
  default = {}
}

variable "workspace_ids" {
  description = "A list of workspace IDs to which this variable set should be applied."
  type        = list(string)
  default     = []
}

variable "assign_tags" {
  description = "A list of workspace tags. All workspaces with one of these tags will be assigned."
  type        = list(string)
  default     = []
}

variable "workspace_tags" {
  description = "A map of all workspaces with the tags assigned to them as list. This is required for filtering tags."
  type        = map(list(string))
}

variable "workspace_id_map" {
  description = "A map of workspace names to workspace IDs. Used for filtering depending on tags."
}
