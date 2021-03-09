data "azurerm_shared_image" "axwaydemocouk-image" {
  name                = "axwaycoukImageDefintion"
  gallery_name        = "axwaydemocouksharedimagegallery"
  resource_group_name = "dl-resourcegroup"
}




resource "tls_private_key" "example_ssh" {
  algorithm = "RSA"
  rsa_bits = 4096
}

output "tls_private_key" { value = tls_private_key.example_ssh.private_key_pem }

resource "azurerm_virtual_machine" "myterraformvm" {

    name                  = "axwaydemocoukVM"
    location              = "uksouth"
    resource_group_name   = data.azurerm_resources.myterraformgroup.resource_group_name
    network_interface_ids = [azurerm_network_interface.myterraformnic.id]
    vm_size               = "Standard_D2s_v3"


	storage_image_reference {
		#id			= data.azurerm_shared_image.axwaydemocouk-image.id
		id			= "/subscriptions/05faa53b-97f9-42e1-b5c4-36b85992031b/resourceGroups/dl-resourcegroup/providers/Microsoft.Compute/galleries/axwaydemocouksharedimagegallery/images/axwaycoukImageDefintion/versions/1.0.0"
	}
	
	

	storage_os_disk {
		name            = "myOsDisk"
		caching			= "ReadWrite"
		create_option   = "FromImage"
		os_type         = "Linux"
		#managed_disk_id	= data.azurerm_shared_image.axwaydemocouk-image.id
		#managed_disk_id = "/subscriptions/05faa53b-97f9-42e1-b5c4-36b85992031b/resourceGroups/dl-resourcegroup/providers/Microsoft.Compute/galleries/axwaydemocouksharedimagegallery/images/axwaycoukImageDefintion/versions/1.0.0"
		managed_disk_type = "Premium_LRS"
		write_accelerator_enabled = false
	}






   # computer_name  = "myvm"
   # admin_username = "azureuser"
   # disable_password_authentication = true



    tags = {
        environment = "Terraform Demo"
    }

	
}