terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "devops-tf-rg"
  location = "Central India"
}
