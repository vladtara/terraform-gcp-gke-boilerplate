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