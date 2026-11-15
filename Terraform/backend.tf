terraform {
  backend "azurerm" {
    resource_group_name  = "acrRg"
    storage_account_name = "pythonstorage12"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}