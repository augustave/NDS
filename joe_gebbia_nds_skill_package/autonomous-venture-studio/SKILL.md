---
name: autonomous-venture-studio
version: "1.1"
owner: venture-studio-ops
status: active
domain_tags:
  - venture-design
  - 0-to-1-products
  - product-strategy
  - brand-systems
  - ai-governance
  - defense-tech
  - frontier-tech
risk_level: medium
intent: >
  Run a three-node venture design loop (market validation → product architecture → brand system → narrative alignment)
  that turns ambiguous market signals into a coherent, launchable venture concept in 4–6 weeks.
when_to_use: >
  Use for ambiguous 0-to-1 venture briefs that need validated market requirements, product structure,
  brand direction, and executive-ready narrative at the same time.
  Best for solo founders building defense, autonomous, or frontier-tech products where incoherence kills credibility.
when_not_to_use: >
  Do not use for narrow, single-discipline requests (isolated visual design, bug fixes, feature refinement).
  Do not use when product direction is already locked and only execution work remains.
  Do not use for venture concepts that lack a clear founder, market signal, or user to validate against.
---

# Autonomous Venture Studio

## Purpose

This skill compresses the typical 6-month studio process (sequential handoffs, rework cycles, coordination overhead) into 4–6 weeks by enforcing upfront validation, system-first design, and tight feedback loops.

The output is not a finished product or launch campaign. It is a **validated venture concept** ready for engineering and go-to-market execution: a market requirement with proven pain, a product architecture that founders can code from, a brand system that marketing can execute, and an executive narrative that investors and customers can trust.

---

## Start Here

1. **For the executive overview and ranked goals:** Read [PRD.yaml](PRD.yaml)
2. **For shared data structures and validation rules:** Read [common-schema.yaml](common-schema.yaml)
3. **For the three-node swarm topology, phases, and gates:** Read [SWARM.md](SWARM.md)
4. **For the detailed playbook of each node (Strategic Narrative Operator, Product Foundry Architect, Brand Experience Sovereign):**
   - [references/nodes/strategic-narrative-operator.md](references/nodes/strategic-narrative-operator.md)
   - [references/nodes/product-foundry-architect.md](references/nodes/product-foundry-architect.md)
   - [references/nodes/brand-experience-sovereign.md](references/nodes/brand-experience-sovereign.md)

---

## Assumptions

- **Founder-driven:** You are the founder or product owner with decision authority. The skill advises; you decide.
- **Market signals exist:** You have a problem hypothesis, initial user contact, or market research indicating demand. Not starting from blank whiteboard.
- **Time-boxed execution:** You are willing to scope phases (4–6 weeks total, strict per-phase timelines) over perfectionism.
- **Evidence-based:** You accept that validation comes from users/market, not from internal consensus or stakeholder voting.
- **Venture-stage fit:** You are operating at pre-seed, seed, or Series A. (Enterprise innovation teams may adapt but should scope governance heavier.)

---

## Inputs

- **Founder brief:** Problem statement, target users, technical constraints, organizational context, funding stage.
- **Domain constraints:** Regulatory requirements, technical platform limits, operational dependencies.
- **Stakeholder goals:** What success means to investors, co-founders, advisors (if applicable).
- **Existing artifacts (optional):** Rough mockups, competitive analysis, market research, user research, technical POCs.

---

## Outputs

1. **Validated Market Requirement** (Phase I) — Pain statement, user segments, minimum utility, success criteria, evidence trail.
2. **Product Architecture** (Phase II) — Domain model, entity-relationship schema, service boundaries, workflow state machine, interactive prototype (core loop).
3. **Brand Operating System** (Phase III) — Visual identity tokens, verbal identity system, motion language, campaign architecture.
4. **Executive Launch Decision Memo** (Phase IV) — Risk-tiered go/no-go, narrative claims mapped to product mechanics, governance evidence vault, handoff conditions.

---

## Core Principles

1. **Validation Before Build** – No serious engineering effort on directions without documented user pain and ≥2 independent confirmations.

2. **System First, Screens Second** – Entity model and state machine before high-fidelity mockups. ER diagram before interaction flows.

3. **Truth Over Narrative** – Every executive claim must map to product mechanics or a named, mitigated risk. Narrative may elevate reality but must not contradict it.

4. **Reject Generic SaaS** – Frontier-tech products demand distinctive identity. If the brand feels generic, rework the aesthetic thesis before launch.

5. **Governance as Product Feature** – Risk controls and audit trails are embedded in workflows, not bolted on. Autonomous systems must have rollback paths and audit logs.

6. **Evidence is Currency** – Every claim (pain, capability, risk) is tracked with source quality (primary/secondary/tertiary) and confidence level (high/medium/low). Unvalidated hypotheses are documented as such.

7. **Phase Gates Are Mandatory** – Do not skip verification gates. Rework is cheaper upstream than post-launch.

8. **Solo Founder Feasible** – All outputs assume execution by one founder or small team. If an artifact requires a 10-person team, simplify or descope.

---

## Execution Steps

### Phase I: Market Requirement Validation (Owner: Strategic Narrative Operator)

**Duration:** 1–2 weeks

**Inputs:**
- Founder brief, problem hypothesis, initial user contact list

**Steps:**
1. Extract pain statement and user segments from founder language.
2. Run simulated user interviews (or live interviews if available). Document pain evidence.
3. Define target user segment: role, frequency of pain, willingness to pay.
4. Specify minimum useful outcome (smallest solution that solves pain; avoid feature sprawl).
5. Identify constraints (regulatory, technical, organizational, funding).
6. Define success criteria (how we measure venture success; e.g., "user completes core task in <5 min with zero errors").
7. Log all evidence sources: source quality (primary/secondary/tertiary) and confidence level (high/medium/low/unvalidated).

**Gate:** `market_truth_gate`
- Pain statement backed by ≥2 independent user confirmations.
- User segment clearly scoped (not "everyone").
- Minimum utility is specific, not aspirational.
- Constraints explicitly named.
- Success criteria are measurable.

**Output:** Market Requirement YAML (common-schema.yaml: "Market Requirement" template)

---

### Phase II: Product Architecture & Prototype (Owner: Product Foundry Architect)

**Duration:** 1–2 weeks

**Inputs:**
- Validated market requirement from Phase I

**Steps:**
1. Ingest market requirement from SNO. Clarify scope and constraints.
2. Define domain model: major entities (e.g., Task, User, Sensor, Audit Log), attributes, relationships, lifecycle.
3. Specify entity-relationship schema: normalized, explicit about permissions (CRUD per role), primary/foreign keys.
4. Map service boundaries: what data/operations are owned by each service. Define interface contracts.
5. Define workflow state machine: states, entry/exit conditions, guards, timeouts, failure paths.
6. Specify data integrity rules: uniqueness, temporal ordering, cascading deletes, consistency guarantees.
7. Build interactive prototype (core loop): happy path end-to-end with real schema-matched data. Not high-fidelity, but data-accurate.
8. Document edge cases and error paths (not built, but named and prioritized).

**Gate:** `systems_truth_gate`
- Domain model defines all major entities and lifecycle.
- ER schema is explicit about permissions (no assumed single-user).
- Service boundaries are drawn.
- State machine is complete (entry/exit/guards/timeouts/failure paths).
- Prototype runs core loop with real data shapes.
- Edge cases documented.

**Output:**
- domain-model.yaml
- er-schema.yaml
- service-boundaries.md
- workflow-state-machine.yaml
- prototype-interactive (Figma or code, with schema-matched data)

---

### Phase III: Brand Operating System (Owner: Brand Experience Sovereign)

**Duration:** 1–2 weeks

**Inputs:**
- Product prototype and architecture from Phase II
- Market positioning and constraints from Phase I

**Steps:**
1. Ingest prototype and product architecture. Understand actual capabilities and constraints.
2. Define brand position: aesthetic thesis. What sets this apart from generic SaaS or direct competitors? (e.g., "Brutalism over glassmorphism", "AI safety-obsessed minimalism").
3. Build visual identity system: color tokens (with WCAG accessibility checks), typography rules, spacing scale, imagery language.
4. Define verbal identity: brand voice and tone examples. When to use formal vs conversational. How to explain technical concepts to non-technical users.
5. Construct motion language: transition easing, animation intent (e.g., "reveal information sequentially, not all at once"), feedback rules.
6. Design campaign architecture: teaser → reveal → education → conversion → sustain phases. Map to product milestones (onboarding → adoption → retention).
7. Specify 3D asset language (if applicable): asset style, color grading, motion intent.
8. Validate: no campaign claim implies product depth that doesn't exist in prototype.

**Gate:** `aesthetic_coherence_gate`
- Brand tokens (color, type, motion) have clear usage rules, not cosmetic.
- Verbal identity includes tone examples, not just voice statements.
- Motion language governs interaction behavior.
- Campaign architecture is phased and maps to product milestones.
- No WCAG accessibility violations.
- No fictional product depth implied in campaign.

**Output:**
- brand-tokens.yaml (color, type, spacing, motion, 3D, tone)
- verbal-identity.md (voice, tone, examples)
- motion-language.md (easing, animation intent, interaction rules)
- campaign-architecture.yaml (phases, channels, KPIs, artifacts)

---

### Phase IV: Executive Launch Decision (Owner: Strategic Narrative Operator)

**Duration:** 1 week

**Inputs:**
- Product architecture and prototype from Phase II
- Brand operating system from Phase III
- Market requirement from Phase I

**Steps:**
1. Ingest product and brand outputs. Cross-check coherence.
2. Build executive narrative: translate product mechanics and brand identity into business story (growth, ops, cost leverage, strategic value).
3. Map every major narrative claim to product mechanic or named risk control.
4. Validate brand claims against actual prototype depth. Flag fictional capabilities.
5. Identify and tier all material risks: unacceptable (venture blocker), high (must mitigate), transparency (disclose to customers/investors), minimal (monitor).
6. Build governance evidence vault: decision logs, approvals, risk tier rationales, override trails, rollback paths (for autonomous workflows).
7. Issue launch decision memo: go/no-go with specific conditions, dependencies, handoff instructions.

**Gate:** `launch_readiness_gate`
- All narrative claims map to product mechanics or named risks.
- Product and brand are coherent (no fictional depth).
- Risk register is complete (≥5 major risks identified and tiered).
- Governance evidence vault is ready for audit.
- Go/no-go decision is clear.

**Output:**
- launch-decision-memo.md (narrative, risk summary, go/no-go, conditions)
- risk-register.yaml (all major risks, severity, likelihood, mitigation)
- governance-evidence-vault.yaml (decision logs, approvals, rollback paths)
- handoff-playbook.md (what founder does next: engineering priorities, launch sequence, success metrics)

---

## Verification

Each phase ends with a mandatory gate review. If gate criteria are not met, rework the phase before proceeding.

**Do not proceed Phase I → II if market requirement is unvalidated.**
**Do not proceed Phase II → III if product architecture is incomplete or speculative.**
**Do not proceed Phase III → IV if brand and product are incoherent.**
**Do not launch if narrative claims exceed product evidence.**

---

## Failure Modes

| Mode | Signal | Recovery |
|------|--------|----------|
| **Unvalidated Scope Creep** | Market requirement keeps expanding; no clear minimum utility. | Descope to single user segment, single workflow. Return to Phase I, tighten definition. |
| **Architecture Debt** | Product design lacks permission model, state machine, or service boundaries. | Rebuild Phase II from ER schema, not from UI mockups. Accept slower pace; correctness over speed. |
| **Brand Genericness** | Brand system looks like other SaaS platforms; no distinctive identity. | Rework brand thesis in Phase III. Reject corporate defaults. Name the aesthetic enemy (what you're rejecting). |
| **Narrative Overreach** | Executive claims exceed product capability (e.g., "AI-powered insights" but product is threshold logic). | Rework narrative to align to actual mechanics. Add risk disclosure. Or descope product and redo Phase II. |
| **Governance Theater** | Risk register written but not embedded in product workflows. Audit logs designed but not built. | Redesign governance as product feature (e.g., approval queues, audit logs, rollback buttons). Make it observable in prototype. |
| **Coherence Collapse** | Product, brand, and narrative have drifted apart by Phase IV. Major rework needed. | This is why gates exist. If Phase III gate was tight, Phase IV should be fast. If not, you skipped validation in earlier phases. |
| **Solo Founder Overload** | Output assumes 10-person team. Founder cannot execute in 6 weeks. | Descope. Prioritize core loop over completeness. Remove non-essential artifacts (e.g., full 3D asset library, comprehensive competitor analysis). |

---

## Ports

### Input Ports
- **founder_brief** (markdown) – Problem statement, users, constraints, goals
- **user_research** (interview transcripts, survey results, usage logs) – Validation evidence for pain
- **technical_spec** (optional code, architecture diagram, platform constraints) – Scope Phase II
- **market_research** (optional competitive analysis, TAM/SAM, industry trends) – Context for Phase I

### Output Ports
- **market_requirement** (YAML) – Phase I artifact for engineering prioritization
- **product_architecture** (YAML + prototype) – Phase II artifact for engineering kickoff
- **brand_system** (YAML + Figma tokens export) – Phase III artifact for design system implementation
- **launch_decision** (markdown + YAML) – Phase IV artifact for founder, investors, go-to-market team

### Reference Ports
- See [references/nodes/](references/nodes/) for detailed node playbooks
- See [references/legacy/](references/legacy/) for historical context (optional reading)
- See [scripts/run_swarm.sh](scripts/run_swarm.sh) for local workflow orchestration (illustration only, not the skill definition)


---

## Related skills in this suite

This skill is one of three in the **NDS-GEBBIA Joe Gebbia Skill Suite** (v1.2.0). See [`../SUITE.md`](../SUITE.md) for the full decision flow and handoff protocol.

- **[`joe-gebbia-nds-chief-design-officer`](../SKILL.md)** — Civic CDO under EO 14338. Often the *upstream* of an AVS engagement: when a CDO assessment identifies a new digital service line that does not exist inside any agency and needs 0-to-1 incubation as a standalone capability. Handoff artifact received: `executive_synthesis.md` (CDO) → `founder_brief` (this skill).

- **[`spatial-motion-genai-architect`](../spatial-motion/SKILL.md)** — XR / immersive prototyping skill. Often the *downstream* of an AVS engagement: when the launch decision memo requires an immersive demo for OMB / agency-leadership / investor review. Handoff artifact produced: `executive_launch_decision_memo.md` + `product_architecture` (this skill) → `technical_system_data` + `spatial_interaction_spec` (Spatial-Motion).

For a worked end-to-end chain across all three skills, see [`../examples/cross-skill-passport-modernization.md`](../examples/cross-skill-passport-modernization.md).
