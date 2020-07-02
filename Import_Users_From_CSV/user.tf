/*Create a PagerDuty user and update contact details*/

# Import CSV File
locals {
  variable_list = csvdecode(file("${path.module}/users_list.csv"))
}

# Count the number of users in list
count     = length(local.variable_list)

# read the data using loop
for user in local.variable_list
resource "pagerduty_user" "user" {
  count     = length(local.variable_list)
  name      = local.variable_list[count.index].name
  email     = local.variable_list[count.index].email
  role      = local.variable_list[count.index].role
  job_title = local.variable_list[count.index].job_title
}

# Pring the userID 
output "id" {
  value = "user_id"
}
