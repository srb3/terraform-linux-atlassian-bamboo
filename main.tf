locals {
  instance_count = var.instance_count
  service        = {
    "srb3/atlassian-bamboo" = {
      "channel" = var.channel,
      "group"   = var.service_group,
      "user_toml_config"  = {
        "license_string" = var.license_string,
        "server_id" = var.server_id,
        "server_key" = var.server_key
      }
    }
  }
  services = length(keys(var.services)) > 1 ? merge(local.service, var.services) : local.service
}

module "bamboo_create" {
  source            = "srb3/habitat/chef"
  version           = "0.13.0"
  ips               = var.ips
  instance_count    = local.instance_count
  user_name         = var.ssh_user_name
  user_pass         = var.ssh_user_pass
  user_private_key  = var.ssh_user_private_key
  user_names        = var.ssh_user_names
  user_passes       = var.ssh_user_passes
  user_private_keys = var.ssh_user_private_keys
  hab_services      = local.services
  hab_sup_peers     = var.hab_sup_peers
}
