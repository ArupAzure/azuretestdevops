# Terraform Block
terraform {
  required_version = "1.10.5"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 4.17.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">= 3.0"
    }    
  }
# Terraform State Storage to Azure Storage Container (Values will be taken from Azure DevOps)
  backend "azurerm" {
    resource_group_name = "terraform-storage-rg"
    storage_account_name = "terraformarup8971588222"
    container_name = "tfstate"
    key = "dev-terraform.tfstate"
    
  }   
}

# Provider Block
provider "azurerm" {
 features {}          
}

# Simple command
#Simple command 2
#simple command 3
#simple command 4
#simple command 5
#simple command 6
#simple command 9
#simple command 10
