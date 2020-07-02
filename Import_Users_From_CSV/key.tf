/* PagerDuty API Key with FULL access */

# Enter Your PagerDuty API Key 
variable "api_key" {
  type = "map"
  default = {
    pd = "<Your-API KEY>"
  }
}
