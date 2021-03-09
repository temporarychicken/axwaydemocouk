provider "acme" {
  #server_url = "https://acme-v02.api.letsencrypt.org/directory"
  server_url = "https://acme-staging-v02.api.letsencrypt.org/directory"
  
}
 
resource "tls_private_key" "private_key" {
  algorithm = "RSA"
}

resource "acme_registration" "reg" {
  account_key_pem = tls_private_key.private_key.private_key_pem
  email_address   = "dluke@axway.com"
}

resource "acme_certificate" "certificate" {
  account_key_pem           = acme_registration.reg.account_key_pem
  common_name               = "*.davidluke.axwaydemo.co.uk"
 
  dns_challenge {
    provider = "azure"
	
      config = {
        AZURE_RESOURCE_GROUP     = "dl-resourcegroup"
		#AZURE_CLIENT_ID          = "f5b6a5cf-fbdf-4a9f-b3b8-3c2cd00225a4"
		#AZURE_CIENT_SECRET       = "0e760437-bf34-4aad-9f8d-870be799c55d"
		#AZURE_TENANT_ID          = "72f988bf-86f1-41af-91ab-2d7cd011db47"
        #AZURE_SUBSCRIPTION_ID    = "78bbda9a-d08f-4066-866a-49888c02d4a7"
		AZURE_TENANT_ID          = "300f59df-78e6-436f-9b27-b64973e34f7d"
        AZURE_SUBSCRIPTION_ID    = "05faa53b-97f9-42e1-b5c4-36b85992031b"
      }
  }
}

resource "local_file" "crt" {
    content     = acme_certificate.certificate.certificate_pem
    filename = "../certs/axwaydemo.co.uk.crt.pem"
}

resource "local_file" "key" {
    content     = acme_certificate.certificate.private_key_pem
    filename = "../certs/axwaydemo.co.uk.key.pem"
}

resource "local_file" "issuer" {
    content     = acme_certificate.certificate.issuer_pem
    filename = "../certs/axwaydemo.co.uk.issuer.pem"
}