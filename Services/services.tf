/* services.tf */

resource "pagerduty_service" "energon-v1" {
  name = "Energon Service v1"
  auto_resolve_timeout = 14400
  acknowledgement_timeout = 1800
  escalation_policy = "${pagerduty_escalation_policy.autobots-esc-policy.id}"

  incident_urgency_rule {
    type = "constant"
    urgency = "high"
  }
}
resource "pagerduty_service" "ion-cannon-v1" {
  name = "Ion Cannon Service v1"
  auto_resolve_timeout = 14400
  acknowledgement_timeout = 1800
  escalation_policy = "${pagerduty_escalation_policy.decepticons-esc-policy.id}"

  incident_urgency_rule {
    type = "constant"
    urgency = "high"
  }
}
resource "pagerduty_service" "space-bridge-v1" {
  name = "Space Bridge Service v1"
  auto_resolve_timeout = 14400
  acknowledgement_timeout = 1800
  escalation_policy = "${pagerduty_escalation_policy.noc-ep.id}"

  incident_urgency_rule {
    type = "constant"
    urgency = "high"
  }
}