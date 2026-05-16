---
example_id: cross-skill-passport-modernization-001
suite_invoked: NDS-GEBBIA · Joe Gebbia Skill Suite
suite_version: 1.2.0
skills_chained:
  - joe-gebbia-nds-chief-design-officer (1.1.0)
  - autonomous-venture-studio (1.1.0)
  - spatial-motion-genai-architect (1.1.0)
input_service: U.S. passport renewal — State Dept · Bureau of Consular Affairs
agency: U.S. Department of State
mandate_authority: EO 14338 (Aug 21, 2025)
hard_deadline: 2026-07-04
dominant_strategic_tension: Speed vs. Compliance
canonical_archetype: NDS_KB.md §Canonical Service Archetypes · Passport Renewal
status: worked example · illustrative · not an official deliverable
---

# Cross-Skill Worked Example
## Passport Renewal Modernization — End to End

A single brief flows through all three skills in the suite. Each skill produces its prescribed artifact and hands off to the next. The example demonstrates the canonical Chain C (Civic → Venture → XR demo) from [`SUITE.md`](../SUITE.md).

---

## The brief (entry point)

> The State Department's passport renewal service is paper-heavy, fee-opaque, and produces photo-validation rejections at the application step. Renewal acceptance happens at ~7,400 passport acceptance facilities (mostly U.S. Post Office counters), with regional passport agencies handling in-person expedited service. The State Department has been directed under EO 14338 to modernize the renewal experience by July 4, 2026 — including a digital-first online renewal capability that today does not exist at scale. OMB requires an immersive stakeholder demo at the modernization-portfolio review in March 2026.

**Three asks in one brief:**
1. Assess the current service and recommend what to fix (CDO skill).
2. Incubate the new digital-first renewal capability as a 0-to-1 service line (Autonomous Venture Studio).
3. Produce a stakeholder demo for the March 2026 OMB review (Spatial-Motion).

---

# Stage 1 — CDO Skill Assessment

**Skill:** `joe-gebbia-nds-chief-design-officer` (v1.1.0)
**Dominant tension:** Speed vs. Compliance
**Output artifact:** `executive_synthesis.md`

## Conclusion

The current passport renewal flow is not a renewal problem. It is a *photo-and-eligibility legibility* problem — users land on `travel.state.gov`, cannot quickly determine whether they're eligible for the form-DS-82 mail-in renewal vs. the form-DS-11 in-person flow, then either over-collect documents or arrive at a post office counter and discover their photo fails validation. The fastest July-2026-aligned move is a USWDS-aligned digital-first renewal flow at the front door, with photo preflight validation, fee transparency, and a documented kiosk-assisted path at the ~7,400 post-office acceptance facilities for users who cannot complete the digital flow. Identity verification, signature requirements, and statutory adjudication remain human-of-record.

## What I would change first

1. **Photo preflight.** Today, users discover photo failures at the counter (acceptance facility) or after upload during expedited service. Move photo validation to before-upload: a browser-based check that returns *pass / specific failure reason / actionable retake guidance* in under 5 seconds. Uses on-device ML; no PII off-device until submission.

2. **Eligibility preflight.** Three questions on the front door — *Have you had a U.S. passport before? When? Has anything legally changed (name, citizenship, etc.)?* — returns one of: *eligible for mail-in DS-82*, *must use in-person DS-11*, *unsure → see a passport agent*. Replaces the current decision-tree-by-PDF pattern.

3. **Fee transparency at the door.** Surface the full fee (application + execution + expedite + 1–2 day shipping, where applicable) as a clear total before the user enters any personal data. Surface the difference between regional-passport-agency expedited service ($60 fee + appointment) and post-office acceptance ($35 execution fee, no expedite).

## Current friction map (selected highlights)

| Step | Friction | Useless? | Necessary? |
|---|---|---|---|
| Arrival at travel.state.gov | 12 product cards; "first-time vs. renewal" is buried | ✗ useless | — |
| DS-82 vs. DS-11 decision | Implicit in eligibility footnotes | ✗ useless | — |
| Photo upload | Validation happens server-side, after upload | ✗ useless | — |
| Identity verification | Multi-step ID.me OR in-person at acceptance facility | — | ✓ necessary |
| Signature | Wet signature required on DS-11 | — | ✓ necessary (statutory) |
| Fee structure | Multiple fees stacked; expedite vs. shipping confusion | ✗ useless | — |
| Status check | Separate URL; needs application number + last name + DOB | partial | partial — anti-fraud |
| In-person acceptance | ~7,400 facilities, uneven training, paper-heavy intake | partial | ✓ statutory witness |

## Doctrine traces

- **Pillar 1 (Legibility):** front door must answer *what kind of renewal applies to me* in under 30 seconds.
- **Pillar 2 (Friction):** remove photo-discovery-at-counter, remove fee opacity, preserve identity verification + statutory witness + signature.
- **Pillar 3 (Infrastructure):** USWDS canonical for all components. Photo preflight is the documented USWDS gap requiring a custom component (proposed as upstream contribution).
- **Pillar 5 (Screen → Room):** front-door eligibility maps to the post-office acceptance worksheet; status colors map to the regional passport agency waiting-area board.
- **Pillar 7 (Local context):** Spanish parity at launch; multilingual coastal-community language access; tribal-nation acceptance-facility coordination.

## Recommendation — new digital service line

The current State Department web architecture cannot host the digital-first renewal flow without ground-up redesign of the eligibility, photo, and payment infrastructure. **Recommendation: stand up a new 0-to-1 service capability — "Passport Renewal · Digital First" — as a service line co-owned by State Consular Affairs + USPS (acceptance-facility partner) + Treasury (payment).** This is the handoff to the Autonomous Venture Studio skill.

## Handoff to Autonomous Venture Studio

```yaml
handoff:
  from_skill: joe-gebbia-nds-chief-design-officer
  to_skill: autonomous-venture-studio
  artifact: executive_synthesis.md
  decision_needed: >
    Stand up a new digital-first passport renewal service line as a
    0-to-1 capability inside State Department's modernization portfolio.
  assumptions:
    - Statutory framework (22 CFR Part 51) permits the proposed flow
    - USPS will partner on acceptance-facility kiosk integration
    - Photo preflight ML can run client-side (no PII off-device pre-submit)
  open_risks:
    - ID.me exclusion patterns must have a documented non-smartphone fallback
    - Tribal-nation acceptance facilities require coordination not yet scoped
    - Fee transparency requires Treasury sign-off
  next_action: >
    Validate the market requirement (renewal-user pain, digital-first
    eligibility, ML-photo-validation user trust), design the product
    architecture (domain + ER schema + state machine), and produce the
    brand operating system aligned to the federal civic-neutral context.
```

---

# Stage 2 — Autonomous Venture Studio

**Skill:** `autonomous-venture-studio` (v1.1.0)
**Nodes invoked:** SNO → PFA → BES (all three)
**Phase span:** 4–6 weeks
**Output artifact:** `executive_launch_decision_memo.md`

## Phase I — Market Requirement (Strategic Narrative Operator)

```yaml
market_requirement:
  pain_evidence:
    - "Photo rejection rate at acceptance facilities: significant share of in-person visits"
    - "Mail-in DS-82 misuse rate: applicants using DS-82 when DS-11 is required"
    - "Average completion time at post-office counter: long, with paper backflow"
    - "Spanish-language drop-off rate exceeds English"
  primary_users:
    - "U.S. citizens renewing existing passports (largest cohort)"
    - "First-time-after-expiration applicants (DS-11 path)"
    - "Spanish-dominant households (Caribbean, Gulf Coast, SW border states)"
    - "Travelers with imminent travel dates (expedited service)"
  utility:
    - "Reduce in-person visits for eligible mail-in cases"
    - "Reduce photo-rejection rate via preflight"
    - "Reduce time-at-counter for in-person cases via pre-filled intake"
    - "Surface fee total transparently before data entry"
  success_metrics:
    - "Digital-first completion rate ≥ 85% for DS-82-eligible cohort"
    - "Photo first-try acceptance ≥ 95%"
    - "Average time-to-submitted ≤ 6 minutes on mobile"
    - "Spanish parity ≤ 3-point completion gap"
  evidence_quality:
    - "Source: State Dept consular OIG reports (public)"
    - "Source: GAO acceptance-facility reviews (public)"
    - "Confidence: directional — to be validated with field user research"
```

## Phase II — Product Architecture (Product Foundry Architect)

**Domain model (selected entities):**

```yaml
entities:
  - name: RenewalApplication
    properties: [id, status, applicant_id, current_passport_id, target_route]
    states: [draft, photo_validated, eligibility_confirmed, payment_held, submitted, accepted, in_review, approved, rejected, mailed]
  - name: Applicant
    properties: [id, name, dob, prior_passport_history, identity_proof_state]
  - name: PhotoSubmission
    properties: [id, application_id, client_validation_result, server_validation_result, retake_count]
  - name: AcceptanceEvent
    properties: [id, application_id, facility_id, agent_id, witness_signature, oath_time]
  - name: PaymentHold
    properties: [id, application_id, components, total, treasury_reference]
```

**Workflow state machine (renewal-DS-82 happy path):**

```
draft
  ↓ (eligibility preflight passes)
eligibility_confirmed
  ↓ (photo preflight passes client-side)
photo_validated
  ↓ (applicant enters data)
draft_complete
  ↓ (payment authorized; held, not captured)
payment_held
  ↓ (server-side photo + data revalidation)
submitted
  ↓ (consular review)
approved | rejected | needs_more_info
  ↓ (production)
mailed
```

**Service map:**

```
Front Door (travel.state.gov)
  └── Eligibility Preflight Service
  └── Photo Preflight Service (client-side ML + server validation)
  └── Renewal Application Service
       └── Identity Verification (Login.gov)
       └── Payment Service (Treasury Pay.gov)
       └── Document Vault
  └── Status Tracking Service
Acceptance Facility (USPS) — for DS-11 cohort
  └── Tablet-based Intake (mirrors digital flow)
  └── Witness Signature & Oath
Regional Passport Agency — for expedited
  └── Appointment Service
  └── Same digital case record
```

## Phase III — Brand Operating System (Brand Experience Sovereign)

This is where civic-neutrality is enforced. The BES does not produce a branded venture identity. It produces a **federal-context-constrained system** that respects the State Department's institutional voice.

```yaml
visual_tokens:
  primary_typography: "Public Sans (USWDS)"
  color_palette: "USWDS default + State Department blue (#112E51)"
  iconography: "USWDS icon library; custom only for passport-specific affordances"
  imagery: "Documentary-style, citizen-focused; no patriotic montage; no triumphalist register"

verbal_identity:
  voice: "Factual, second-person, present-tense, plain language"
  register: "Public-service, not marketing"
  rules:
    - "No 'welcome home,' no 'your journey,' no celebratory framing"
    - "Plain Writing Act 2010 floor on all user-facing strings"
    - "Spanish parity from launch; ten-language plan by Phase 4"

motion_specs:
  step_transitions: "150ms ease-out; respect prefers-reduced-motion"
  status_feedback: "Color + text + icon (WCAG 1.4.1)"

campaign_phases:
  pre_launch:
    - "Public-information page explaining what's new and what isn't"
    - "Plain-language data-use disclosure"
  launch:
    - "Single-message campaign: 'Renew your passport online if eligible. We'll tell you if you are.'"
  post_launch:
    - "Acceptance-facility wayfinding refresh"
    - "Customer-support knowledge-base rewrite"
```

## Phase IV — Executive Launch Decision Memo

```yaml
launch_decision:
  recommendation: GO with named blockers
  risk_register:
    - tier: HIGH
      risk: "ID.me-style identity-proofing exclusion patterns"
      mitigation: "Documented acceptance-facility fallback path"
    - tier: HIGH
      risk: "Photo preflight ML accuracy < 95% will erode trust"
      mitigation: "Pilot at 5% with manual fallback before scale"
    - tier: MED
      risk: "Treasury Pay.gov integration timeline"
      mitigation: "Begin integration work in Phase 1; surface fee transparently regardless"
    - tier: MED
      risk: "USPS acceptance-facility tablet rollout (~7,400 sites)"
      mitigation: "Tablet at flagship sites first; paper-fallback parity at all sites"
  evidence_vault:
    - "Market requirement validation: field user research at 6 acceptance facilities"
    - "Photo ML accuracy: lab + field pilot data"
    - "Spanish parity: bilingual user testing N≥40"
  blocking_for_launch:
    - "Spanish parity verified"
    - "Section 508 / WCAG 2.0 AA pass on full flow"
    - "Acceptance-facility tablet rollout at minimum 200 flagship sites"
    - "Treasury Pay.gov integration live"
  pilot_scope:
    - "5% A/B at 10 high-volume regions"
    - "DS-82 (mail-in renewal) only in pilot"
    - "DS-11 (in-person) follows in Phase 2"
```

## Handoff to Spatial-Motion

```yaml
handoff:
  from_skill: autonomous-venture-studio
  to_skill: spatial-motion-genai-architect
  artifact: executive_launch_decision_memo.md + product_architecture
  decision_needed: >
    Produce an immersive stakeholder demo for the March 2026 OMB
    modernization-portfolio review. The demo must communicate the
    digital-first front door, the photo preflight experience, and the
    acceptance-facility kiosk-to-counter handoff.
  assumptions:
    - "Audience: OMB program officers + State Department senior leadership"
    - "Demo duration: 8–12 minutes total"
    - "Format: in-person screening + leave-behind XR sandbox"
  open_risks:
    - "Photo preflight UI not yet visually finalized"
    - "Acceptance-facility kiosk hardware spec in flux"
  next_action: >
    Extract the narrative, prototype the wayfinding-to-form transition,
    ship a Unity sandbox showing the kiosk-to-counter handoff and a
    concept reel for the digital front-door flow.
```

---

# Stage 3 — Spatial-Motion GenAI Architect

**Skill:** `spatial-motion-genai-architect` (v1.1.0)
**Cells invoked:** Concept Director → Motion Engineer → XR Builder (Brand Auditor crosscut)
**Phase span:** 5–7 working days
**Output artifact:** Immersive demo package (ZIP)

## Phase 1 — Orient

The Concept Director synthesizes the AVS launch memo + product architecture into a single narrative spine: *"From the kitchen table to the post office counter to the mailbox — one renewal, one record."* Three scenes are scoped:

1. **Front-door scene** — a mobile-first applicant lands, eligibility-preflights, photo-preflights, pays, and submits in under 6 minutes.
2. **Acceptance-facility scene** — a DS-11 applicant arrives at a USPS counter, the agent scans their case QR, intake is pre-filled, witness signature and oath are administered, case syncs.
3. **Status scene** — applicant tracks the renewal from "submitted" through "approved" to "mailed" with the same color register seen in the front door.

## Phase 2 — Conceptualize (Motion Engineer)

GenAI concept reel generated with Kling + Runway. Style: documentary-realist, civic-neutral, *not* cinematic. Brand Auditor crosscut passes:

- ✓ No triumphalist register
- ✓ No patriotic montage
- ✓ Documentary realism only
- ✓ Plain typography; State Department blue restrained to identity, not status

Motion narrative deck:

```yaml
scene_01_front_door:
  duration: 90s
  beats:
    - "0–10s · arrival, eligibility preflight returns 'mail-in route'"
    - "10–30s · photo preflight (failure → guidance → success)"
    - "30–60s · data entry, fee surfaced transparently"
    - "60–90s · payment authorized, confirmation screen with reference number"

scene_02_acceptance_facility:
  duration: 90s
  beats:
    - "0–20s · applicant arrives, agent scans case QR"
    - "20–50s · tablet intake pre-filled; agent confirms"
    - "50–80s · witness signature, oath"
    - "80–90s · case state transitions, applicant sees same color register"

scene_03_status:
  duration: 60s
  beats:
    - "0–20s · email + push notification on state changes"
    - "20–40s · status page, same color register, expected timeline shown"
    - "40–60s · mailed; tracking handoff to USPS"
```

## Phase 3 — Map Logic (TouchDesigner)

Node network maps each beat to a state-machine transition in the product architecture (Stage 2). Every motion beat is traceable to a named state in the `RenewalApplication` workflow. Logic-coherence gate passes.

## Phase 4 — Translate (XR Builder, Unity)

Interactive sandbox built for the OMB demo. Two interaction surfaces:

1. **Mobile-front-door sandbox** — touchscreen prototype of the digital flow on a tablet; tap-through with realistic data and the photo-preflight interaction.
2. **Acceptance-facility kiosk sandbox** — VR or large-format-touch prototype of the USPS counter experience; agent-side view + applicant-side view, both showing the same case record syncing live.

Ergonomic safety gate passes:

- ✓ Reach zones for kiosk surface
- ✓ No fast-flicker transitions (epilepsy safety)
- ✓ Type sized aggressively for tablet at counter
- ✓ Reduced-motion fallback for the concept reel

## Phase 5 — Package

Final deliverable:

```
passport-renewal-demo.zip
├── concept-reel.mp4              (4 min, narration-optional)
├── touchdesigner-network.toe
├── unity-sandbox/                (mobile + kiosk interaction surfaces)
├── workflow-log.md
├── assumptions.md
├── ergonomic-validation.md
└── presentation-deck.pdf          (12 slides for OMB review)
```

## Brand-Auditor final pass

- ✓ Narrative traceable to source product architecture
- ✓ Brand audit: civic-neutral; no triumphalist register
- ✓ Logic coherence: every beat ties to a named state
- ✓ Ergonomic safety: reach, motion, type
- ✓ Handoff readiness: documentation complete

---

# Suite-level outcome

A single inbound brief — *"modernize the passport renewal experience"* — produces, across three skills, in 4–6 weeks plus an additional 5–7 days:

1. **Executive synthesis** (CDO) — what is broken, what to fix first, what stays
2. **Validated venture concept** (AVS) — market requirement, product architecture, brand OS, launch decision memo with risk register
3. **Immersive stakeholder demo** (Spatial-Motion) — concept reel, TouchDesigner network, Unity sandbox for OMB review

Each artifact is owned by the skill that produced it. Each handoff is named explicitly. No skill blurs into another. The suite is greater than the sum because the handoff protocol is precise.

## What I should remember

- This is **Speed vs. Compliance** at the CDO level. The mandate deadline is real; the temptation to ship a polished front door without acceptance-facility tablet integration is the failure mode to resist.
- The CDO assessment did not need to design the venture — it stopped at the recommendation. Skill discipline matters; do not let the CDO skill drift into product architecture.
- The Autonomous Venture Studio did not need to produce a demo reel — it stopped at the launch decision memo. Skill discipline matters; do not let AVS drift into motion design.
- Spatial-Motion did not need to validate market requirements — it consumed them from AVS. Skill discipline matters; do not let Spatial-Motion drift into product strategy.
- The Brand-vs-Democracy tension fired at the BES stage of AVS. Civic-context branding *must* be constrained. The federal context is not a venture brand opportunity.
- All three handoffs are explicit, named, schema-validated, and rejectable. This is the load-bearing protocol that makes the suite usable.

---

*Produced by the NDS-GEBBIA Skill Suite, v1.2.0. Skills chained: CDO 1.1.0 → AVS 1.1.0 → Spatial-Motion 1.1.0. This is an illustrative example — not an official State Department deliverable.*
