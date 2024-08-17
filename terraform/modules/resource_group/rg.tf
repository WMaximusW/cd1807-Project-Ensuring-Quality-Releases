# Check if the resource group exists
data "azurerm_resource_group" "existing" {
  count = var.create_rg ? 0 : 1
  name  = var.resource_group
}

# Create the resource group if it doesn't exist
resource "azurerm_resource_group" "test" {
  count    = var.create_rg ? 1 : 0
  name     = var.resource_group
  location = var.location
}
