output "kibana_streams_id" {
  description = "Map of id values across all kibana_streams, keyed the same as var.kibana_streams except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_streams_classic_config" {
  description = "Map of classic_config values across all kibana_streams, keyed the same as var.kibana_streams except keys with no classic_config are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.classic_config if v.classic_config != null && length(v.classic_config) > 0 }
}
output "kibana_streams_dashboards" {
  description = "Map of dashboards values across all kibana_streams, keyed the same as var.kibana_streams except keys with no dashboards are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.dashboards if v.dashboards != null && length(v.dashboards) > 0 }
}
output "kibana_streams_description" {
  description = "Map of description values across all kibana_streams, keyed the same as var.kibana_streams except keys with no description are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.description if v.description != null && length(v.description) > 0 }
}
output "kibana_streams_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_streams, keyed the same as var.kibana_streams except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_streams_name" {
  description = "Map of name values across all kibana_streams, keyed the same as var.kibana_streams except keys with no name are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kibana_streams_queries" {
  description = "Map of queries values across all kibana_streams, keyed the same as var.kibana_streams except keys with no queries are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.queries if v.queries != null && length(v.queries) > 0 }
}
output "kibana_streams_query_config" {
  description = "Map of query_config values across all kibana_streams, keyed the same as var.kibana_streams except keys with no query_config are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.query_config if v.query_config != null && length(v.query_config) > 0 }
}
output "kibana_streams_space_id" {
  description = "Map of space_id values across all kibana_streams, keyed the same as var.kibana_streams except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_streams_wired_config" {
  description = "Map of wired_config values across all kibana_streams, keyed the same as var.kibana_streams except keys with no wired_config are omitted"
  value       = { for k, v in elasticstack_kibana_stream.kibana_streams : k => v.wired_config if v.wired_config != null && length(v.wired_config) > 0 }
}

