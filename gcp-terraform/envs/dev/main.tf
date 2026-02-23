module "vpc" {
  source      = "../../modules/vpc"
  name        = "dev-vpc"
  region      = var.region
  subnet_cidr = "10.10.0.0./24"
}

module "compute" {
  source         = "..'/../modules/compute"
  instance_name  = "dev-vm"
  machine_type   = "e2-small"
  instance_image = "debian-cloud/debian-11"
  zone           = "us-central1-a"
  network        = module.vpc.vpc.self_link
  subnet         = module.vpc.subnet.self_link
}

module "api_gateway" {
  source      = "../../modules/api-gateway"
  project_id  = var.project_id
  region      = var.region
  api_id      = "my-api"
  gateway_id  = "my-gateway"
}
