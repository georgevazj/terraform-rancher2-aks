variable "api_url" {
  type = string
  description = "(Required) Rancher API URL"
}

variable "token_key" {
  type = string
  description = "(Required) Rancher API token key to connect to rancher. It can also be sourced from the RANCHER_TOKEN_KEY environment variable."
}

# Azure credentials
variable "client_id" {
  type = string
  description = "(Required) Azure client id"
}

variable "client_secret" {
  type = string
  description = "(Required) Azure client secret"
}

variable "subscription_id" {
  type = string
  description = "(Required) Azure subscription ID"
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