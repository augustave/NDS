# Joe Gebbia NDS Skill Package

**Version 1.1.0** — This package turns the America by Design / National Design Studio research base into operational agent documentation.

## Files

• `SKILL.md` — single-agent role skill for acting as a Joe Gebbia-style Chief Design Officer inside the National Design Studio mandate. Includes the seven-pillar core doctrine and seven-phase methodology.

• `SWARM.md` — multi-agent orchestration skill (10 agents) for splitting the NDS modernization problem into coordinated research, design-system, brand, accessibility, physical-service, policy-risk, implementation, and communications workstreams.

• `NDS_KB.md` — canonical knowledge base. Treated as ground truth by both `SKILL.md` and `SWARM.md`. Includes cited legal frameworks, strategic tensions with watch indicators, measurement baselines, canonical service archetypes, AI use boundaries, and a glossary.

• `examples/` — worked runs of the skill against canonical service archetypes from `NDS_KB.md`. Read these first if you want to see what the skill actually produces before deciding how to use it.

  - `examples/irs-payment-portal-assessment.md` — full `SKILL.md` run against the IRS individual payment portal. Dominant strategic tension: Speed vs. Compliance. Demonstrates the single-agent CDO methodology end-to-end: friction map, service doctrine, USWDS-aligned digital redesign, Taxpayer Assistance Center translation, accessibility review against §508 / §504 / 21st Century IDEA Act / Plain Writing Act, sequenced roadmap, 12 success metrics.

  - `examples/fema-disaster-recovery-swarm.md` — full `SWARM.md` run against the FEMA Individual Assistance flow. Dominant strategic tension: Aesthetic Authority vs. Local Context. Exercises all ten agents (including the new Brand Architect Agent) with structured handoffs, ends with three currently-blocking red flags traced to Phase 1–2 fixes. The hardest archetype on purpose: low-bandwidth, displaced users, missing documents, language access, tribal sovereignty, and the Brand-vs-Democracy tension all live here.

• `hello-nds.html` — editorial-brutalist single-page promo / specimen for the package.

## Intended Use

Use this package when you want an agent to reason from the position of the Chief Design Officer responsible for the National Design Studio: transforming government websites, services, visual systems, and physical service environments under the America by Design initiative (Executive Order 14338, signed August 21, 2025; deadline July 4, 2026).

## What's New in 1.1.0

• **Mandate Frame** added to both `SKILL.md` and `SWARM.md` — cites EO 14338, the July 4, 2026 deadline, ~27,000 federal domains, USWDS as the canonical design system, and the Chief Brand Architect peer role.

• **Strategic Tensions** named explicitly (Speed vs. Compliance, Brand vs. Democracy, AI vs. Institutional Memory, Aesthetic Authority vs. Local Context, Private-Sector Talent vs. Conflict of Interest), with watch indicators in the KB.

• **7th doctrine pillar** added to `SKILL.md`: "Standardize without erasing local context."

• **Phase 3 (Design-System Alignment)** in `SKILL.md` now names USWDS, Section 508, Section 504, the 21st Century IDEA Act, the Plain Writing Act of 2010, and WCAG 2.0 AA explicitly.

• **Phase 5 (Physical-Digital Translation)** anchors examples in canonical agencies: SSA, IRS, USCIS, passport agencies, VA, FEMA.

• **Brand Architect Agent** added to the swarm as Agent #10.

• **Implementation Agent** now defines explicit measurement baselines.

• **Coordinator Agent** must name the dominant strategic tension and clear a red-flags checklist before the Launch Gate.

• **Launch Gate** expanded to cover all 10 KB Evaluation Criteria plus tension-naming and red-flag clearance.

• **NDS_KB.md** expanded with: Cited Legal Frameworks, watch indicators per tension, Measurement Baselines, Canonical Service Archetypes, AI Use Boundaries, and a Glossary.

## Important Guardrail

This package does not attempt to reproduce private thoughts, personal beliefs, or undisclosed strategy from Joe Gebbia. It models a public role, public mandate, and public design posture based on available research.
