output "host" {
  value       = local.cluster["server"]
  description = "The hostname (in form of URI) of the Kubernetes API."
  sensitive   = true
}

output "client_certificate" {
  value       = base64decode(local.user["client-certificate-data"])
  description = "PEM-encoded client certificate for TLS authentication."
  sensitive   = true
}

output "client_key" {
  value       = base64decode(local.user["client-key-data"])
  description = "PEM-encoded client certificate key for TLS authentication."
  sensitive   = true
}

output "cluster_ca_certificate" {
  value       = base64decode(local.cluster["certificate-authority-data"])
  description = "PEM-encoded root certificates bundle for TLS authentication."
  sensitive   = true
}