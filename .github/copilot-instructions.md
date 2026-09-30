# Instructions for AI-assisted edits

This repo is Terraform (HCL) for Island browser policies. When editing:

- Edit exactly one file per change, the one for the group named in the ticket.
  Group policies live in `policies/<group>.tf`. Never touch `policies/default.tf`
  unless the ticket explicitly says "default policy" and carries InfoSec approval.
- One `island_policy` resource per file. Do not add new resources; change attributes
  on the existing one.
- Keep `allowed_urls` sorted alphabetically. One domain per line, trailing comma.
- Domains only, no scheme or path: `portal.vendor-x.com`, not `https://portal.vendor-x.com/login`.
- Valid values: `downloads`, `clipboard`, `screenshot`, `print` are `"allow"`,
  `"block"` or `"allow_with_watermark"`. `dlp_scan` is `true` or `false`.
- Preserve the `description` attribute; append the ticket ID in square brackets,
  for example `[ITD-2290]`.
- Run `terraform fmt` before committing. Two-space indentation, aligned `=`.
- Branch name: `<TICKET-ID>-<short-kebab-summary>`. Commit message: `<TICKET-ID>: <what changed>`.
- Do not change `versions.tf` or anything under `.github/`.
