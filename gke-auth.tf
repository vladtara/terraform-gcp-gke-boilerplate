module "gke_auth" {
  source  = "terraform-google-modules/kubernetes-engine/google//modules/auth"
  version = "~> 26.1.1"

  project_id   = var.project_id
  location     = var.region
  cluster_name = module.gke.name
}
