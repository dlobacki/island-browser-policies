resource "island_policy" "contractors" {
  name        = "Contractors"
  description = "Contract staff on Acme projects. Approved work apps only; no data leaves the browser. [ITN-13]"
  priority    = 20
  groups      = ["Contractors"]

  allowed_urls = [
    "acme.com",
    "atlassian.net",
    "docs.google.com",
    "github.com",
    "okta.com",
    "slack.com",
  ]

  downloads  = "allow"
  clipboard  = "allow_with_watermark"
  screenshot = "block"
  print      = "block"
  dlp_scan   = true

  session_timeout_minutes = 120
}
