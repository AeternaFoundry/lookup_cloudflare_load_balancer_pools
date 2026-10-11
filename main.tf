data "cloudflare_load_balancer_pools" "load_balancer_pools_lookup" {
  for_each = var.load_balancer_pools_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
  monitor    = each.value.monitor
}

