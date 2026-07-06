output "iothub_consumer_groups" {
  description = "All iothub_consumer_group resources"
  value       = azurerm_iothub_consumer_group.iothub_consumer_groups
}
output "iothub_consumer_groups_eventhub_endpoint_name" {
  description = "List of eventhub_endpoint_name values across all iothub_consumer_groups"
  value       = [for k, v in azurerm_iothub_consumer_group.iothub_consumer_groups : v.eventhub_endpoint_name]
}
output "iothub_consumer_groups_iothub_name" {
  description = "List of iothub_name values across all iothub_consumer_groups"
  value       = [for k, v in azurerm_iothub_consumer_group.iothub_consumer_groups : v.iothub_name]
}
output "iothub_consumer_groups_name" {
  description = "List of name values across all iothub_consumer_groups"
  value       = [for k, v in azurerm_iothub_consumer_group.iothub_consumer_groups : v.name]
}
output "iothub_consumer_groups_resource_group_name" {
  description = "List of resource_group_name values across all iothub_consumer_groups"
  value       = [for k, v in azurerm_iothub_consumer_group.iothub_consumer_groups : v.resource_group_name]
}

