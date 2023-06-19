provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}

provider "kubernetes" {
  cluster_ca_certificate = module.main_gke_auth.cluster_ca_certificate
  host                   = module.main_gke_auth.host
  token                  = module.main_gke_auth.token
}

provider "helm" {
  kubernetes {
    cluster_ca_certificate = module.main_gke_auth.cluster_ca_certificate
    host                   = module.main_gke_auth.host
    token                  = module.main_gke_auth.token
  }
}

provider "kubectl" {
  cluster_ca_certificate = module.main_gke_auth.cluster_ca_certificate
  host                   = module.main_gke_auth.host
  token                  = module.main_gke_auth.token
  load_config_file       = false
}
