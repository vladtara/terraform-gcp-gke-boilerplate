project_id = "bustling-surf-390011"
region     = "europe-west3"
name       = "main"
general = {
  version         = "1.26.5-gke.1200"
  release_channel = "REGULAR"
  subnets = {
    public = "10.10.0.0/20"
    privat = "10.16.0.0/20"
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
  argo_cd = {
    name        = "argocd"
    repository  = "https://argoproj.github.io/argo-helm"
    chart       = "argo-cd"
    version     = "5.38.0"
    namespace   = "argo"
    values_path = "./templates/argo/argo-cd.yaml"
  }
  argo_workflows = {
    name        = "argo-workflows"
    repository  = "https://argoproj.github.io/argo-helm"
    chart       = "argo-workflows"
    version     = "0.31.0"
    namespace   = "argo"
    values_path = "./templates/argo/argo-workflows.yaml"
  }
  argo_events = {
    name        = "argo-events"
    repository  = "https://argoproj.github.io/argo-helm"
    chart       = "argo-events"
    version     = "2.4.0"
    namespace   = "argo"
    values_path = "./templates/argo/argo-events.yaml"
  }
  argo_rollouts = {
    name        = "argo-rollouts"
    repository  = "https://argoproj.github.io/argo-helm"
    chart       = "argo-rollouts"
    version     = "2.31.0"
    namespace   = "argo"
    values_path = "./templates/argo/argo-rollouts.yaml"
  }
}

