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
  # --- Unconfirmed validation candidates, derived from azurerm_iothub_consumer_group's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.IoTHubConsumerGroupName] !matched
  # path: iothub_name
  #   source:    [from validate.IoTHubName] !matched
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
}

