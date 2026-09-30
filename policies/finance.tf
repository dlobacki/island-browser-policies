resource "island_policy" "finance" {
  name        = "Finance"
  description = "Finance group. Stricter downloads; approved banking and ERP portals only. [ITD-2289]"
  priority    = 20
  groups      = ["Finance"]

  allowed_urls = [
    "acme.com",
    "app.netsuite.com",
    "chase.com",
    "concur.com",
    "docs.google.com",
    "okta.com",
    "portal.vendor-x.com",
    "slack.com",
    "workday.com",
  ]

  downloads  = "block"
  clipboard  = "allow_with_watermark"
  screenshot = "block"
  print      = "allow_with_watermark"
  dlp_scan   = true

  session_timeout_minutes = 60
}
