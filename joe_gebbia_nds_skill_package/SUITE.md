---
suite_name: NDS-GEBBIA · Joe Gebbia Skill Suite
suite_version: 1.2.0
status: active
canonical_reference: README.md
---

# Suite Coordinator

Three skills. One umbrella. Three public roles Joe Gebbia has occupied.

This document tells you **which skill to invoke when** — and how to chain them together when the work spans more than one role.

---

## The three skills

| # | Skill | Internal version | Role facet | Domain |
|---|---|---|---|---|
| 1 | [`joe-gebbia-nds-chief-design-officer`](./SKILL.md) | 1.1.0 | Civic CDO under EO 14338 | Public-sector service modernization |
| 2 | [`autonomous-venture-studio`](./autonomous-venture-studio/SKILL.md) | 1.1.0 | Founder / 0-to-1 | Private-sector venture incubation |
| 3 | [`spatial-motion-genai-architect`](./spatial-motion/SKILL.md) | 1.1.0 | Designer-technologist | R&D / XR / immersive prototyping |

Each skill has its own:
- Doctrine and methodology
- SWARM topology and phases
- `common-schema.yaml` for artifact structure
- `PRD.yaml` for ranked goals
- Risk register and failure modes

They do **not** share a KB. The CDO skill has `NDS_KB.md` (civic-specific). The other two carry their own context.

---

## Decision flow — which skill to invoke

### Single-skill triggers

| If your work is… | Use |
|---|---|
| Modernizing a federal service (website, form, office, queue) | **CDO skill** |
| Assessing a government interface against EO 14338 / USWDS / §508 | **CDO skill** |
| Auditing a strategic document for legibility, accessibility, plain language | **CDO skill** |
| Taking an ambiguous venture brief from concept to launch-ready | **Autonomous Venture Studio** |
| Designing a 0-to-1 product with paired market validation + product architecture + brand OS | **Autonomous Venture Studio** |
| Building an executive launch decision memo with risk tiering | **Autonomous Venture Studio** |
| Translating a complex technical system into an immersive prototype | **Spatial-Motion** |
| Producing an XR sandbox, motion narrative, or stakeholder demo reel | **Spatial-Motion** |
| Stress-testing a novel interaction paradigm (gaze, gesture, hand tracking) | **Spatial-Motion** |

### Multi-skill chains

There are three canonical chains where two or three skills hand off to each other. The handoff artifact is named explicitly in each case so the receiving skill knows what it is getting.

#### Chain A — Civic → XR demo
**When:** The CDO assessment recommends a service redesign and stakeholders need to *see* it, not just read it.

```
CDO skill                    →    Spatial-Motion
└── executive_synthesis.md   →    technical_system_data + spatial_interaction_spec
                                  └── immersive demo package (.toe, Unity sandbox, MP4 reel)
```

#### Chain B — Civic → Venture
**When:** The CDO assessment identifies a new digital service line that doesn't exist yet inside any agency and needs 0-to-1 incubation as a standalone capability.

```
CDO skill                    →    Autonomous Venture Studio
└── executive_synthesis.md   →    founder_brief
    + recommended new        →    └── market_requirement.yaml
      service-line scope          └── product_architecture (domain + ER + state machine)
                                  └── brand_operating_system
                                  └── executive_launch_decision_memo
```

#### Chain C — Civic → Venture → XR demo (the full chain)
**When:** A new federal service line needs to be incubated *and* demoed for OMB / agency-leadership / Congressional review.

```
CDO skill          →    Autonomous Venture Studio    →    Spatial-Motion
executive_brief    →    founder_brief                →    technical_system_data
                        └── launch_decision_memo     →    + spatial_interaction_spec
                                                          └── immersive demo package
```

This chain is illustrated end-to-end in [`examples/cross-skill-passport-modernization.md`](./examples/cross-skill-passport-modernization.md).

---

## Handoff protocol

Each cross-skill handoff must include:

```yaml
handoff:
  from_skill: ""               # e.g. "joe-gebbia-nds-chief-design-officer"
  to_skill: ""                 # e.g. "autonomous-venture-studio"
  artifact: ""                 # name of the produced artifact (executive_synthesis.md)
  decision_needed: ""          # what the receiving skill must decide
  assumptions: []              # what the sending skill assumed
  open_risks: []               # what the sending skill could not resolve
  next_action: ""              # one-line direction to the receiving skill
```

The receiving skill validates the handoff against its own input schema before starting work. If the artifact does not satisfy required inputs, the receiving skill returns a `handoff_rejected` and names the missing fields.

---

## What is *not* shared across the suite

- **No shared doctrine.** Each skill has its own pillars. The CDO has 7. AVS has 8 Founder Rules. Spatial-Motion has 3 invariants (Scrappy R&D, Input Shift, Prototype Honesty).
- **No shared swarm.** The CDO has 10 agents. AVS has 3 nodes. Spatial-Motion has 4 cells. They do not commingle.
- **No shared KB.** `NDS_KB.md` is civic-specific. AVS and Spatial-Motion carry context inside their own files.
- **No shared launch gate.** Each skill defines its own gate criteria appropriate to its risk profile.

This is deliberate. Forcing a unified doctrine across civic + venture + R&D would weaken all three.

---

## What *is* shared across the suite

- **Structure.** All three follow `SKILL.md` / `SWARM.md` / `PRD.yaml` / `common-schema.yaml`.
- **Methodology.** Swarm-with-gates. Named handoffs. Explicit failure modes. Solo-founder execution mode documented in each.
- **Version cadence.** All three at internal v1.1.0 at suite launch. Suite version 1.2.0 reflects the bundling.
- **Public-role framing.** Each skill models a public Gebbia role; none impersonates the private person.

---

## When to use the suite as a whole

Use the full suite when the work crosses public + private + R&D boundaries — which is rare but real. The passport-modernization example is the canonical illustration: a federal service that today is paper-and-counter, that needs CDO-level assessment, that requires a 0-to-1 venture-studio capability to stand up the digital service line, and that benefits from a spatial-motion demo for stakeholder buy-in.

Most single tasks need only one skill. The chains exist for the cases where they don't.

---

## Suite changelog

### v1.2.0 (suite)
- Added `autonomous-venture-studio` as peer skill #2
- Added `spatial-motion-genai-architect` as peer skill #3
- Added `SUITE.md` (this file) as the decision-flow coordinator
- Added cross-skill worked example: `examples/cross-skill-passport-modernization.md`
- Added "Related skills in this suite" footer to each `SKILL.md`
- Top-level README and package README repositioned as suite-level documents

### v1.1.0 (prior — CDO skill only)
- See [`joe_gebbia_nds_skill_package/README.md`](./README.md) §What's New in 1.1.0
