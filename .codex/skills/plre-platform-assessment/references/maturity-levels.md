# PLRE Maturity Levels

## 1. Manual
Work depends on individual knowledge, manual commands, informal reviews, and limited evidence. Reliability depends on people noticing issues.

## 2. Standardized
Common practices are documented and repeatable. Ownership, templates, and baseline checks exist, but execution may still require manual steps.

## 3. Automated
Core workflows are automated through CI/CD, GitOps, policy checks, tests, and repeatable infrastructure workflows. Manual action is mostly approval and exception handling.

## 4. Measured
The platform is operated through objective signals such as SLOs, release evidence, coverage reports, incident metrics, cost and capacity trends, and scorecards.

## 5. Adaptive
The platform learns from operational evidence. It can recommend improvements, adjust plans, route agent work, and support controlled autonomous operations with clear guardrails.

## Evidence Expectations

- Manual: screenshots, notes, command history, or undocumented operator knowledge.
- Standardized: documented procedures, templates, ownership maps, and checklists.
- Automated: pipelines, GitOps definitions, tests, policy gates, and reproducible IaC.
- Measured: dashboards, SLOs, reports, trends, scorecards, and audit trails.
- Adaptive: feedback loops, agent workflows, approved remediation paths, and learning artifacts.
