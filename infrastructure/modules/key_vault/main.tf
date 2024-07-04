resource "azurerm_key_vault" "key_vault" {
  name                = "${var.prefix}-kv"
  location            = var.location
  resource_group_name = var.resource_group_name
  tenant_id           = var.tenant_id
  sku_name            = "standard"

  tags = var.tags
}
