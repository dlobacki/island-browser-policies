# Island policy standards

Agreed between IT and InfoSec. Requests that fit these rules can be approved by IT
alone. Anything else needs InfoSec approval before code is changed.

## Pre-approved (IT can approve)

- Adding a public SaaS vendor domain to a group's `allowed_urls` list.
- Removing a domain from any allow-list.
- Changing `session_timeout_minutes` between 15 and 480.

## Requires InfoSec approval

- Enabling `downloads` for any group where it is currently `"block"`.
- Any change to `clipboard`, `screenshot` or `print` settings.
- Adding a domain to `allowed_urls` that is not a public SaaS vendor (personal
  storage, file-sharing, webmail, paste sites).
- Any change to `policies/default.tf`.
- Disabling `dlp_scan` for any group.

## Never

- Setting `downloads = "allow"` on the default policy.
- Removing `acme.com` or `okta.com` from any allow-list.
