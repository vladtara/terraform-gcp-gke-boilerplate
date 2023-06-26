project_id = "bustling-surf-390011"
region     = "europe-west3"
name       = "main"
general = {
  version         = "1.26.5-gke.1200"
  release_channel = "REGULAR"
  subnets = {
    public = "10.10.10.0/24"
    privat = "10.10.100.0/24"
  }

  ingress_nginx = {
    name        = "ingress-nginx"
    repository  = "https://kubernetes.github.io/ingress-nginx"
    chart       = "ingress-nginx"
    version     = "4.7.0"
    namespace   = "ingress-nginx"
    values_path = "./templates/ingress-nginx/ingress-nginx.yaml"
  }
}
