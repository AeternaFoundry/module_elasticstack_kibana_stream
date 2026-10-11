resource "elasticstack_kibana_stream" "kibana_streams" {
  for_each = var.kibana_streams

  name           = each.value.name
  classic_config = each.value.classic_config
  dashboards     = each.value.dashboards
  description    = each.value.description
  queries        = each.value.queries
  query_config   = each.value.query_config
  space_id       = each.value.space_id
  timeouts       = each.value.timeouts
  wired_config   = each.value.wired_config

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

