resource "island_policy" "engineering" {
  name        = "Engineering"
  description = "Engineering group. Developer tooling allowed; downloads permitted with DLP."
  priority    = 30
  groups      = ["Engineering"]

  allowed_urls = [
    "acme.com",
    "atlassian.net",
    "datadoghq.com",
    "docs.google.com",
    "github.com",
    "npmjs.com",
    "okta.com",
    "slack.com",
    "terraform.io",
  ]

  downloads  = "allow"
  clipboard  = "allow"
  screenshot = "allow_with_watermark"
  print      = "block"
  dlp_scan   = true

  session_timeout_minutes = 240
}
