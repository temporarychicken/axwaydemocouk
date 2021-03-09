resource "azurerm_network_security_group" "myterraformnsg" {
    name                = "myNetworkSecurityGroup"
    location            = "uksouth"
    resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name

    tags = {
        environment = "Terraform Demo"
    }
}



resource "azurerm_network_security_rule" "ssh"  {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
        resource_group_name         = data.azurerm_resources.myterraformgroup.resource_group_name
        network_security_group_name = azurerm_network_security_group.myterraformnsg.name

    }

resource "azurerm_network_security_rule" "http"  {
        name                       = "HTTP"
        priority                   = 1002
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
        resource_group_name         = data.azurerm_resources.myterraformgroup.resource_group_name
        network_security_group_name = azurerm_network_security_group.myterraformnsg.name
    }
	
resource "azurerm_network_security_rule" "https"  {
        name                       = "HTTPS"
        priority                   = 1003
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
        resource_group_name         = data.azurerm_resources.myterraformgroup.resource_group_name
        network_security_group_name = azurerm_network_security_group.myterraformnsg.name
    }
	
resource "azurerm_network_security_rule" "AxwayAPIManagement"  {
        name                       = "AxwayApplication"
        priority                   = 1004
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "8050-9000"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
        resource_group_name         = data.azurerm_resources.myterraformgroup.resource_group_name
        network_security_group_name = azurerm_network_security_group.myterraformnsg.name
    }
	
	
resource "azurerm_network_security_rule" "MySQL"  {
        name                       = "MySQL"
        priority                   = 1005
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "3306"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
        resource_group_name         = data.azurerm_resources.myterraformgroup.resource_group_name
        network_security_group_name = azurerm_network_security_group.myterraformnsg.name
    }