rgs = {
  rg1 = {
    name     = "rg_practice1"
    location = "eastus"
  }
  rg2 = {
    name     = "rg_practice2"
    location = "canada central"
  }
}

Vnet = {
  vnet1 = {
    name                = "vnet_practice1"
    location            = "eastus"
    resource_group_name = "rg_practice1"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}

subnet = {
  subnet1 = {
    name                 = "frontend_subnet"
    resource_group_name  = "rg_practice1"
    virtual_network_name = "vnet_practice1"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "Backend_subnet"
    resource_group_name  = "rg_practice1"
    virtual_network_name = "vnet_practice1"
    address_prefixes     = ["10.0.2.0/24"]
  }

  subnet3 = {
    name                 = "Database_subnet"
    resource_group_name  = "rg_practice1"
    virtual_network_name = "vnet_practice1"
    address_prefixes     = ["10.0.3.0/24"]
  }

  subnet4 = {
    name                 = "Bastion_subnet"
    resource_group_name  = "rg_practice1"
    virtual_network_name = "vnet_practice1"
    address_prefixes     = ["10.0.4.0/24"]
  }
}