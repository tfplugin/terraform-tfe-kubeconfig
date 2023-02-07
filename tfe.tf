provider "tfe" {
  hostname        = var.tfe_hostname
  token           = var.tfe_token
  ssl_skip_verify = var.tfe_ssl_skip_verify
  organization    = var.tfe_organization
}

data "tfe_outputs" "kubeconfig" {
  organization = var.tfe_organization
  workspace    = var.tfe_workspace
}
