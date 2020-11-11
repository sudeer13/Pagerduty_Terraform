/*  key.tf   */
/* Non-Prod PagerDuty API Key with FULL access */
variable "api_key" {
  type = "map"
  default = {
    npd = "YOUR_API_KEY"
  }
}
