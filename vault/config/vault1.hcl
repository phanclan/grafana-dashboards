storage "raft" {
  path    = "/vault/data"
  node_id = "node1"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
  telemetry {
    unauthenticated_metrics_access = true
  }  
}

default_lease_ttl = "168h" # default(768h)
max_lease_ttl = "0h" # default(768h)
api_addr = "http://10.5.0.12:8200"
cluster_addr = "http://10.5.0.12:8201"
ui = true

telemetry {
  disable_hostname = true
  prometheus_retention_time = "24h"
}