locals {
  kubeconfig = yamldecode(data.tfe_outputs.kubeconfig.values.kubeconfig)
  cluster    = local.kubeconfig["clusters"][0]["cluster"]
  user       = local.kubeconfig["users"][0]["user"]
}