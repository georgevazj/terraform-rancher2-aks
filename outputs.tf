output "aks_cluster_id" {
  value = rancher2_cluster.aks_cluster.id
}

output "aks_config" {
  value = rancher2_cluster.aks_cluster.kube_config
}