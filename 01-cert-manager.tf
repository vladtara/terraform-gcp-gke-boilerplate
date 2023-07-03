resource "helm_release" "cert_manager" {
  name             = var.general.cert_manager.name
  repository       = var.general.cert_manager.repository
  chart            = var.general.cert_manager.chart
  version          = var.general.cert_manager.version
  namespace        = var.general.cert_manager.namespace
  create_namespace = true
  wait             = false
  wait_for_jobs    = false
  skip_crds        = false
  timeout          = 900

  values = [
    templatefile(var.general.cert_manager.values_path, {})
  ]

  depends_on = [
    module.gke,
    kubectl_manifest.cert_manager_crds
  ]
}

# Install crd
data "http" "cert_manager_crds" {
  url = "https://github.com/cert-manager/cert-manager/releases/download/${var.general.cert_manager.version}/cert-manager.crds.yaml"
}

data "kubectl_file_documents" "cert_manager_crds" {
  content = data.http.cert_manager_crds.response_body
}

resource "kubectl_manifest" "cert_manager_crds" {
  for_each  = data.kubectl_file_documents.cert_manager_crds.manifests
  yaml_body = each.value

  depends_on = [
    module.gke
  ]
}
