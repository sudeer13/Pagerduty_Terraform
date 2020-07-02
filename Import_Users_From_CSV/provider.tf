/* This is provider.tf file to provide API keys */

provider "pagerduty" {
  # API  = var.api_key.pd
  token = "${var.api_key.pd}"
}