variable "network_policies_lookup" {
  description = <<EOT
Map of network_policies_lookup, attributes below
Optional:
    - like
    - with_describe
EOT

  type = map(object({
    like          = optional(string)
    with_describe = optional(bool)
  }))
}

