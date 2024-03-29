terraform {
  required_version = ">=1.0.0"

  # Azurerm Backend https://www.terraform.io/docs/language/settings/backends/azurerm.html#
  backend "azurerm" {
    resource_group_name  = "rg-terraform-modules-state"
    storage_account_name = "softcatmodulestate"
    container_name       = "tf-modules-azure-vnet-basic"
    key                  = "terraform.tfstate"
  }

  required_providers {
    # Uncomment required providers and delete unneeded
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
