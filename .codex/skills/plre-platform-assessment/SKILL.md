# Skill: plre-platform-assessment

## Purpose
Assess the Spire platform as a Kubernetes product using the PLRE maturity model. This skill establishes the current state, gaps, risks, capability score, and recommended next actions before implementation work starts.

## When to use
- At the beginning of a platform initiative.
- Before changing Kubernetes architecture, operations, observability, security, or delivery processes.
- During Continuous Assessment checkpoints in the ProdOps cycle.
- When the team needs a neutral baseline for planning, diligence, or executive communication.

## Inputs expected
- Product and platform context from `README.md`, `docs/`, `AGENTS.md`, and existing architecture notes.
- Existing IaC, Kubernetes, CI/CD, GitOps, observability, security, and runbook files when available.
- Current incidents, operational pain points, reliability targets, compliance needs, and team constraints.
- Existing artifacts such as `Platform_Deck.md`, `Platform_Capability_Assessment.md`, `Platform_Scorecard.md`, and `Platform_Decision_Trail.md`.

## Activities
- Inventory platform assets, ownership boundaries, environments, dependencies, and operational workflows.
- Score the ten PLRE domains against the five maturity levels.
- Identify evidence for each score and mark assumptions where evidence is missing.
- Map gaps to platform risks, product impact, and recommended sequencing.
- Produce assessment artifacts that can feed planning and diligence.

## Outputs
- `Platform_Capability_Assessment.md`
- `Platform_Scorecard.md`
- Assessment section for `Platform_Deck.md`
- New entries in `Platform_Decision_Trail.md`

## Guardrails
- Do not execute destructive changes or modify infrastructure.
- Do not create definitive Kubernetes manifests in this skill.
- Clearly separate facts, evidence, assumptions, risks, and recommendations.
- Any proposed infrastructure action must include plan, expected diff, risks, rollback considerations, and expected evidence before execution.
- Update the Decision Trail for all material conclusions and recommendations.

## Related artifacts
- `references/capability-model.md`
- `references/maturity-levels.md`
- `Platform_Deck.md`
- `Platform_Capability_Assessment.md`
- `Platform_Scorecard.md`
- `Platform_Decision_Trail.md`
