resource_groups = {
  rg1 = {
    name     = "rg-landingzone-dev-eastus-001"
    location = "eastus"
    tags = {
      Environment = "Practice"
      ManagedBy   = "Terraform"
    }
  }
}

virtual_networks = {
  vnet1 = {
    name                = "vnet-landingzone-dev-eastus-001"
    location            = "eastus"
    resource_group_name = "rg-landingzone-dev-eastus-001"
    address_space       = ["10.0.0.0/16"]
    tags = {
      Environment = "Practice"
      ManagedBy   = "Terraform"
    }
  }
}

subnets = {
  snet1 = {
    name                 = "snet-web-dev-001"
    resource_group_name  = "rg-landingzone-dev-eastus-001"
    virtual_network_name = "vnet-landingzone-dev-eastus-001"
    address_prefixes     = ["10.0.1.0/24"]
  }
  snet2 = {
    name                 = "snet-app-dev-001"
    resource_group_name  = "rg-landingzone-dev-eastus-001"
    virtual_network_name = "vnet-landingzone-dev-eastus-001"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
