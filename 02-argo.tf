resource "helm_release" argo_cd" {
  name             = var.general.argo_cd.name
  repository       = var.general.argo_cd.repository
  chart            = var.general.argo_cd.chart
  version          = var.general.argo_cd.version
  namespace        = var.general.argo_cd.namespace
  create_namespace = true
  wait             = true
  timeout          = 900
  
  values = [
    templatefile(var.general.kyverno.values_path, {})
  ]
  depends_on = [
    module.gke,
    helm_release.cert_manager,
    helm_release.ingress_nginx,
    helm_release.kyverno
  ]
}




