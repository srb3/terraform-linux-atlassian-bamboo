# Overview
This module will deploy atlassian bamboo onto a linux server, linux server must have systemd

#### Supported platform families:
 * RHEL
 * DEBIAN
 * SUSE

## Usage

```hcl

module "atlassian_bamboo" {
  source               = "devoptimist/atlassian-bamboo/linux"
  version              = "0.0.1"
  ips                  = ["172.16.0.23"]
  instance_count       = 1
  ssh_user_name        = "ec2-user"
  ssh_user_private_key = "~/.ssh/id_rsa"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
|ips|A list of ip addresses where we will install hab and run chef-load|list|[]|no|
|instance_count|The number of instances being created|number|0|no|
|ssh_user_name|The ssh user name used to access the ip addresses provided|string||yes|
|ssh_user_pass|The ssh user password used to access the ip addresses (either ssh_user_pass or ssh_user_private_key needs to be set)|string|""|no|
|ssh_user_private_key|The ssh user key used to access the ip addresses (either ssh_user_pass or ssh_user_private_key needs to be set)|string|""|no|
|hab_sup_peers|A list of peers for the supervisor to connect to|list|[]|no|
|channel|The habitat builder channel to pull the chef-load package from|string|"stable"|no|
|service_group|The service group name to use for this service|string|"default"|no|
|services|A map of other habitat services to load along side this one|map|{}|no|
