#resource "azurerm_resource_group" "myterraformgroup" {
#    name     = "myResourceGroup"
#    location = "uksouth"
#
#    tags = {
#        environment = "Terraform Demo"
#    }
#}

# Get Resources from a Resource Group
data "azurerm_resources" "myterraformgroup" {
  resource_group_name = "dl-resourcegroup"
}
