project_id = "bustling-surf-390011"
region     = "europe-west3"
general = {
  name            = "main"
  version         = "1.27.2-gke.1200"
  release_channel = "REGULAR"
  subnets = {
    public = "10.10.10.0/24"
    privat = "10.10.100.0/24"
  }
}
