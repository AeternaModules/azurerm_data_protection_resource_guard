output "data_protection_resource_guards_id" {
  description = "Map of id values across all data_protection_resource_guards, keyed the same as var.data_protection_resource_guards"
  value       = { for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : k => v.id }
}
output "data_protection_resource_guards_location" {
  description = "Map of location values across all data_protection_resource_guards, keyed the same as var.data_protection_resource_guards"
  value       = { for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : k => v.location }
}
output "data_protection_resource_guards_name" {
  description = "Map of name values across all data_protection_resource_guards, keyed the same as var.data_protection_resource_guards"
  value       = { for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : k => v.name }
}
output "data_protection_resource_guards_resource_group_name" {
  description = "Map of resource_group_name values across all data_protection_resource_guards, keyed the same as var.data_protection_resource_guards"
  value       = { for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : k => v.resource_group_name }
}
output "data_protection_resource_guards_tags" {
  description = "Map of tags values across all data_protection_resource_guards, keyed the same as var.data_protection_resource_guards"
  value       = { for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : k => v.tags }
}
output "data_protection_resource_guards_vault_critical_operation_exclusion_list" {
  description = "Map of vault_critical_operation_exclusion_list values across all data_protection_resource_guards, keyed the same as var.data_protection_resource_guards"
  value       = { for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : k => v.vault_critical_operation_exclusion_list }
}

