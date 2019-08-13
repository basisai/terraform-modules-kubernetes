variable "jaeger_enabled" {
  description = "Enable/disable Jaeger"
  default     = false
}

variable "jaeger_release_name" {
  description = "Helm release name for Jaeger"
  default     = "jaeger"
}

variable "jaeger_chart_name" {
  description = "Chart name for Jaeger"
  default     = "jaeger"
}

variable "jaeger_chart_repository" {
  description = "Chart repository for Jaeger"
  default     = "incubator"
}

variable "jaeger_chart_version" {
  description = "Chart version for Jaeger"
  default     = "0.13.0"
}

variable "jaeger_image_tag" {
  description = "Jaeger's docker image tag"
  default     = "1.13.1"
}

variable "jaeger_namespace" {
  description = "Kubernetes namespace to which Jaeger is deployed"
  default     = "core"
}

variable "jaeger_ui_ingress_hosts" {
  description = "Ingress hosts for the Jaeger Query service"
  default     = {}
}

variable "jaeger_ui_ingress_annotations" {
  description = "Ingress annotations for the Jaeger Query service"
  default     = {}
}

variable "jaeger_es_client_resources" {
  description = "Kubernetes resources for Elasticsearch client node"
  default = {
    limits = {
      cpu    = "1"
      memory = "1536Mi"
    }
    requests = {
      cpu    = "25m"
      memory = "512Mi"
    }
  }
}

variable "jaeger_es_master_resources" {
  description = "Kubernetes resources for Elasticsearch master node"
  default = {
    limits = {
      cpu    = "1"
      memory = "1536Mi"
    }
    requests = {
      cpu    = "25m"
      memory = "512Mi"
    }
  }
}

variable "jaeger_es_data_resources" {
  description = "Kubernetes resources for Elasticsearch data node"
  default = {
    limits = {
      cpu    = "1"
      memory = "2560Mi"
    }
    requests = {
      cpu    = "25m"
      memory = "1536Mi"
    }
  }
}

variable "jaeger_es_data_replicas" {
  description = "Num of replicas of Elasticsearch data node"
  default     = 2
}

variable "jaeger_es_data_persistence_disk_size" {
  description = "Persistence disk size in each Elasticsearch data node"
  default     = "30Gi"
}

variable "jaeger_query_resources" {
  description = "Kubernetes resources for Jaeger Query service"
  default = {
    limits = {
      cpu    = "200m"
      memory = "128Mi"
    }
    requests = {
      cpu    = "25m"
      memory = "32Mi"
    }
  }
}

variable "jaeger_collector_resources" {
  description = "Kubernetes resources for Jaeger Collector service"
  default = {
    limits = {
      cpu    = "512m"
      memory = "256Mi"
    }
    requests = {
      cpu    = "50m"
      memory = "64Mi"
    }
  }
}

variable "jaeger_agent_resources" {
  description = "Kubernetes resources for Jaeger Agent service"
  default = {
    limits = {
      cpu    = "100m"
      memory = "128Mi"
    }
    requests = {
      cpu    = "25m"
      memory = "16Mi"
    }
  }
}
