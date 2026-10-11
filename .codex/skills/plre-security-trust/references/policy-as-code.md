# Policy as Code

## Scope

Policy as code should cover:

- Namespace standards.
- Required labels and ownership metadata.
- Resource requests, limits, and workload disruption controls.
- Privileged containers and host access.
- Image registry and provenance requirements.
- Network policy expectations.
- Secret reference standards.
- Ingress, TLS, and exposure controls.

## Operating Model

- Policies must be versioned and reviewed.
- Enforcement modes should move from audit to warn to enforce with evidence.
- Exceptions require owner, expiry, risk, compensating control, and Decision Trail entry.
- Policy failures should block release only when the control is approved for enforcement.

## Evidence

- Policy definitions.
- Test results.
- Admission decisions.
- Exception register.
- Release validation output.
