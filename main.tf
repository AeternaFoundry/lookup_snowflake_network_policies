data "snowflake_network_policies" "network_policies_lookup" {
  for_each = var.network_policies_lookup

  like          = each.value.like
  with_describe = each.value.with_describe
}

