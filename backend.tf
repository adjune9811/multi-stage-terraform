terraform {
  backend "azurerm" {
    resource_group_name   = "RG-Storage"
    storage_account_name  = "newaddsstorage"
    container_name        = "tf-container"
    key                   = "multi-stage.tfstate"
  }
}
