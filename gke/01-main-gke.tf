module "main_gke" {
  source  = "terraform-google-modules/kubernetes-engine/google//modules/beta-autopilot-public-cluster"
  version = "26.1.1"

  project_id         = var.project_id
  name               = var.general.cluster_main_name
  description        = format("%s cluster", var.general.cluster_main_name)
  kubernetes_version = var.general.cluster_main_version
  release_channel    = var.general.release_channel

  regional           = true
  region             = var.region
  network_project_id = data.terraform_remote_state.vpc.outputs.main_vpc.project_id
  network            = data.terraform_remote_state.vpc.outputs.main_vpc.network_name
  subnetwork         = data.terraform_remote_state.vpc.outputs.main_vpc.subnets_names[1]
  ip_range_pods      = data.terraform_remote_state.vpc.outputs.main_vpc.subnets_secondary_ranges[1].*.range_name[1]
  ip_range_services  = data.terraform_remote_state.vpc.outputs.main_vpc.subnets_secondary_ranges[1].*.range_name[0]

  create_service_account             = true
  add_cluster_firewall_rules         = false
  add_master_webhook_firewall_rules  = false
  add_shadow_firewall_rules          = false
  disable_default_snat               = false
  dns_cache                          = true
  enable_confidential_nodes          = false
  enable_cost_allocation             = false
  enable_network_egress_export       = false
  enable_resource_consumption_export = true
  enable_tpu                         = false
  enable_vertical_pod_autoscaling    = true
  grant_registry_access              = false
  horizontal_pod_autoscaling         = true
  http_load_balancing                = true
  configure_ip_masq                  = false
  ip_masq_link_local                 = false
  issue_client_certificate           = false

  identity_namespace = "enabled"
  cluster_resource_labels = {
    cluster_name = var.general.cluster_main_name
  }
}
