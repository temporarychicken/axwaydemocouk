resource "random_id" "randomId" {
    keepers = {
        # Generate a new ID only when a new resource group is defined
        resource_group = data.azurerm_resources.myterraformgroup.resource_group_name
    }

    byte_length = 8
}




resource "azurerm_storage_account" "mystorageaccount" {
    name                        = "diag${random_id.randomId.hex}"
    resource_group_name         = data.azurerm_resources.myterraformgroup.resource_group_name
    location                    = "uksouth"
    account_replication_type    = "LRS"
    account_tier                = "Standard"

    tags = {
        environment = "Terraform Demo"
    }
}