resource "helm_release" "argo_cd" {
  name             = var.general.argo_cd.name
  repository       = var.general.argo_cd.repository
  chart            = var.general.argo_cd.chart
  version          = var.general.argo_cd.version
  namespace        = var.general.argo_cd.namespace
  create_namespace = true
  wait             = true
  timeout          = 900

  values = [
    templatefile(var.general.argo_cd.values_path, {})
  ]
  depends_on = [
    module.gke,
    helm_release.ingress_nginx,
    helm_release.cert_manager,
    helm_release.kyverno
  ]
}

resource "helm_release" "argo_workflows" {
  name             = var.general.argo_workflows.name
  repository       = var.general.argo_workflows.repository
  chart            = var.general.argo_workflows.chart
  version          = var.general.argo_workflows.version
  namespace        = var.general.argo_workflows.namespace
  create_namespace = true
  wait             = true
  timeout          = 900

  values = [
    templatefile(var.general.argo_workflows.values_path, {})
  ]
  depends_on = [
    module.gke,
    helm_release.ingress_nginx,
    helm_release.cert_manager,
    helm_release.kyverno
  ]
}

resource "helm_release" "argo_events" {
  name             = var.general.argo_events.name
  repository       = var.general.argo_events.repository
  chart            = var.general.argo_events.chart
  version          = var.general.argo_events.version
  namespace        = var.general.argo_events.namespace
  create_namespace = true
  wait             = true
  timeout          = 900

  values = [
    templatefile(var.general.argo_events.values_path, {})
  ]
  depends_on = [
    module.gke,
    helm_release.ingress_nginx,
    helm_release.cert_manager,
    helm_release.kyverno
  ]
}

resource "helm_release" "argo_rollouts" {
  name             = var.general.argo_rollouts.name
  repository       = var.general.argo_rollouts.repository
  chart            = var.general.argo_rollouts.chart
  version          = var.general.argo_rollouts.version
  namespace        = var.general.argo_rollouts.namespace
  create_namespace = true
  wait             = true
  timeout          = 900

  values = [
    templatefile(var.general.argo_rollouts.values_path, {})
  ]
  depends_on = [
    module.gke,
    helm_release.ingress_nginx,
    helm_release.cert_manager,
    helm_release.kyverno
  ]
}
