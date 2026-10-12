output "network_policies_lookup_id" {
  description = "Map of id values across all network_policies_lookup, keyed the same as var.network_policies_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_network_policies.network_policies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_policies_lookup_like" {
  description = "Map of like values across all network_policies_lookup, keyed the same as var.network_policies_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_network_policies.network_policies_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "network_policies_lookup_network_policies" {
  description = "Map of network_policies values across all network_policies_lookup, keyed the same as var.network_policies_lookup except keys with no network_policies are omitted"
  value       = { for k, v in data.snowflake_network_policies.network_policies_lookup : k => v.network_policies if v.network_policies != null && length(v.network_policies) > 0 }
}
output "network_policies_lookup_with_describe" {
  description = "Map of with_describe values across all network_policies_lookup, keyed the same as var.network_policies_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_network_policies.network_policies_lookup : k => v.with_describe if v.with_describe != null }
}

