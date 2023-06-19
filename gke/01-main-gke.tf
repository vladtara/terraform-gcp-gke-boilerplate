module "kubernetes-engine_beta-autopilot-public-cluster" {
  source  = "terraform-google-modules/kubernetes-engine/google//modules/beta-autopilot-public-cluster"
  version = "26.1.1"
  
  project_id         = var.project_id
  name               = "mlops-demo"
  description        = "mlops-demo cluster"
  kubernetes_version = "1.25.8-gke.500"
  release_channel    = "REGULAR"

  regional               = true
  region                 = "us-central1"
  zones                  = ["us-central1-a", "us-central1-b", "us-central1-c"]
  network_project_id     = "nc-main-304211"
  network                = "mlops-303712-vpc"
  subnetwork             = "mlops-303712-us-central1-172-25-1-0-24"
  ip_range_pods          = "mlops-303712-us-central1-172-25-1-0-24-pods"
  ip_range_services      = "mlops-303712-us-central1-172-25-1-0-24-service"
  master_ipv4_cidr_block = "172.30.10.16/28"
}
