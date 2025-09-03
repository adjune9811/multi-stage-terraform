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

# Resource Group named by environment
resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.env}"
  location = var.location
}

# Example Storage Account named by environment
resource "azurerm_storage_account" "storage" {
  name                     = "st${var.env}demo123"  # must be globally unique
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}