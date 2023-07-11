module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "~> 7.0"

  project_id   = var.project_id
  network_name = local.general_name
  description  = format("vpc %s", local.general_name)
  routing_mode = "GLOBAL"
  mtu          = 1460

  subnets = [
    {
      subnet_name      = format("%s-public", local.general_name)
      subnet_ip        = var.general.subnets.public
      subnet_region    = var.region
      subnet_flow_logs = "true"
    },
    {
      subnet_name           = format("%s-privat", local.general_name)
      subnet_ip             = var.general.subnets.privat
      subnet_region         = var.region
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    }
  ]

  secondary_ranges = {
    (format("%s-public", local.general_name)) = [
      {
        range_name    = format("%s-public-svc", local.general_name)
        ip_cidr_range = "10.100.0.0/20"
      },
      {
        range_name    = format("%s-public-pod", local.general_name)
        ip_cidr_range = "10.200.0.0/20"
      },
    ]
    (format("%s-privat", local.general_name)) = [
      {
        range_name    = format("%s-privat-svc", local.general_name)
        ip_cidr_range = "10.100.32.0/20"
      },
      {
        range_name    = format("%s-privat-pod", local.general_name)
        ip_cidr_range = "10.200.32.0/20"
      },
    ]
  }

  routes = [
    {
      name              = "egress-internet"
      description       = "Route through IGW to access internet"
      destination_range = "0.0.0.0/0"
      tags              = "egress-inet"
      next_hop_internet = "true"
    }
  ]

  firewall_rules = [
    {
      name                    = "ssh-allow"
      description             = "Allow ssh ingress"
      direction               = "INGRESS"
      priority                = 1000
      ranges                  = ["0.0.0.0/0"]
      source_tags             = null
      source_service_accounts = null
      target_tags             = ["ssh"]
      target_service_accounts = null
      allow = [
        {
          protocol = "tcp"
          ports    = ["22"]
        }
      ]
    },
    {
      name                    = "http-allow"
      description             = "Allow http ingress"
      direction               = "INGRESS"
      priority                = 1000
      ranges                  = ["0.0.0.0/0"]
      source_tags             = null
      source_service_accounts = null
      target_tags             = ["http"]
      target_service_accounts = null
      allow = [
        {
          protocol = "tcp"
          ports    = ["80"]
        }
      ]
    },
    {
      name                    = "https-allow"
      description             = "Allow https ingress"
      direction               = "INGRESS"
      priority                = 1000
      ranges                  = ["0.0.0.0/0"]
      source_tags             = null
      source_service_accounts = null
      target_tags             = ["https"]
      target_service_accounts = null
      allow = [
        {
          protocol = "tcp"
          ports    = ["443"]
        }
      ]
    }
  ]
}

resource "google_compute_router" "main_router" {
  name    = format("%s-router", local.general_name)
  project = var.project_id
  region  = var.region
  network = module.vpc.network_name

  bgp {
    asn = 64514
  }

  depends_on = [
    module.vpc
  ]
}

resource "google_compute_router_nat" "main_nat" {
  name                               = format("%s-nat", local.general_name)
  project                            = var.project_id
  router                             = google_compute_router.main_router.name
  region                             = google_compute_router.main_router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }

  depends_on = [
    module.vpc
  ]
}
