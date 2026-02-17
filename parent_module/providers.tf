terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.59.0"
    }
  }
  #backend "azurerm" {
  #resource_group_name  = "web-rg"
  #storage_account_name = "webappstgaccou12"
  #container_name       = "webappcontainer"
  #key                  = "terraform.web.tfstate"

  #}
}

provider "azurerm" {
  features {
  }
  subscription_id = "542f267c-b643-4c81-83b4-49de89d81010"
}