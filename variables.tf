variable "load_balancer_pools_lookup" {
  description = <<EOT
Map of load_balancer_pools_lookup, attributes below
Optional:
    - account_id
    - max_items
    - monitor
EOT

  type = map(object({
    account_id = optional(string)
    max_items  = optional(number)
    monitor    = optional(string)
  }))
}

