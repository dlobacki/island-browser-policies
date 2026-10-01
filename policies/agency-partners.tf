resource "island_policy" "agency_partners" {
  name        = "Agency Partners"
  description = "Outside agencies and vendors. Shared workspaces only; downloads blocked."
  priority    = 30
  groups      = ["Agency Partners"]

  allowed_urls = [
    "acme.com",
    "box.com",
    "figma.com",
    "okta.com",
    "slack.com",
  ]

  downloads  = "block"
  clipboard  = "allow_with_watermark"
  screenshot = "block"
  print      = "allow_with_watermark"
  dlp_scan   = true

  session_timeout_minutes = 90
}
