terraform {
  cloud {
    organization = "glapss"

    workspaces {
      name = "gcp-vpc"
    }
  }
}
