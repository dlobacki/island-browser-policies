# Island browser policies

Terraform definitions for Acme's Island Enterprise Browser policies. Every policy
users see in Island is defined here and applied by Terraform. Nobody edits the
Island admin console directly.

## Layout

| Path | What it holds |
|---|---|
| `versions.tf` | Provider and Terraform version pins |
| `policies/default.tf` | Baseline policy for every third-party user |
| `policies/contractors.tf` | Contractor group overrides |
| `policies/agency-partners.tf` | Agency partner group overrides |
| `POLICY-STANDARDS.md` | Rules agreed with InfoSec for what can change without review |

## How a change happens

1. An employee requests a policy change through IT (Slack or the portal).
2. A change ticket is opened. Requests outside `POLICY-STANDARDS.md` go to InfoSec first.
3. The change is made on a branch named after the ticket, for example `ITN-1-contractors-coupa`.
4. CI runs `terraform fmt -check` on the pull request.
5. A pull request is opened and reviewed by Engineering.
6. The Network team reviews, tests and approves. Merging to `main` triggers `terraform apply`.

## Conventions

See `.github/copilot-instructions.md`. In short: one resource per policy, URL lists
sorted alphabetically, no edits to `default.tf` without InfoSec sign-off.
