# NDS-GEBBIA

A Claude skill package modeling the public role of **Joe Gebbia as Chief Design Officer** of the **National Design Studio (NDS)** — operating under **Executive Order 14338** ("Improving Our Nation Through Better Design," signed August 21, 2025) toward the **July 4, 2026** deadline for visible federal-service modernization.

**Version:** 1.1.0 · **Status:** Draft · **License:** TBD

> Government services should feel modern, coherent, easy to use, and worthy of national confidence.

🎨 **Live specimen:** [augustave.github.io/NDS](https://augustave.github.io/NDS/)
📦 **Download:** [v1.1.0 release](https://github.com/augustave/NDS/releases/tag/v1.1.0) (zip, 51 KB)

---

## What this is

A three-file skill package, plus worked examples and an editorial promo page, that turns the *America by Design* research base into operational agent documentation.

It does not impersonate Joe Gebbia as a private person. It models the **public role** — a private-sector founder-designer applying product design, hospitality thinking, design systems, and operational speed to federal services.

## Package contents

All files live under [`joe_gebbia_nds_skill_package/`](./joe_gebbia_nds_skill_package/).

| File | Purpose |
|---|---|
| [`SKILL.md`](./joe_gebbia_nds_skill_package/SKILL.md) | Single-agent CDO skill. 7 doctrine pillars, 7-phase methodology, response template. |
| [`SWARM.md`](./joe_gebbia_nds_skill_package/SWARM.md) | Multi-agent orchestration. 10 agents, parallel diagnosis + redesign sprint, 14-criterion launch gate. |
| [`NDS_KB.md`](./joe_gebbia_nds_skill_package/NDS_KB.md) | Canonical knowledge base. Cited legal frameworks, strategic tensions with watch indicators, measurement baselines, canonical service archetypes, AI use boundaries, glossary. |
| [`README.md`](./joe_gebbia_nds_skill_package/README.md) | Package-level readme with full changelog. |
| [`hello-nds.html`](./joe_gebbia_nds_skill_package/hello-nds.html) | Editorial-brutalist single-page promo specimen. |

## Worked examples

The package ships with two end-to-end demonstrations against canonical service archetypes from the KB. **Read these first** to see what the skill actually produces.

| Example | Skill | Dominant tension | What it shows |
|---|---|---|---|
| [IRS Payment Portal](./joe_gebbia_nds_skill_package/examples/irs-payment-portal-assessment.md) | `SKILL.md` | Speed vs. Compliance | Friction map, USWDS-aligned digital redesign, Taxpayer Assistance Center translation, §508 / §504 / 21st Century IDEA Act / Plain Writing Act review, 12 success metrics |
| [FEMA Disaster Recovery](./joe_gebbia_nds_skill_package/examples/fema-disaster-recovery-swarm.md) | `SWARM.md` | Aesthetic Authority vs. Local Context | All 10 agents with structured handoffs; ends with 3 blocking red flags traced to Phase 1–2 fixes. The hardest archetype on purpose. |

## Core doctrine (7 pillars)

1. **Make the government legible.** Where am I, what can I do, what's needed, what happens next, who is responsible.
2. **Cut useless friction. Keep necessary friction.** Remove duplicate forms, repeated logins, PDF-only flows. Preserve identity verification, fraud prevention, appeal rights.
3. **Design consistency is public infrastructure.** USWDS is not decoration.
4. **Design for the citizen under stress.** Retirement, taxes, disability, immigration, disaster recovery.
5. **Connect the screen to the room.** Digital flows must map to paper forms, signage, front-desk scripts, kiosks.
6. **AI as acceleration. Not authority.** AI does not adjudicate eligibility, certify accessibility, or replace human escalation.
7. **Standardize without erasing local context.** Tribal nations, rural/offline users, multilingual communities, disability-specific service lines.

## Five strategic tensions

Every assessment names which of these is dominant. Watch indicators in [`NDS_KB.md`](./joe_gebbia_nds_skill_package/NDS_KB.md).

1. **Speed vs. Compliance**
2. **Brand vs. Democracy**
3. **AI Acceleration vs. Institutional Memory**
4. **Aesthetic Authority vs. Local Context**
5. **Private-Sector Talent vs. Conflict of Interest**

## The swarm (10 agents)

`SWARM.md` decomposes a full-service redesign across:

| # | Agent | Output |
|---|---|---|
| 1 | Coordinator (CDO / Studio Lead) | `executive_synthesis.md` |
| 2 | Civic Research | `research_brief.md` |
| 3 | Service Blueprint | `service_blueprint.md` |
| 4 | Design System | `design_system_gap_analysis.md` |
| 5 | Accessibility (§508 / WCAG 2.0 AA) | `accessibility_review.md` |
| 6 | Physical Environment | `physical_touchpoint_blueprint.md` |
| 7 | Policy & Risk | `risk_register.md` |
| 8 | Implementation | `implementation_roadmap.md` |
| 9 | Communications | `communications_packet.md` |
| 10 | **Brand Architect** *(new in 1.1.0)* | `brand_system_brief.md` |

## Cited frameworks

Grounded in actual statute and standard. The skill names these explicitly; it is not a substitute for legal counsel.

- **EO 14338** — "Improving Our Nation Through Better Design" (Aug 21, 2025)
- **Section 508 of the Rehabilitation Act** (2018 ICT Refresh, harmonized with WCAG 2.0 AA)
- **Section 504 of the Rehabilitation Act of 1973**
- **21st Century Integrated Digital Experience Act** (2018)
- **Plain Writing Act of 2010**
- **U.S. Web Design System (USWDS)**

## How to use this package

| You want to… | Use |
|---|---|
| Run a quick advisory assessment of a federal service | Load `SKILL.md` as system prompt; reference `NDS_KB.md` |
| Do a full multi-disciplinary service redesign | Load `SWARM.md`; run the 10-agent workflow with structured handoffs |
| Understand the operating context before doing anything | Read `NDS_KB.md` |
| See what the skill actually produces | Read the [worked examples](./joe_gebbia_nds_skill_package/examples/) |
| Share the package | Distribute the [v1.1.0 zip](https://github.com/augustave/NDS/releases/tag/v1.1.0) |

## Important guardrail

This package does not attempt to reproduce private thoughts, personal beliefs, or undisclosed strategy from Joe Gebbia. It models a **public role**, a **public mandate**, and a **public design posture** based on available research.

It is illustrative — not an official NDS deliverable, not legal advice, and not a procurement recommendation.

## Repository

```
NDS/
├── README.md                                          ← you are here
├── index.html                                         redirect → promo specimen
├── joe_gebbia_nds_skill_package.zip                   v1.1.0 distributable
└── joe_gebbia_nds_skill_package/
    ├── README.md                                      package-level readme + changelog
    ├── SKILL.md                                       single-agent CDO skill
    ├── SWARM.md                                       10-agent orchestration
    ├── NDS_KB.md                                      canonical knowledge base
    ├── hello-nds.html                                 editorial promo specimen
    └── examples/
        ├── irs-payment-portal-assessment.md           SKILL.md worked run
        └── fema-disaster-recovery-swarm.md            SWARM.md worked run
```

---

*Built for the National Design Studio mandate. Operating under EO 14338. Aimed at July 4, 2026.*
