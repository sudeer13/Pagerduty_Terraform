/* This is provider.tf file to provide API keys */
provider "pagerduty" {
  # Non-Production  = var.api_key.npd
  token = "${var.api_key.npd}"
}