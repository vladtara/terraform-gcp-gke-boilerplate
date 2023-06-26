resource "helm_release" "ingress_nginx" {
  name             = var.general.ingress_nginx.name
  repository       = var.general.ingress_nginx.repository
  chart            = var.general.ingress_nginx.chart
  version          = var.general.ingress_nginx.version
  namespace        = var.general.ingress_nginx.namespace
  create_namespace = true
  wait             = false

  values = [
    templatefile(var.general.ingress_nginx.values_path, {})
  ]
  depends_on = [
    module.gke
  ]
}
