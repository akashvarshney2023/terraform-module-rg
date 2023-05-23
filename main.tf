# #----------------------------------------------------------------------------------------
# # Creating Resource Group
# #----------------------------------------------------------------------------------------

# Creating RG.

resource "azurerm_resource_group" "rg" {
  for_each = can(var.rg) ? var.rg : null

  name     = lookup(each.value, "rg_name", null)
  location = lookup(each.value, "location", null)
  tags     = var.generic.tags
}