resource "azurerm_public_ip" "myterraformpublicip" {
    name                         = "myPublicIP"
    location                     = "uksouth"
   #resource_group_name          = azurerm_resource_group.myterraformgroup.name
	resource_group_name          = data.azurerm_resources.myterraformgroup.resource_group_name
    allocation_method            = "Dynamic"

    tags = {
        environment = "Terraform Demo"
    }
}



data "azurerm_public_ip" "myterraformpublicip" {
  name                = azurerm_public_ip.myterraformpublicip.name
  resource_group_name = azurerm_virtual_machine.myterraformvm.resource_group_name
}