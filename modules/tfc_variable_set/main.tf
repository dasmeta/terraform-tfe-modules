locals {
  assign_workspaces = flatten([for assign_tag in var.assign_tags :
    [for workspace, ws_tags in var.workspace_tags :
      workspace if contains(ws_tags, assign_tag)
    ]
  ])
  assigned_workspaces = [for workspace in local.assign_workspaces :
    var.workspace_id_map[workspace]
  ]
}

resource "tfe_variable_set" "this" {
  name          = var.name
  description   = var.description
  organization  = var.organization
  workspace_ids = length(local.assign_workspaces) > 0 ? concat(var.workspace_ids, local.assigned_workspaces) : var.workspace_ids
}

resource "tfe_variable" "terraform" {
  for_each        = var.terraform_variables
  key             = each.key
  value           = each.value.value
  description     = each.value.description
  hcl             = each.value.hcl
  sensitive       = each.value.sensitive
  variable_set_id = tfe_variable_set.this.id
  category        = "terraform"
}

resource "tfe_variable" "env" {
  for_each        = var.env_variables
  key             = each.key
  value           = each.value.value
  description     = each.value.description
  sensitive       = each.value.sensitive
  variable_set_id = tfe_variable_set.this.id
  category        = "env"
}
