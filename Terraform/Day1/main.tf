terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.72.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "17ae83ba-a80a-4cac-9560-345182d2ecc3"
}

resource "azurerm_resource_group" "demo" {
  name     = "rg-terraform-dev"
  location = "Central India"
}