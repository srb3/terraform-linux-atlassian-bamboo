variable "ips" {
  description = "A list of ip addresses where we will install hab and run services"
  type        = list
}

variable "instance_count" {
  description = "The number of instances that will have chef-solo run on them"
  type        = number
}

variable "ssh_user_name" {
  description = "The ssh user name used to access the ip addresses provided"
  type        = string
  default     = ""
}

variable "ssh_user_names" {
  description = "A list of ssh user names used to access the ip addresses provided"
  type        = list(string)
  default     = []
}

variable "ssh_user_pass" {
  description = "The ssh password used to access the ip addresses (either user_pass or user_private_key needs to be set)"
  type        = string
  default     = ""
}

variable "ssh_user_passes" {
  description = "A list of ssh passwords used to access the ip addresses (either user_pass or user_private_key needs to be set)"
  type        = list(string)
  default     = []
}

variable "ssh_user_private_key" {
  description = "The user key used to access the ip addresses (either user_pass or user_private_key needs to be set)"
  type        = string
  default     = ""
}

variable "ssh_user_private_keys" {
  description = "A list of user keys used to access the ip addresses (either user_pass/s or user_private_key/s needs to be set)"
  type        = list(string)
  default     = []
}

########### supervisor details #####################

variable "hab_sup_peers" {
  description = "A list of peers for the supervisor to connect to"
  type        = list
  default     = []
}

variable "channel" {
  description = "The habitat builder channel to pull from"
  type        = string
  default     = "stable"
}

variable "service_group" {
  description = "The service group name to use for this service"
  type        = string
  default     = "default"
}

variable "services" {
  description = "A map of other habitat services to load along side this one"
  type        = map
  default     = {}
}

########### service user toml ###################
