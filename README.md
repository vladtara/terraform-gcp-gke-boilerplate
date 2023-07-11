# terraform-gcp-gke-boilerplate
Opinionated GKE bootstrap template
### Init
export PROJECT="bustling-surf-390011"
gcloud auth login
gcloud services enable container.googleapis.com --project $PROJECT
gcloud services enable servicemanagement.googleapis.com --project $PROJECT

### Get credentials
```
export PROJECT="bustling-surf-390011"
export REGION="europe-west3"
export CLUSTER_NAME="main"
gcloud container clusters get-credentials $CLUSTER_NAME --region $REGION --project $PROJECT
```
### Run
```
export TF_VAR_project_id="bustling-surf-390011"
export TF_VAR_region="europe-west3"
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.69.1 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 4.69.1 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.3.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | >= 3.4.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.7.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.16.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.70.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.10.1 |
| <a name="provider_http"></a> [http](#provider\_http) | 3.4.0 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gke"></a> [gke](#module\_gke) | terraform-google-modules/kubernetes-engine/google//modules/beta-autopilot-public-cluster | 26.1.1 |
| <a name="module_gke_auth"></a> [gke\_auth](#module\_gke\_auth) | terraform-google-modules/kubernetes-engine/google//modules/auth | ~> 26.1.1 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-google-modules/network/google | ~> 7.0 |

## Resources

| Name | Type |
|------|------|
| [google_compute_router.main_router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |
| [google_compute_router_nat.main_nat](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |
| [helm_release.argo_cd](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.argo_events](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.argo_rollouts](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.argo_workflows](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.cert_manager](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.ingress_nginx](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.kyverno](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.kyverno_policies](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubectl_manifest.cert_manager_crds](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [google_client_config.default](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/client_config) | data source |
| [http_http.cert_manager_crds](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |
| [kubectl_file_documents.cert_manager_crds](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/data-sources/file_documents) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_general"></a> [general](#input\_general) | General settings | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Name of project | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Default region name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gke"></a> [gke](#output\_gke) | GKE output from module. |
| <a name="output_vpc"></a> [vpc](#output\_vpc) | VPC output from module. |
<!-- END_TF_DOCS -->