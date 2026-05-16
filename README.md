# NDS-GEBBIA · Joe Gebbia Skill Suite

A Claude skill suite modeling three public roles **Joe Gebbia** has occupied — the **Chief Design Officer** of the National Design Studio under EO 14338, the **0-to-1 founder** of the Autonomous Venture Studio, and the **designer-technologist** behind spatial-motion and XR prototyping.

**Suite version:** 1.2.0 · **Status:** Draft · **License:** TBD

> Government services should feel modern, coherent, easy to use, and worthy of national confidence.

🎨 **Live specimen:** [augustave.github.io/NDS](https://augustave.github.io/NDS/)
📦 **Download:** [v1.2.0 release](https://github.com/augustave/NDS/releases/tag/v1.2.0) (zip)

---

## What this is

Three skills under one umbrella. Each one models a distinct public role. None of them impersonates Joe Gebbia as a private person. Each ships with its own doctrine, SWARM topology, and worked output examples.

## Skills in this suite

| # | Skill | Role facet | Domain | Internal version |
|---|---|---|---|---|
| 1 | [`joe-gebbia-nds-chief-design-officer`](./joe_gebbia_nds_skill_package/SKILL.md) | Civic CDO under EO 14338 | Public-sector service modernization | 1.1.0 |
| 2 | [`autonomous-venture-studio`](./joe_gebbia_nds_skill_package/autonomous-venture-studio/SKILL.md) | Founder / 0-to-1 | Private-sector venture incubation | 1.1.0 |
| 3 | [`spatial-motion-genai-architect`](./joe_gebbia_nds_skill_package/spatial-motion/SKILL.md) | Designer-technologist | R&D / XR / immersive prototyping | 1.1.0 |

Each skill keeps its own identity, doctrine, KB (if any), schema, and version. The suite-level coordinator document is [`SUITE.md`](./joe_gebbia_nds_skill_package/SUITE.md).

## When to use which

| If your work is… | Use |
|---|---|
| Modernizing a federal service or strategic document | **CDO skill** |
| Taking a 0-to-1 venture brief from concept to launch-ready | **Autonomous Venture Studio** |
| Producing an XR sandbox / motion narrative / immersive demo | **Spatial-Motion** |
| Crossing public + private + R&D boundaries in a single brief | **All three** — see [`SUITE.md`](./joe_gebbia_nds_skill_package/SUITE.md) |

## Worked examples

| Example | Skill(s) | What it shows |
|---|---|---|
| [IRS Payment Portal](./joe_gebbia_nds_skill_package/examples/irs-payment-portal-assessment.md) | CDO (SKILL.md) | Single-skill run · Speed vs. Compliance |
| [FEMA Disaster Recovery](./joe_gebbia_nds_skill_package/examples/fema-disaster-recovery-swarm.md) | CDO (SWARM.md) | 10-agent swarm · Aesthetic Authority vs. Local Context · 3 blocking red flags |
| [Passport Modernization](./joe_gebbia_nds_skill_package/examples/cross-skill-passport-modernization.md) | **All three** | Full suite chain · CDO → AVS → Spatial-Motion · named handoffs |
| [Document Redesigns →](./joe_gebbia_nds_skill_package/examples/document-redesigns/) | CDO | Redesigns of real federal documents · ONI Russian Navy 2015 (hydrographic aesthetic) · ODNI ATA 2025 (Wunderkammer aesthetic, **first Phase 4 service redesign**) |

## Core doctrine (CDO skill · 7 pillars)

These pillars belong to the CDO skill. AVS and Spatial-Motion carry their own doctrines.

1. **Make the government legible.** Where am I, what can I do, what's needed, what happens next, who is responsible.
2. **Cut useless friction. Keep necessary friction.** Remove duplicate forms, repeated logins, PDF-only flows. Preserve identity verification, fraud prevention, appeal rights.
3. **Design consistency is public infrastructure.** USWDS is not decoration.
4. **Design for the citizen under stress.** Retirement, taxes, disability, immigration, disaster recovery.
5. **Connect the screen to the room.** Digital flows must map to paper forms, signage, front-desk scripts, kiosks.
6. **AI as acceleration. Not authority.** AI does not adjudicate eligibility, certify accessibility, or replace human escalation.
7. **Standardize without erasing local context.** Tribal nations, rural/offline users, multilingual communities, disability-specific service lines.

## Cited frameworks (CDO skill)

Grounded in actual statute and standard. The CDO skill names these explicitly; it is not a substitute for legal counsel.

- **EO 14338** — "Improving Our Nation Through Better Design" (Aug 21, 2025)
- **Section 508 of the Rehabilitation Act** (2018 ICT Refresh, harmonized with WCAG 2.0 AA)
- **Section 504 of the Rehabilitation Act of 1973**
- **21st Century Integrated Digital Experience Act** (2018)
- **Plain Writing Act of 2010**
- **U.S. Web Design System (USWDS)**

## How to use this suite

| You want to… | Use |
|---|---|
| Run a quick advisory assessment of a federal service | Load CDO `SKILL.md`; reference `NDS_KB.md` |
| Do a full multi-disciplinary government service redesign | Load CDO `SWARM.md`; run 10-agent workflow |
| Incubate a 0-to-1 venture concept | Load `autonomous-venture-studio/SKILL.md`; run 3-node loop |
| Build a spatial / XR / motion prototype | Load `spatial-motion/SKILL.md`; run 4-cell workflow |
| Decide which skill applies | Read [`SUITE.md`](./joe_gebbia_nds_skill_package/SUITE.md) |
| See the full chain end-to-end | Read [Passport Modernization](./joe_gebbia_nds_skill_package/examples/cross-skill-passport-modernization.md) |
| Share the suite | Distribute the [v1.2.0 zip](https://github.com/augustave/NDS/releases/tag/v1.2.0) |

## Important guardrail

This suite does not attempt to reproduce private thoughts, personal beliefs, or undisclosed strategy from Joe Gebbia. It models **three public roles**, three public mandates, and three public design postures based on available research.

It is illustrative — not an official deliverable from the National Design Studio, the State Department, the Department of Defense, or any other agency. Not legal advice. Not a procurement recommendation.

## Repository

```
NDS/
├── README.md                                              ← you are here (suite-level)
├── index.html                                             redirect → promo specimen
├── joe_gebbia_nds_skill_package.zip                       v1.2.0 distributable
└── joe_gebbia_nds_skill_package/
    ├── README.md                                          package-level readme
    ├── SUITE.md                                           suite coordinator (decision flow)
    ├── SKILL.md                                           CDO single-agent skill
    ├── SWARM.md                                           CDO 10-agent orchestration
    ├── NDS_KB.md                                          CDO canonical knowledge base
    ├── hello-nds.html                                     editorial promo specimen
    ├── autonomous-venture-studio/                         AVS skill (peer)
    │   ├── SKILL.md
    │   ├── SWARM.md
    │   ├── PRD.yaml
    │   ├── common-schema.yaml
    │   ├── agents/
    │   ├── references/
    │   └── scripts/
    ├── spatial-motion/                                    Spatial-Motion skill (peer)
    │   ├── SKILL.md
    │   ├── SWARM.md
    │   ├── PRD.yaml
    │   └── common-schema.yaml
    └── examples/
        ├── irs-payment-portal-assessment.md               CDO single-skill run
        ├── fema-disaster-recovery-swarm.md                CDO swarm run
        └── cross-skill-passport-modernization.md          full suite chain (NEW)
```

---

*Three public roles. Three skills. One suite. Built for the NDS mandate, the founder posture, and the designer-technologist practice.*
