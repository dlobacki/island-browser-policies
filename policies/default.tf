resource "island_policy" "default" {
  name        = "Third-party default"
  description = "Baseline policy for every third-party user connecting through Island."
  priority    = 100

  allowed_urls = [
    "acme.com",
    "okta.com",
    "slack.com",
    "zoom.us",
  ]

  downloads  = "block"
  clipboard  = "block"
  screenshot = "block"
  print      = "block"
  dlp_scan   = true

  session_timeout_minutes = 60
}
