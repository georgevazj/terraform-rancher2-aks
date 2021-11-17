# Configure Rancher provider
terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
    }
  }
}

provider "rancher2" {
  alias = "admin"

  api_url = var.api_url
  token_key = var.token_key
  insecure = true
}

# Rancher cluster resource
data "rancher2_cloud_credential" "cred" {
  name = var.cloud_credential_name
}

resource "rancher2_cluster" "aks_cluster" {
  name = var.cluster_name
  description = var.cluster_description

  aks_config_v2 {
    cloud_credential_id = rancher2_cloud_credential.cred.id
    resource_group = var.resource_group
    resource_location = var.resource_location
    dns_prefix = var.cluster_name
    kubernetes_version = var.kubernetes_version
    network_plugin = var.network_plugin
    node_pools {
      availability_zones = ["1", "2", "3"]
      name = var.node_pool_name
      count = var.node_count
      orchestrator_version = var.kubernetes_version
      os_disk_size_gb = var.os_disk_size_gb
      vm_size = var.vm_size
    }
  }

}