variable "resource_groups" {
  description = "Map of Resource Groups to create"
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string))
  }))
  default = {}
}

variable "virtual_networks" {
  description = "Map of Virtual Networks to create"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    tags                = optional(map(string))
  }))
  default = {}
}

variable "subnets" {
  description = "Map of Subnets to create"
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
  default = {}
}
