output "workload_identity_provider" {
  value = module.workload_identity.workload_identity_provider
}

output "service_account_email" {
  value = var.service_account_email
}

output "pool_name" {
  value = module.workload_identity.pool_name
}