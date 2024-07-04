terraform {
  backend "azurerm" {}
}

module "log_analytics" {
  source              = "../modules/log_analytics"
  resource_group_name = var.resource_group_name
  location            = var.location
  prefix              = var.prefix
  tags                = var.tags
}

module "key_vault" {
  source              = "../modules/key_vault"
  resource_group_name = var.resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
  prefix              = var.prefix
  tags                = var.tags
}

module "aks" {
  source              = "../modules/aks"
  resource_group_name = var.resource_group_name
  location            = var.location
  aks_name            = var.aks_name
  log_analytics_workspace_id = module.log_analytics.log_analytics_workspace_id
  tags                = var.tags
}

module "container_registry" {
  source              = "../modules/container_registry"
  resource_group_name = var.resource_group_name
  location            = var.location
  acr_name            = var.acr_name
  tags                = var.tags
}
