output "api_id" {
  description = "Api Gatewat api_id"
  value       = google_api_gateway_api.this.api_id
}

output "gateway_id" {
  description = "API GATEWAY ID"
  value       = googel_api_gateway_gateway.this.gateway_id
}

output "gateway_url" {
  description = "URL to invoke the API Gateway"
  value       = google_api_gateway_gateway.this.default_hostname
}
