resource "island_policy" "default" {
  name        = "Default"
  description = "Baseline policy applied to every Island user."
  priority    = 100

  allowed_urls = [
    "acme.com",
    "docs.google.com",
    "okta.com",
    "slack.com",
    "workday.com",
    "zoom.us",
  ]

  downloads  = "block"
  clipboard  = "allow_with_watermark"
  screenshot = "block"
  print      = "block"
  dlp_scan   = true

  session_timeout_minutes = 120
}
