# Configure Rancher provider
terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = ">=1.21.0"
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
resource "rancher2_cloud_credential" "cred" {
  name = "aks_credential"
  azure_credential_config {
    client_id       = var.client_id
    client_secret   = var.client_secret
    subscription_id = var.subscription_id
  }
}

resource "rancher2_cluster" "aks_cluster" {
  name = var.cluster_name
  description = var.cluster_description

}