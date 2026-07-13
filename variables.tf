variable "iothub_consumer_groups" {
  description = <<EOT
Map of iothub_consumer_groups, attributes below
Required:
    - eventhub_endpoint_name
    - iothub_name
    - name
    - resource_group_name
EOT

  type = map(object({
    eventhub_endpoint_name = string
    iothub_name            = string
    name                   = string
    resource_group_name    = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.iothub_consumer_groups : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_consumer_groups : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_consumer_groups : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

