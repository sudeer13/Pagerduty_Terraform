/*  key.tf   */
/* Non-Prod PagerDuty API Key with FULL access */
variable "api_key" {
  type = "map"
  default = {
    npd = "Eimm5UqyKbB3416Npa15"
  }
}
