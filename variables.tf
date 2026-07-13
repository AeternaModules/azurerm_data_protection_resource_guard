variable "data_protection_resource_guards" {
  description = <<EOT
Map of data_protection_resource_guards, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - tags
    - vault_critical_operation_exclusion_list
EOT

  type = map(object({
    location                                = string
    name                                    = string
    resource_group_name                     = string
    tags                                    = optional(map(string))
    vault_critical_operation_exclusion_list = optional(list(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_protection_resource_guards : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_resource_guards : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_resource_guards : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_resource_guards : (
        v.vault_critical_operation_exclusion_list == null || (alltrue([for x in v.vault_critical_operation_exclusion_list : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_resource_guards : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

