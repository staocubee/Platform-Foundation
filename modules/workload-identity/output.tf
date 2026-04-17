output "workload_identity_provider" {
  value = google_iam_workload_identity_pool_provider.github_provider.name
}

output "pool_name" {
  value = google_iam_workload_identity_pool.pool.name
}

