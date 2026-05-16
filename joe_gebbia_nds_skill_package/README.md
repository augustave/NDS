# Joe Gebbia Skill Suite

**Suite version 1.2.0** — This package turns three facets of Joe Gebbia's public roles into operational agent documentation: civic Chief Design Officer (NDS), founder of an autonomous venture studio, and designer-technologist in spatial-motion / XR.

## Skill index

| Skill | Internal version | Role | Swarm size | Output |
|---|---|---|---|---|
| [`joe-gebbia-nds-chief-design-officer`](./SKILL.md) | 1.1.0 | Civic CDO | 10 agents | Executive design assessment / swarm modernization report |
| [`autonomous-venture-studio`](./autonomous-venture-studio/SKILL.md) | 1.1.0 | 0-to-1 founder | 3 nodes | Market requirement → product architecture → brand OS → launch decision memo |
| [`spatial-motion-genai-architect`](./spatial-motion/SKILL.md) | 1.1.0 | Designer-technologist | 4 cells | Immersive demo package (concept reel, TouchDesigner network, Unity sandbox) |

**Suite coordinator:** [`SUITE.md`](./SUITE.md) — when to invoke which skill, multi-skill chains, handoff protocol.

## Files

### Suite-level
- `README.md` — this file
- `SUITE.md` — decision flow + handoff protocol + cross-skill chains

### CDO skill (lead)
- `SKILL.md` — single-agent CDO skill (7 pillars, 7 phases)
- `SWARM.md` — 10-agent orchestration with 14-criterion launch gate
- `NDS_KB.md` — canonical knowledge base (civic-specific; not shared across the suite)
- `hello-nds.html` — editorial-brutalist promo specimen

### AVS skill
- `autonomous-venture-studio/` — `SKILL.md` · `SWARM.md` · `PRD.yaml` · `common-schema.yaml` · `agents/` · `references/` · `scripts/`

### Spatial-Motion skill
- `spatial-motion/` — `SKILL.md` · `SWARM.md` · `PRD.yaml` · `common-schema.yaml`

### Worked examples
- `examples/irs-payment-portal-assessment.md` — CDO `SKILL.md` run · Speed vs. Compliance · 12 success metrics
- `examples/fema-disaster-recovery-swarm.md` — CDO `SWARM.md` run · Aesthetic Authority vs. Local Context · 3 blocking red flags
- `examples/cross-skill-passport-modernization.md` — full suite chain · CDO → AVS → Spatial-Motion · all three handoffs named

## Intended use

Use this suite when you want an agent to reason from one of three public Gebbia roles:

- **CDO skill** — transforming government websites, services, visual systems, and physical service environments under EO 14338 (signed Aug 21, 2025; deadline July 4, 2026)
- **Autonomous Venture Studio** — turning ambiguous 0-to-1 venture briefs into validated venture concepts in 4–6 weeks
- **Spatial-Motion** — translating complex technical systems into immersive XR / motion prototypes in 5–7 days

Most tasks need only one skill. For tasks spanning public + private + R&D boundaries, see [`SUITE.md`](./SUITE.md) for the canonical chains.

## What's new in 1.2.0

- **Two new peer skills** added: `autonomous-venture-studio` (founder / 0-to-1) and `spatial-motion-genai-architect` (designer-technologist / XR)
- **`SUITE.md`** added at package root — decision flow, multi-skill chains, handoff protocol
- **Cross-skill worked example** added: `examples/cross-skill-passport-modernization.md` — full CDO → AVS → Spatial-Motion chain
- **Top-level and package-level READMEs** repositioned as suite documents
- **"Related skills in this suite"** footer added to each `SKILL.md`
- **No breaking changes** to the v1.1.0 CDO skill, SWARM, KB, worked examples, or `hello-nds.html`

The internal versions of the three skills remain at v1.1.0. The suite version reflects the bundling.

## What's new in 1.1.0 (CDO skill only — prior release)

- **Mandate Frame** added to both `SKILL.md` and `SWARM.md` — cites EO 14338, the July 4, 2026 deadline, ~27,000 federal domains, USWDS as the canonical design system, and the Chief Brand Architect peer role.
- **Strategic Tensions** named explicitly (Speed vs. Compliance, Brand vs. Democracy, AI vs. Institutional Memory, Aesthetic Authority vs. Local Context, Private-Sector Talent vs. Conflict of Interest), with watch indicators in the KB.
- **7th doctrine pillar** added to `SKILL.md`: "Standardize without erasing local context."
- **Phase 3 (Design-System Alignment)** in `SKILL.md` now names USWDS, Section 508, Section 504, the 21st Century IDEA Act, the Plain Writing Act of 2010, and WCAG 2.0 AA explicitly.
- **Phase 5 (Physical-Digital Translation)** anchors examples in canonical agencies: SSA, IRS, USCIS, passport agencies, VA, FEMA.
- **Brand Architect Agent** added to the swarm as Agent #10.
- **Implementation Agent** now defines explicit measurement baselines.
- **Coordinator Agent** must name the dominant strategic tension and clear a red-flags checklist before the Launch Gate.
- **Launch Gate** expanded to cover all 10 KB Evaluation Criteria plus tension-naming and red-flag clearance.
- **NDS_KB.md** expanded with: Cited Legal Frameworks, watch indicators per tension, Measurement Baselines, Canonical Service Archetypes, AI Use Boundaries, and a Glossary.

## Important guardrail

This suite does not attempt to reproduce private thoughts, personal beliefs, or undisclosed strategy from Joe Gebbia. It models **public roles**, public mandates, and public design postures based on available research.

Each worked example is illustrative — not an official deliverable, not legal advice, not a procurement recommendation.
