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
  cert_manager = {
    name        = "cert-manager"
    repository  = "https://charts.jetstack.io"
    chart       = "cert-manager"
    version     = "v1.12.0"
    namespace   = "cert-manager"
    values_path = "./templates/cert-manager/cert-manager.yaml"
  }
  kyverno = {
    name        = "kyverno"
    repository  = "https://kyverno.github.io/kyverno"
    chart       = "kyverno"
    version     = "3.0.0"
    namespace   = "kyverno"
    values_path = "./templates/kyverno/kyverno.yaml"
  }
  kyverno_policies = {
    name        = "kyverno-policies"
    repository  = "https://kyverno.github.io/kyverno"
    chart       = "kyverno-policies"
    version     = "3.0.0"
    namespace   = "kyverno"
    values_path = "./templates/kyverno/kyverno-policies.yaml"
  }
}
