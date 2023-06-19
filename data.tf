data "google_client_config" "default" {}

# data "terraform_remote_state" "vpc" {
#   backend = "remote"

#   config = {
#     organization = "glapss"
#     workspaces = {
#       name = "gcp-vpc"
#     }
#   }
# }
