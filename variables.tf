variable "gemini_gibq_observability_setting_bindings" {
  description = <<EOT
Map of gemini_gibq_observability_setting_bindings, attributes below
Required:
    - gibq_observability_setting_id
    - setting_binding_id
    - target
Optional:
    - deletion_policy
    - labels
    - location
    - product
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    gibq_observability_setting_id = string
    setting_binding_id            = string
    target                        = string
    deletion_policy               = optional(string)
    labels                        = optional(map(string))
    location                      = optional(string)
    product                       = optional(string)
    project                       = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

