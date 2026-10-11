variable "kibana_streams" {
  description = <<EOT
Map of kibana_streams, attributes below
Required:
    - name
Optional:
    - classic_config
    - dashboards
    - description
    - queries
    - query_config
    - space_id
    - timeouts
    - wired_config
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    name = string
    classic_config = optional(object({
      failure_store_json       = optional(string)
      field_overrides_json     = optional(string)
      index_number_of_replicas = optional(number)
      index_number_of_shards   = optional(number)
      index_refresh_interval   = optional(string)
      lifecycle_json           = optional(string)
      processing_steps         = optional(list(string))
    }))
    dashboards  = optional(list(string))
    description = optional(string)
    queries = optional(list(object({
      description    = optional(string)
      esql           = string
      evidence       = optional(list(string))
      id             = string
      severity_score = optional(number)
      title          = string
    })))
    query_config = optional(object({
      esql = string
    }))
    space_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    wired_config = optional(object({
      failure_store_json       = optional(string)
      fields_json              = optional(string)
      index_number_of_replicas = optional(number)
      index_number_of_shards   = optional(number)
      index_refresh_interval   = optional(string)
      lifecycle_json           = optional(string)
      processing_steps         = optional(list(string))
      routing_json             = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

