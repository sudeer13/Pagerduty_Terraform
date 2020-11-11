resource "pagerduty_event_rule" "bug1" {
  action_json = jsonencode([
    [
      "annotate",
      "This is a test 1",
    ],
  ])

  condition_json = jsonencode([
    "and",
    [
      "matches",
      [
        "path",
        "service",
      ],
      "^foo-1",
    ],
    [
      "equals",
      [
        "path",
        "client",
      ],
      "bar",
    ],
  ])
}

resource "pagerduty_event_rule" "bug2" {
  action_json = jsonencode([
    [
      "annotate",
      "This is a test 2",
    ],
  ])

  condition_json = jsonencode([
    "and",
    [
      "matches",
      [
        "path",
        "service",
      ],
      "^foo-2",
    ],
    [
      "equals",
      [
        "path",
        "client",
      ],
      "bar",
    ],
  ])
}