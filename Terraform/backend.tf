terraform {
  backend "azurerm" {
    resource_group_name  = "backend-python-rg"
    storage_account_name = "backendpython1"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

  }
}