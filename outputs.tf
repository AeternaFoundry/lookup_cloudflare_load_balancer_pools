output "load_balancer_pools_lookup_account_id" {
  description = "Map of account_id values across all load_balancer_pools_lookup, keyed the same as var.load_balancer_pools_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_load_balancer_pools.load_balancer_pools_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "load_balancer_pools_lookup_max_items" {
  description = "Map of max_items values across all load_balancer_pools_lookup, keyed the same as var.load_balancer_pools_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_load_balancer_pools.load_balancer_pools_lookup : k => v.max_items if v.max_items != null }
}
output "load_balancer_pools_lookup_monitor" {
  description = "Map of monitor values across all load_balancer_pools_lookup, keyed the same as var.load_balancer_pools_lookup except keys with no monitor are omitted"
  value       = { for k, v in data.cloudflare_load_balancer_pools.load_balancer_pools_lookup : k => v.monitor if v.monitor != null && length(v.monitor) > 0 }
}
output "load_balancer_pools_lookup_result" {
  description = "Map of result values across all load_balancer_pools_lookup, keyed the same as var.load_balancer_pools_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_load_balancer_pools.load_balancer_pools_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

