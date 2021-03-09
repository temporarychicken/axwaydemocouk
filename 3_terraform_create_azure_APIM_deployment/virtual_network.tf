resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "myVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "uksouth"
    resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name

    tags = {
        environment = "Terraform Demo"
    }
}