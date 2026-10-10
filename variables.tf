variable "cloudwatch_event_permissions" {
  description = <<EOT
Map of cloudwatch_event_permissions, attributes below
Required:
    - principal
    - statement_id
Optional:
    - action
    - event_bus_name
    - region
    - condition (block):
        - key (required)
        - type (required)
        - value (required)
EOT

  type = map(object({
    principal      = string
    statement_id   = string
    action         = optional(string)
    event_bus_name = optional(string)
    region         = optional(string)
    condition = optional(object({
      key   = string
      type  = string
      value = string
    }))
  }))
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

