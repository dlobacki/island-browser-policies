resource "island_policy" "finance" {
  name        = "Finance"
  description = "Finance group. Stricter downloads; approved banking and ERP portals only. [ITN-2]"
  priority    = 20
  groups      = ["Finance"]

  allowed_urls = [
    "acme.com",
    "app.netsuite.com",
    "chase.com",
    "concur.com",
    "docs.google.com",
    "okta.com",
    "slack.com",
    "workday.com",
  ]

  downloads  = "allow"
  clipboard  = "allow_with_watermark"
  screenshot = "block"
  print      = "allow_with_watermark"
  dlp_scan   = true

  session_timeout_minutes = 60
}
