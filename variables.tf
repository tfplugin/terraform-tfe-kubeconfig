variable "tfe_hostname" {
  type        = string
  description = "he Terraform Cloud/Enterprise hostname to connect to. Defaults to app.terraform.io."
  default     = "app.terraform.io"
}

variable "tfe_token" {
  type        = string
  description = "The token used to authenticate with Terraform Cloud/Enterprise."
  sensitive   = true
  nullable    = false
}

variable "tfe_ssl_skip_verify" {
  type        = bool
  description = "Whether or not to skip certificate verifications."
  default     = false
}

variable "tfe_organization" {
  type        = string
  description = "The default organization that resources should belong to. If provided, it's usually possible to omit resource-specific organization arguments. Ensure that the organization already exists prior to using this argument."
  nullable    = false
}

variable "tfe_workspace" {
  type        = string
  description = "The name of the workspace that outputs kubeconfig."
  nullable    = false
}
