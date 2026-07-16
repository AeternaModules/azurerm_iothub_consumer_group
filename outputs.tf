output "iothub_consumer_groups_id" {
  description = "Map of id values across all iothub_consumer_groups, keyed the same as var.iothub_consumer_groups"
  value       = { for k, v in azurerm_iothub_consumer_group.iothub_consumer_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iothub_consumer_groups_eventhub_endpoint_name" {
  description = "Map of eventhub_endpoint_name values across all iothub_consumer_groups, keyed the same as var.iothub_consumer_groups"
  value       = { for k, v in azurerm_iothub_consumer_group.iothub_consumer_groups : k => v.eventhub_endpoint_name if v.eventhub_endpoint_name != null && length(v.eventhub_endpoint_name) > 0 }
}
output "iothub_consumer_groups_iothub_name" {
  description = "Map of iothub_name values across all iothub_consumer_groups, keyed the same as var.iothub_consumer_groups"
  value       = { for k, v in azurerm_iothub_consumer_group.iothub_consumer_groups : k => v.iothub_name if v.iothub_name != null && length(v.iothub_name) > 0 }
}
output "iothub_consumer_groups_name" {
  description = "Map of name values across all iothub_consumer_groups, keyed the same as var.iothub_consumer_groups"
  value       = { for k, v in azurerm_iothub_consumer_group.iothub_consumer_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iothub_consumer_groups_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_consumer_groups, keyed the same as var.iothub_consumer_groups"
  value       = { for k, v in azurerm_iothub_consumer_group.iothub_consumer_groups : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

