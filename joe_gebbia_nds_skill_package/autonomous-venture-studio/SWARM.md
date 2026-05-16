---
name: "autonomous-venture-studio"
version: "1.1"
owner: "venture-studio-ops"
status: active
topology: "three-node loop with sequential phases"
domain_tags:
  - "venture-design"
  - "product-strategy"
  - "brand-systems"
  - "ai-governance"
  - "b2b-saas"
  - "frontier-tech"
risk_level: "medium"
mission: |
  Turn ambiguous market signals into a validated venture concept (market requirement + product architecture + brand system + executive narrative)
  in 4–6 weeks for solo founders building defense, autonomous, and frontier-tech products.

cells:
  - name: "Strategic Narrative Operator"
    id: "SNO"
    role: "synthesizer"
    intent: "Frame market requirement, govern autonomous systems, align narrative to product reality."
    phase_responsibility:
      - "Phase I: Convert founder brief to validated market requirement (pain, users, utility, success criteria)."
      - "Phase IV: Cross-check product, brand, and narrative. Issue launch decision memo with risk tiering."
    domain_tags: ["venture-strategy", "executive-narrative", "ai-governance", "risk-management"]
    verification_gates:
      - "market_truth_gate: Every major user pain claim backed by evidence (primary source, ≥2 confirmations)."
      - "governance_gate: Risk register complete, severity tiers assigned, evidence vault ready for audit."
      - "launch_readiness_gate: Product, brand, narrative aligned. No fictional capabilities in campaign. Go/no-go decision issued."

  - name: "Product Foundry Architect"
    id: "PFA"
    role: "builder"
    intent: "Translate validated market requirement into domain model, entity schema, workflow state machine, and prototype."
    phase_responsibility:
      - "Phase II: Take market requirement from SNO. Build domain model, ER schema, service boundaries, workflow states. Deliver interactive prototype."
    domain_tags: ["product-design", "systems-engineering", "b2b-saas", "domain-driven-design"]
    verification_gates:
      - "market_truth_gate: Pain and utility confirmed. Feature demands aligned to validated market requirement."
      - "systems_truth_gate: Entity model, permissions, states, and boundaries explicit. Prototype data logic matches schema."
      - "utility_gate: Core loop prototype runs end-to-end. Happy path complete. Edge cases documented."

  - name: "Brand Experience Sovereign"
    id: "BES"
    role: "visionary"
    intent: "Construct aesthetic system, voice, motion language, and go-to-market campaign architecture as a coherent operating system."
    phase_responsibility:
      - "Phase III: Take prototype and product architecture from PFA. Design brand tokens (color, type, motion, 3D), verbal identity, and campaign phases."
    domain_tags: ["brand-systems", "visual-design", "motion-design", "product-marketing", "campaign-architecture"]
    verification_gates:
      - "aesthetic_coherence_gate: Visual identity and campaign share design DNA. Brand rules are enforceable, not cosmetic."
      - "narrative_visual_match_gate: Campaign claims align to prototype capability. No fictional depth implied by visuals."

crosscut_functions:
  - name: "Validation and Evidence"
    owner: "SNO"
    inputs: ["raw_user_feedback", "prototype_interactions", "stakeholder_signals"]
    outputs: ["evidence_vault", "confidence_scores", "unvalidated_hypotheses"]
    description: |
      Every artifact (market requirement, product claim, brand assertion, narrative statement) must be backed by evidence.
      Tracks source quality (primary/secondary/tertiary/untested) and confidence level (high/medium/low/unvalidated).
      Ensures narrative never claims confidence above the evidence backing it.

  - name: "Governance and Risk Management"
    owner: "SNO"
    inputs: ["product_architecture", "brand_campaign", "autonomous_workflow_specs"]
    outputs: ["risk_register", "governance_evidence_vault", "rollback_paths"]
    description: |
      Identify and tier all major risks (unacceptable/high/transparency/minimal).
      For autonomous systems: enforce audit logs, approval queues, and rollback procedures.
      For all ventures: tie governance controls into product workflows, not bolted on.

  - name: "Phase Gate Reviews"
    owner: "SNO"
    inputs: ["phase_artifacts", "verification_checklist"]
    outputs: ["gate_pass_decision", "rework_requests", "blockers"]
    description: |
      Mandatory review at each phase exit (I → II → III → IV).
      Prevents proceeding to next phase without certification from previous owner.
      Includes explicit blockers (required to pass) and improvement notes (nice-to-have).

  - name: "Coherence Checking"
    owner: "SNO"
    inputs: ["market_requirement", "product_prototype", "brand_system", "executive_narrative"]
    outputs: ["alignment_report", "contradiction_log", "rework_map"]
    description: |
      Cross-checks product truth against brand positioning (no fictional capabilities).
      Ensures every narrative claim maps to product mechanics or a named risk control.
      Validates that brand tokens (color, motion, tone) support product UI and campaign both.

---

# Autonomous Venture Studio Swarm

## Summary
A three-node venture design loop optimized for solo founders building 0-to-1 ventures in frontier tech, defense, and autonomous systems. The loop runs sequentially (Phase I → II → III → IV) with mandatory verification gates between each phase. Each node has explicit responsibility for one discipline (narrative/market, product/systems, brand/aesthetics) but operates under shared governance, evidence standards, and validation rules.

The skill compresses what normally takes a studio team 6+ months (sequential hand-offs, rework cycles, coordination overhead) into 4–6 weeks by enforcing upfront validation, system-first design, and tight feedback loops within phases.

---

## Operating Thesis

Most early-stage ventures fail at coherence: product, brand, and narrative evolve in isolation. By the time a founder launches, the product doesn't map to the marketing claims, the brand doesn't reflect actual capability, and the narrative contradicts the governance model.

This swarm inverts the sequence: **validate before build, system before screens, truth before polish.** Each phase gates on specific verification criteria. No fictional product depth. No narrative claims without backing. No governance theater. Result: founders ship coherent ventures that don't require a full studio team to execute.

---

## Topology

```
┌─────────────────────────────────────────────────────────────────┐
│                    FOUNDER BRIEF & CONSTRAINTS                  │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE I: Market Requirement Validation (SNO)                    │
│ ─────────────────────────────────────────────────────────────── │
│  1. Extract pain statement and user segments from brief.         │
│  2. Run simulated interviews. Document validation evidence.      │
│  3. Define minimum useful outcome, success criteria.             │
│  4. Identify constraints (regulatory, technical, organizational).│
│  Output: Validated Market Requirement (MKT-01..N)               │
│  Gate: market_truth_gate (pain evidence backed, ≥2 validations) │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE II: Product Architecture & Prototype (PFA)                │
│ ─────────────────────────────────────────────────────────────── │
│  1. Ingest market requirement from SNO.                          │
│  2. Define domain model: entities, relationships, permissions.   │
│  3. Specify workflow state machine (entry/exit/data/timeout).    │
│  4. Map service boundaries, data integrity rules, scalability.   │
│  5. Build interactive prototype: core loop only, real data.      │
│  Output: Product Architecture (ER schema, states, prototype)     │
│  Gate: systems_truth_gate (schema explicit, prototype validates) │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE III: Brand Operating System (BES)                         │
│ ─────────────────────────────────────────────────────────────── │
│  1. Ingest product prototype from PFA.                           │
│  2. Define brand position: aesthetic thesis vs generic SaaS.     │
│  3. Build visual system: color tokens, typography, spacing.      │
│  4. Define motion language (transition easing, animation intent).│
│  5. Construct campaign architecture (teaser → reveal → sustain). │
│  Output: Brand Operating System (tokens, verbal, motion, phases) │
│  Gate: aesthetic_coherence_gate (brand rules enforceable)        │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│ PHASE IV: Executive Launch Decision (SNO)                       │
│ ─────────────────────────────────────────────────────────────── │
│  1. Ingest product and brand outputs from PFA and BES.           │
│  2. Map all narrative claims to product mechanics or risks.      │
│  3. Validate brand claims against actual product depth.          │
│  4. Assign risk severity tiers. Build governance evidence vault. │
│  5. Issue launch decision memo (go/no-go, conditions, handoff).  │
│  Output: Executive Launch Memo + Risk Register + Evidence Vault  │
│  Gate: launch_readiness_gate (narrative truth + coherence pass)  │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
                      ┌──────────────┐
                      │  GO/NO-GO    │
                      │  DECISION    │
                      └──────────────┘
```

---

## File-Level Responsibilities

### Strategic Narrative Operator (SNO)

**Owns:**
- Market requirement validation and scoping
- Risk register and governance frameworks
- Cross-node verification gates
- Launch decision authority

**Produces:**
- `/phase-I/market-requirement.yaml` – Validated pain, users, utility, constraints, evidence trail
- `/phase-IV/launch-decision-memo.md` – Risk-tiered go/no-go with conditions
- `/governance/risk-register.yaml` – All identified risks with severity, likelihood, mitigation
- `/governance/evidence-vault.yaml` – Decision logs, approvals, rollback paths, audit trail

**Interface:**
- **Input:** Founder brief, constraint list, stakeholder goals, prototype feedback
- **Output:** Market requirement (to PFA), launch memo + risk register (to founder/board)
- **Gate Trigger:** Issues `market_truth_gate` (Phase I exit), `governance_gate` + `launch_readiness_gate` (Phase IV exit)

---

### Product Foundry Architect (PFA)

**Owns:**
- Domain modeling and entity schema design
- Workflow state machine specification
- Service boundary and permission model
- Interactive prototype (core loop)

**Produces:**
- `/phase-II/domain-model.yaml` – Entities, relationships, attributes, lifecycle
- `/phase-II/er-schema.yaml` – Entity-relationship diagram, normalized schema
- `/phase-II/service-boundaries.md` – Service map, interface contracts, data flows
- `/phase-II/workflow-state-machine.yaml` – State definitions, transitions, guards, timeout rules
- `/phase-II/prototype-interactive.{figma|code}` – Core loop prototype with schema-matched data

**Interface:**
- **Input:** Validated market requirement from SNO, domain constraints
- **Output:** Product architecture (to BES), prototype + schema (to SNO for narrative validation)
- **Gate Trigger:** Issues `market_truth_gate` (internal, vs Phase I requirement), `systems_truth_gate` (Phase II exit)

---

### Brand Experience Sovereign (BES)

**Owns:**
- Visual identity and design tokens
- Verbal identity and tone system
- Motion language and interaction behavior
- Campaign architecture and phase roadmap

**Produces:**
- `/phase-III/brand-tokens.yaml` – Color, typography, spacing, motion, 3D asset specifications
- `/phase-III/verbal-identity.md` – Brand voice, tone rules, messaging templates
- `/phase-III/motion-language.md` – Transition easing, animation intent, feedback rules
- `/phase-III/campaign-architecture.yaml` – Teaser/Reveal/Education/Conversion/Sustain phases, KPIs, artifact list

**Interface:**
- **Input:** Product prototype from PFA, market positioning from SNO
- **Output:** Brand operating system (to SNO for narrative + product alignment check)
- **Gate Trigger:** Issues `aesthetic_coherence_gate` (Phase III exit)

---

## Crosscutting Functions

### 1. Validation and Evidence Management
**Owner:** SNO
**Runs:** Continuously across all phases
**Function:**
- Tracks every major claim (pain, user segment, product capability, narrative assertion) with source quality and confidence level.
- Ensures narrative never claims confidence above evidence. Flags assertions that exceed product capability.
- Maintains evidence traceability: user feedback → validated requirement → product design → brand claim.

### 2. Governance and Risk Management
**Owner:** SNO
**Runs:** Continuously, culminates in Phase IV
**Function:**
- Identifies all material risks (unacceptable, high, transparency, minimal).
- For autonomous/AI product: enforces audit logs, approval queues, rollback procedures as product features, not bolted-on controls.
- Builds governance evidence vault: decision logs, approvals, risk tier rationales, override trails.

### 3. Phase Gate Reviews
**Owner:** SNO
**Runs:** Phase I → II, II → III, III → IV transitions
**Function:**
- Mandatory certification step before proceeding to next phase.
- Blockers: must fix to proceed. Improvements: nice-to-have.
- Prevents downstream rework by catching coherence issues early.

### 4. Coherence Checking
**Owner:** SNO
**Runs:** Phase IV (primary), continuously (spot-checks)
**Function:**
- Cross-checks product architecture against brand positioning. No fictional capabilities implied by brand.
- Maps every narrative claim to product mechanics or a named, mitigated risk.
- Validates that visual identity tokens and campaign design support actual product affordances, not aspirational UI.

---

## Artifact Handoffs

| Phase | From | To | Artifact | Gate |
|-------|------|-----|----------|------|
| I | SNO | PFA | Market Requirement (MKT-01..N, pain evidence, users, success criteria) | `market_truth_gate` |
| II | PFA | BES | Product Architecture (entities, schema, prototype, core loop) | `systems_truth_gate` |
| III | BES | SNO | Brand Operating System (tokens, verbal, motion, campaign phases) | `aesthetic_coherence_gate` |
| IV | SNO | Founder | Launch Decision Memo + Risk Register + Evidence Vault | `launch_readiness_gate` |

---

## Review Gates

Each gate is a mandatory certification. Owner of the receiving phase must sign off before proceeding.

### Gate: `market_truth_gate`
**Applies to:** Phase I → II transition
**Criteria:**
- Pain statement is user-centric, not jargon-heavy. Backed by ≥2 independent validations.
- Target user segment clearly defined. Willingness-to-pay documented.
- Minimum useful outcome is specific, not feature sprawl.
- Constraints (regulatory, technical, organizational) explicitly named.
- Success criteria are measurable, not aspirational.
- Evidence sources logged: source quality (primary/secondary/tertiary), confidence level (high/medium/low).

**Gate Owner:** SNO
**Blocker Examples:**
- "No user pain documented, only founder intuition" → rework Phase I
- "Pain statement is too broad; scoping undefined" → narrow MKT definition
- "Confidence level 'low' but no path to validation" → design validation test

---

### Gate: `systems_truth_gate`
**Applies to:** Phase II → III transition
**Criteria:**
- Domain model defines all major entities, relationships, and lifecycle states.
- Entity-relationship schema is normalized, explicit about permissions (CRUD per role).
- Service boundaries and data flow are documented.
- Workflow state machine includes all major transitions, guards, and failure paths.
- Interactive prototype runs core loop end-to-end with real schema-matched data.
- Edge cases and error paths are documented (not built, but named and prioritized).

**Gate Owner:** PFA
**Blocker Examples:**
- "No explicit permission model; assumes single user/admin" → define RBAC or ABAC
- "Prototype uses hardcoded mock data; doesn't validate schema" → rebuild with real data shape
- "Workflow states incomplete; missing error recovery" → add failure paths to state machine

---

### Gate: `aesthetic_coherence_gate`
**Applies to:** Phase III → IV transition
**Criteria:**
- Brand tokens (color, type, motion, spacing) are defined with clear usage rules, not cosmetic.
- Verbal identity includes tone rules with examples, not just voice statements.
- Motion language governs interaction behavior, not just transition duration.
- Campaign architecture maps to product phases (onboarding → adoption → retention), not generic marketing stages.
- All design tokens are WCAG AA accessible; no contrast issues or ableist design patterns.
- No campaign claim implies product depth that doesn't exist in prototype.

**Gate Owner:** BES
**Blocker Examples:**
- "Color palette defined but usage rules missing; unclear when to use each color" → add specific context rules
- "Campaign teases 'AI-powered insights' but prototype has no ML; just thresholding" → revise campaign or product scope
- "Motion easing defined but no actual interaction behaviors specified" → add button click, form submission, state transition rules

---

### Gate: `launch_readiness_gate`
**Applies to:** Phase IV (final)
**Criteria:**
- Every narrative claim (founder story, positioning, go-to-market messaging) maps to either (a) product mechanic or (b) named, mitigated risk.
- Risk register is complete: ≥5 major risks identified, severity tiered (unacceptable/high/transparency/minimal), mitigations specific.
- Product architecture supports brand positioning. No fictional capabilities implied.
- Brand visual language is enforceable by product team (design tokens are concrete, not "feel right").
- Governance evidence vault is complete: decision logs, approvals, rollback paths, audit trail for autonomous workflows.
- Go/no-go decision is clear with specific conditions or dependencies.

**Gate Owner:** SNO
**Blocker Examples:**
- "Campaign claims '40% faster validation' but product architecture is incremental improvement over status quo; no evidence this claim is achievable" → rework narrative or product scope
- "Risk register thin; missing regulatory, technical, market risks" → expand risk analysis
- "Governance controls are written down but not embedded in product workflows; no audit log in prototype" → redesign governance as product feature

---

## Founder Rules

1. **Validate before Build:** No serious engineering effort goes into directions without documented user pain and ≥2 confirmations.

2. **System First, Screens Second:** Ship entity model and state machine before high-fidelity UI mockups. ER diagram before interaction flows.

3. **Truth over Narrative:** Every executive claim must map to product mechanics or named risk. Narrative may elevate reality, but must not contradict it.

4. **Reject Generic SaaS:** If the brand feels generic, rework the aesthetic thesis. Frontier-tech products must have distinctive identity.

5. **Governance is Embedded:** Risk controls and audit trails are product features, not compliance bolted on. Autonomous workflows must have rollback paths.

6. **Phase Gates are Mandatory:** Do not proceed from Phase I → II if market requirement is unvalidated. Do not proceed from Phase III → IV if product and brand are incoherent. Rework is cheaper than shipping misaligned.

7. **Solo Founder Feasibility:** If an output assumes a 10-person team to execute, it's out of scope. Simplify or descope.

8. **Evidence is Currency:** Every major claim (pain, capability, risk) trades in evidence. Unvalidated hypotheses are documented as such, not asserted.

---

## What I Should Remember

1. **Coherence Beats Completeness:** A founder is better served by a crystal-clear venture concept (validated pain → aligned product → consistent brand → executable narrative) than by comprehensive documentation of all possible features. Ship the core loop, not the roadmap.

2. **Validation is Not Consensus:** Do not require founder or stakeholder unanimous agreement before proceeding. Validate against users/market. Disagreement in the team signals need for more evidence, not abandonment of direction.

3. **Governance is Not Compliance Theater:** Audit trails, approval queues, and rollback paths are only valuable if embedded in product workflows. If governance is a separate spreadsheet or wiki, it will be ignored. Make it a feature.

4. **Narrative Never Exceeds Evidence:** The stronger the claim, the stronger the evidence required. "We save time" needs user validation. "We save 40% of time" needs quantified, repeatable testing. "We eliminate a category of work" needs market research. Narrative clarity is inversely proportional to evidence strength; acknowledge the gap.

5. **Rework is Upstream of Failure:** Phase gate rework (e.g., redo brand after aesthetic coherence gate) is 10x cheaper than post-launch rebranding or product pivots. Enforce the gates.

