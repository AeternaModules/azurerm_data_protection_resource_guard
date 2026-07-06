output "data_protection_resource_guards" {
  description = "All data_protection_resource_guard resources"
  value       = azurerm_data_protection_resource_guard.data_protection_resource_guards
}
output "data_protection_resource_guards_location" {
  description = "List of location values across all data_protection_resource_guards"
  value       = [for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : v.location]
}
output "data_protection_resource_guards_name" {
  description = "List of name values across all data_protection_resource_guards"
  value       = [for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : v.name]
}
output "data_protection_resource_guards_resource_group_name" {
  description = "List of resource_group_name values across all data_protection_resource_guards"
  value       = [for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : v.resource_group_name]
}
output "data_protection_resource_guards_tags" {
  description = "List of tags values across all data_protection_resource_guards"
  value       = [for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : v.tags]
}
output "data_protection_resource_guards_vault_critical_operation_exclusion_list" {
  description = "List of vault_critical_operation_exclusion_list values across all data_protection_resource_guards"
  value       = [for k, v in azurerm_data_protection_resource_guard.data_protection_resource_guards : v.vault_critical_operation_exclusion_list]
}

