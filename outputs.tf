output "vpc" {
  description = "VPC output from module."
  value       = module.vpc
  sensitive   = true
}

output "gke" {
  description = "GKE output from module."
  value       = module.gke
  sensitive   = true
}

