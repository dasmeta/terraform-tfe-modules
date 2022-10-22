locals {
  workspaces     = yamldecode(file("${var.workspaces_config_path}"))
  variable_sets  = yamldecode(file("${var.variable_set_config_path}"))
  workspace_tags = { for workspace_name, config in local.workspaces : workspace_name => config.tag_names }
  workspace_id_map = { for workspace_name, _ in local.workspaces : workspace_name => module.tfc_workspace[workspace_name].id
  }
}

module "tfc_workspace" {
  source   = "./tfc_workspace"
  for_each = local.workspaces

  workspace_name                       = each.key
  organization_name                    = var.organization_name
  tag_names                            = try(each.value.tag_names, [])
  terraform_variables                  = try(each.value.terraform_variables, {})
  env_variables                        = try(each.value.env_variables, {})
  speculative_enabled                  = try(each.value.speculative_enabled, null)
  run_trigger_workspaces               = try(each.value.run_trigger_workspaces, [])
  auto_apply                           = try(each.value.auto_apply, null)
  allow_destroy_plan                   = try(each.value.allow_destroy_plan, false)
  terraform_version                    = try(each.value.terraform_version, null)
  trigger_prefixes                     = try(each.value.trigger_prefixes, null)
  working_directory                    = try(each.value.working_directory, null)
  ssh_key_id                           = try(each.value.ssh_key, null)
  execution_mode                       = try(each.value.execution_mode, "remote")
  default_management_workspace_trigger = var.default_management_workspace_trigger

  vcs_repo = var.vcs_oauth_token_id == null ? [] : [{
    identifier     = each.value.git
    branch         = try(each.value.git_branch, "main")
    oauth_token_id = var.vcs_oauth_token_id
  }]

}

module "tfc_variable_sets" {
  source   = "./tfc_variable_set"
  for_each = local.variable_sets

  name                = each.key
  organization        = var.organization_name
  terraform_variables = try(each.value.terraform_variables, {})
  env_variables       = try(each.value.env_variables, {})
  workspace_ids       = try(each.value.workspace_ids, [])
  assign_tags         = try(each.value.assign_tags, [])
  workspace_tags      = local.workspace_tags
  workspace_id_map    = local.workspace_id_map
}
