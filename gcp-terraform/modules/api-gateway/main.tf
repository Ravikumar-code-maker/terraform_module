resource "google_api_gateway_api" "this" {
  api_id  = var.api_id
}

resource "google_api_gateway_config" "this" {
  api       = google_api_gateway_api.this.api_id
  config_id = "${var.api_id}-config"

  openapi_documents {
    document {
      path     = "modules/api-gateway/openapi/yaml"
      contents = filebase64("${path.module}/openapi.yaml")
    }
  }
}

resource "google_api_gateway_gateway" "this" {
  provider   = google-beta
  gateway_id = var.gateway_id
  api_config = google_api_gateway_api_config.this.id
  region     = var.region
}

