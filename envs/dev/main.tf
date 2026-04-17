provider "google" {
  project = var.project_id
  region  = var.region
}

module "workload_identity" {
  source = "../../modules/workload-identity"

  project_id            = var.project_id
  pool_id               = var.pool_id
  provider_id           = var.provider_id
  github_repository     = var.github_repository
  service_account_email = var.service_account_email
}