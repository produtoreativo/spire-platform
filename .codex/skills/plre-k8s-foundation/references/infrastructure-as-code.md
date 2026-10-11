# Infrastructure as Code

## Standards

- Infrastructure must be described through versioned code before execution.
- State ownership, backend, environment separation, and secrets handling must be explicit.
- Plans must be reviewed before apply.
- Destructive changes require explicit approval, risk notes, rollback options, and expected evidence.
- Drift detection should be planned as part of Continuous Diligence.

## Minimum Plan Content

- Objective and affected environments.
- Modules, resources, providers, and versions.
- Expected resource diff.
- Dependencies and ordering.
- Security and access impact.
- Cost and capacity impact.
- Rollback or recovery path.
- Evidence to collect after execution.

## Reusable Folder Signals

Agents should inspect common locations when available:

- `infra/`
- `terraform/`
- `tofu/`
- `pulumi/`
- `environments/`
- `.github/workflows/`
- `.gitlab-ci.yml`
- `docs/`
