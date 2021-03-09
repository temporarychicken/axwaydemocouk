


# Get the existing DNS record for axwaydemo.co.uk

data "azurerm_dns_zone" "axwaydemo" {
  name                = "axwaydemo.co.uk"
  resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name
}




resource "azurerm_dns_a_record" "example" {
  name                = "workshop0001"
  zone_name           = data.azurerm_dns_zone.axwaydemo.name
  resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name
  ttl                 = 300
 #records             = ["10.0.180.17"]
  records             = [data.azurerm_public_ip.myterraformpublicip.ip_address]
}

resource "azurerm_dns_a_record" "apimanager" {
  name                = "apimanager"
  zone_name           = data.azurerm_dns_zone.axwaydemo.name
  resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name
  ttl                 = 300
 #records             = ["10.0.180.17"]
  records             = [data.azurerm_public_ip.myterraformpublicip.ip_address]
}

resource "azurerm_dns_a_record" "apigateway" {
  name                = "apigateway"
  zone_name           = data.azurerm_dns_zone.axwaydemo.name
  resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name
  ttl                 = 300
 #records             = ["10.0.180.17"]
  records             = [data.azurerm_public_ip.myterraformpublicip.ip_address]
}

resource "azurerm_dns_a_record" "apiserver" {
  name                = "api"
  zone_name           = data.azurerm_dns_zone.axwaydemo.name
  resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name
  ttl                 = 300
 #records             = ["10.0.180.17"]
  records             = [data.azurerm_public_ip.myterraformpublicip.ip_address]
}


resource "azurerm_dns_a_record" "apibuilder" {
  name                = "apibuilder"
  zone_name           = data.azurerm_dns_zone.axwaydemo.name
  resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name
  ttl                 = 300
 #records             = ["10.0.180.17"]
  records             = [data.azurerm_public_ip.myterraformpublicip.ip_address]
}


resource "azurerm_dns_a_record" "apiportal" {
  name                = "apiportal"
  zone_name           = data.azurerm_dns_zone.axwaydemo.name
  resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name
  ttl                 = 300
 #records             = ["10.0.180.17"]
  records             = [data.azurerm_public_ip.myterraformpublicip.ip_address]
}


resource "azurerm_dns_a_record" "jenkins" {
  name                = "jenkins"
  zone_name           = data.azurerm_dns_zone.axwaydemo.name
  resource_group_name = data.azurerm_resources.myterraformgroup.resource_group_name
  ttl                 = 300
 #records             = ["10.0.180.17"]
  records             = [data.azurerm_public_ip.myterraformpublicip.ip_address]
}