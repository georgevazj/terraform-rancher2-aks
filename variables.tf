variable "api_url" {
  type = string
  description = "(Required) Rancher API URL"
}

variable "access_key" {
  type = string
  description = "(Required) Rancher Access Key"
}

variable "secret_key" {
  type = string
  description = "(Required) Rancher Secret Key"
}

# Azure credentials
variable "cloud_credential_name" {
  type = string
  description = "(Required) Rancher cloud credential name"
  default = "playground-credentials"
}

# Cluster configuration
variable "cluster_name" {
  type = string
  description = "(Required) AKS cluster name"
}

variable "cluster_description" {
  type = string
  description = "(Required) AKS cluster description"
}

variable "resource_group" {
  type = string
  description = "(Required) Azure resource group"
}

variable "resource_location" {
  type = string
  description = "(Required) Azure resource location"
  default = "westeurope"
}

variable "kubernetes_version" {
  type = string
  description = "(Required) AKS cluster kubernetes version"
  default = "1.20.9"
}

variable "network_plugin" {
  type = string
  description = "(Required) AKS cluster network plugin"
  default = "kubenet"
}

variable "node_pool_name" {
  type = string
  description = "(Required) AKS cluster node pool name"
  default = "agentpool"
}

variable "node_count" {
  type = number
  description = "(Required) AKS cluster node count"
  default = 1
}

variable "os_disk_size_gb" {
  type = number
  description = "(Required) AKS cluster node OS disk size in GB"
  default = 128
}

variable "vm_size" {
  type = string
  description = "(Required) AKS cluster node VM size"
  default = "Standard_DS2_v2"
}