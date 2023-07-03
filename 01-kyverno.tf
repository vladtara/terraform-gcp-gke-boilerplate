resource "helm_release" "kyverno" {
  name             = var.general.kyverno.name
  repository       = var.general.kyverno.repository
  chart            = var.general.kyverno.chart
  version          = var.general.kyverno.version
  namespace        = var.general.kyverno.namespace
  create_namespace = true
  wait             = true
  timeout          = 900

  values = [
    templatefile(var.general.kyverno.values_path, {})
  ]
  depends_on = [
    module.gke
  ]
}

resource "helm_release" "kyverno_policies" {
  name             = var.general.kyverno_policies.name
  repository       = var.general.kyverno_policies.repository
  chart            = var.general.kyverno_policies.chart
  version          = var.general.kyverno_policies.version
  namespace        = var.general.kyverno_policies.namespace
  create_namespace = true
  wait             = true
  timeout          = 900

  values = [
    templatefile(var.general.kyverno_policies.values_path, {})
  ]
  depends_on = [
    module.gke,
    helm_release.kyverno
  ]
}
