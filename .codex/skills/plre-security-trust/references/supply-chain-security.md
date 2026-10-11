# Supply Chain Security

## Required Capabilities

- Dependency scanning.
- Static analysis where appropriate.
- Image scanning.
- SBOM generation or ingestion.
- Image digest pinning for release evidence.
- Provenance and signing where available.
- Controlled registries and promotion path.

## Release Evidence

Each production release should capture:

- Source commit.
- Build pipeline identity.
- Artifact identifier and image digest.
- Scan results and exceptions.
- SBOM link or artifact.
- Policy decisions.
- Runtime deployment evidence.

## Guardrails

- Do not promote artifacts with unresolved critical findings unless an approved exception exists.
- Do not store secrets in Git.
- Do not rely on mutable tags as the only release identifier.
- Record material trust decisions in the Decision Trail.
