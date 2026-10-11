# Cluster Foundation

## Scope

Cluster foundation covers the minimum reliable platform substrate required before workloads are promoted:

- Environment topology and separation.
- Cluster lifecycle and upgrade strategy.
- Node pools, autoscaling, disruption budgets, and maintenance windows.
- Networking, ingress, egress, DNS, certificates, and service exposure.
- Storage classes, backup posture, and data protection boundaries.
- Identity, RBAC, admin access, and break-glass procedures.
- Baseline platform add-ons such as ingress controller, external DNS, cert management, metrics, policy, secrets, and GitOps controller.

## Planning Expectations

- Document the intended topology before implementation.
- Prefer explicit environment boundaries for development, staging, production, and shared services.
- Define ownership for cluster operations, application namespaces, platform add-ons, and incident response.
- Define upgrade and rollback approach before cluster creation.
- Define evidence that proves the foundation is operational.

## Required Evidence

- Architecture notes or diagrams.
- IaC plan or equivalent execution plan.
- Access model and approval path.
- Operational runbook draft.
- Risk and rollback notes.
- Decision Trail entry.
