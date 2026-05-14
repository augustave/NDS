---
example_id: irs-payment-portal-001
skill_invoked: joe-gebbia-nds-chief-design-officer
skill_version: 1.1.0
input_service: IRS individual payment portal (irs.gov payments + Direct Pay + Online Account)
agency: Department of the Treasury — Internal Revenue Service
mandate_authority: EO 14338 (Aug 21, 2025)
hard_deadline: 2026-07-04
dominant_strategic_tension: Speed vs. Compliance
canonical_archetype: NDS_KB.md §Canonical Service Archetypes · IRS Payment Portal
status: worked example · illustrative · not an official NDS deliverable
---

# NDS Chief Design Officer Assessment
## IRS Individual Payment Portal

## Conclusion

The IRS payment portal is not a payment problem. It is an **identity-and-eligibility legibility** problem masquerading as a payment problem. The fastest, ship-by-July-4-2026 intervention is not a visual redesign — it is to collapse the three citizen-facing entry points (irs.gov/payments, Direct Pay, Online Account) into a single task-modeled front door, force every payment-plan eligibility rule into plain-language preflight, and make payment confirmation visually distinct from every error and warning state. Visual harmonization with USWDS comes after the task model is correct, not before. Accessibility, identity-proofing, and anti-fraud friction are non-negotiable and stay.

## What I Would Change First

Three interventions, in order. None are visual.

**1. Collapse the front door.** Today a user arrives at the portal having to pick — without context — between "Direct Pay," "Online Account," "EFTPS," "payment plan," "offer in compromise," and the IRS2Go app. This is the agency's org chart, not a service. Reorganize the entry around four citizen tasks: *Pay now*, *Set up a payment plan*, *See what I owe*, *Help — I got a notice*. Every other path becomes a sub-route inside those four.

**2. Eligibility preflight, in plain language.** Payment-plan eligibility today is buried in legal-register PDFs. Users start the application, then bounce out at step four when an undisclosed threshold disqualifies them. Replace the start of the payment-plan flow with a two-minute, six-question preflight that returns one of: *eligible for short-term*, *eligible for long-term direct-debit*, *eligible for long-term non-direct-debit*, *call this number*. Plain Writing Act of 2010 is the floor here, not the goal.

**3. Confirmation must look unmistakably like confirmation.** Today, a successful payment confirmation, a "we received your form" notice, and a validation error all share the same visual register — terse system messages on white backgrounds. Establish three visually distinct states using USWDS alert patterns: success (green, with persistent reference number and a "save this page as PDF" action), pending/processing (yellow, with explicit expected timeline), and error/blocking (red, with the specific field at fault and one clear next step). Citizens transacting with the IRS need a moment of relief. They do not get one today.

## Current Friction Map

Sequence: **Arrival → Orientation → Eligibility → Information gathering → Form completion → Document/evidence → Review → Confirmation → Status → Escalation**.

| Step | User action | Agency action | Confusion point | Useless friction | Necessary friction |
|---|---|---|---|---|---|
| Arrival | Search "pay IRS" → land on irs.gov/payments hub | Present 6+ product cards | Which product solves their case? | Hub is org-chart-shaped, not task-shaped | None |
| Orientation | Read product descriptions full of internal terminology ("ACH Direct Debit," "EFTPS") | Static content | Jargon barrier; mobile layout truncates cards | Acronym soup | Distinguishing individual vs. business filers |
| Eligibility | Guess at fit; start a flow to find out | Apply eligibility rules deep in flow | Rules unstated until step 4–5 | **Hidden eligibility criteria** (KB Red Flag) | Income thresholds, prior-default rules |
| ID verification | Create or sign into ID.me / IRS auth | Identity-proof at NIST IAL2 | Multiple auth systems, MFA fatigue, document re-uploads | Re-prompts across sub-products | **Identity verification** (KB §Doctrine 2 · preserve) |
| Info gathering | Enter SSN, address, AGI, prior-year info | Validate against records | "Your information does not match" error with no diagnostic | Generic error; user cannot tell which field | None — match-checking is real |
| Form completion | Enter routing/account or card; pick installment terms | Display schedule and fees | User-fee schedule and setup-fee schedule conflated | Inconsistent fee presentation across products | Disclosure of fees |
| Document upload | (Some products) upload Form 9465 or hardship docs | Receive into back-office | Upload accepted ≠ upload processed | "Accepted" reads like "approved" | Document handling |
| Review | Confirm amounts | Show summary | Summary lacks "what happens next" timeline | Missing timeline | Final confirmation step |
| Confirmation | Receive confirmation number | Generate receipt | Confirmation visually identical to errors and notices | **Status messages indistinguishable from errors** (KB archetype failure) | Reference number, audit trail |
| Status tracking | Return days later to check posting | Show payment-posted state with 5–7 business-day lag | No expectation set at submission time | Asymmetric expectation | Settlement lag is real |
| Escalation | Call 1-800-829-1040 | Long IVR queue | No path back from web to phone with case context | No case continuity | Human review |

**Failures observed against the doctrine:**

- **Pillar 1 (Legibility):** "Where am I, what can I do, what happens next, who is responsible" — the portal answers approximately none of these on the first screen.
- **Pillar 4 (Stress):** The user is afraid of penalty and liability. The interface adds anxiety instead of reducing it.
- **Pillar 5 (Screen → Room):** Status-message confusion travels into the Taxpayer Assistance Center, where staff are asked to interpret receipts on phone screens.

## Proposed Service Doctrine

For this service, the doctrine resolves to four operative rules:

1. **Task model first, brand second.** The four citizen tasks (*Pay now*, *Plan*, *See what I owe*, *Got a notice*) are the navigation. USWDS visual harmonization is applied after the task model is correct.
2. **Preflight eligibility before any data entry.** Every flow opens with a plain-language eligibility check that returns a binary fit signal before asking for SSN.
3. **One identity, one session, persistent context.** A user who authenticates once should not re-authenticate to move between *Pay now* and *Plan*. Identity is verified once at NIST IAL2; session context carries case continuity.
4. **Three states, visually unambiguous.** Success, pending, blocking. No fourth state. No bare system messages.

This doctrine accepts more upfront engineering cost to win lower long-tail support cost. That tradeoff aligns with the mandate's "lower duplicated design cost" objective (KB §Operating Mandate).

## Digital Redesign

### Information architecture

```
irs.gov/pay (single front door)
├── Pay now                  → Direct Pay flow (collapsed)
├── Set up a payment plan    → preflight → installment agreement (collapsed)
├── See what I owe           → Online Account view (refocused)
└── Got a notice (CP14, CP501, LT11…)
    └── Notice-aware deep links into the three above
```

EFTPS remains, but for business filers only, and lives at a clearly-labeled business front door. IRS2Go either becomes a thin client over this same architecture or is sunset.

### Components (USWDS alignment)

Apply USWDS canonically. Custom UI only where USWDS has a documented gap.

- **Header / footer / banner** — USWDS official-site banner is the floor; preserve.
- **Step indicator** — USWDS step-indicator pattern across multi-step flows. Mandatory.
- **Forms** — USWDS form patterns with single-question-per-screen on mobile in the preflight; multi-field grouping only when fields are mutually contextual (e.g., address block).
- **Alerts** — USWDS alert: green = success (persistent), yellow = info/pending, red = error/blocking. No other alert color may appear.
- **Modals** — Banned in the payment flow. Modals over money flows trigger user distrust at exactly the wrong moment.
- **Tables** — Used for owed-balance breakdown; must be responsive and screen-reader-traversable per the 21st Century IDEA Act.
- **Identifiers** — Reference numbers always rendered in monospace, always selectable, always include a "save as PDF" action on confirmation.

### Content rewrite (Plain Writing Act of 2010)

Three categorical changes:

1. **No acronyms in user-facing copy without first-mention expansion.** "EFTPS" becomes "EFTPS (Electronic Federal Tax Payment System) — for businesses."
2. **Replace passive-voice "your information could not be verified" with active, specific errors**: "We could not match the address you entered to our records. Try the address from your most recent return." Names the field, suggests the recovery path.
3. **Confirmation copy explicitly states the timeline**: "Your payment of $X was received on [date]. It will post to your account within 5–7 business days. Reference number: [ref]. Save this page."

### Authentication

ID.me is the existing path. Three changes:

- **Re-use across sub-products.** A user who has proofed once should not re-proof to move between *Pay now* and *Plan*.
- **Visible session context.** A persistent thin bar shows: "Signed in as [last name, initials] · case context: [if any]."
- **Documented fallback.** Users who cannot complete ID.me proofing (no smartphone, no valid ID, biometric failure) need a documented Taxpayer Assistance Center path that does not erase their work.

### What does **not** change

- The identity-verification floor. KB doctrine #2 explicit.
- The signature requirement on installment agreements.
- The fee structure (Treasury rule).
- The settlement window. (Surfaced as expectation, not hidden as friction.)

## Physical-Service Translation

The IRS Taxpayer Assistance Center (TAC) is appointment-only and paper-heavy. Digital redesign without TAC translation produces a worse divide, not a better service.

**Front-desk and queue:**

- Single intake sheet aligned to the four web tasks. The intake question is "Which of these brought you in?" with the same four labels and the same four icons used online.
- Status board in the waiting area uses the same color register as the web alert system (green/yellow/red) so a citizen who saw their payment "pending" online recognizes it on the wall.

**Paper forms:**

- Form 9465 (Installment Agreement Request) and the equivalent web flow must share field order, field labels, and field grouping. A user who started online and finishes in person should not encounter a renamed field.
- Plain-language summary above the form: "This form sets up a payment plan. If you owe less than $50,000 and can pay within 72 months, you likely qualify."

**Staff script:**

- "Did you get a notice? Bring it out." A notice-aware path mirrors the web's *Got a notice* entry.
- Staff have a thin internal view of the same case context the user sees online — same reference number, same status colors, same expected timeline.

**Document handling:**

- Documents accepted at the TAC return a paper receipt with the same reference-number format as the web confirmation. Same monospace style, same QR code linking to the digital case view if the user has an Online Account.

**Signage:**

- Wall signage uses the same four citizen tasks. A citizen who lands in the wrong line learns it within ten seconds, not after thirty minutes of waiting.

This is the Chief Brand Architect's territory at the typography and color level; the CDO's territory at the language and behavior level. Coordinate.

## Accessibility and Trust Review

This redesign cannot launch until the following pass manual review.

**Statutory floor:**

- **Section 508** — current standard (2018 ICT Refresh, harmonized with WCAG 2.0 AA). Manual + automated audit required on every page in the four flows. Automated tooling is the floor; manual audit by an accessibility specialist is required (per KB §AI Use Boundaries).
- **Section 504 of the Rehabilitation Act** — no disability-based exclusion in the eligibility preflight. The preflight must offer an equivalent staff-mediated path for users who cannot complete it independently.
- **21st Century IDEA Act** — form digitization, e-signature acceptance, screen-reader-traversable tables.
- **Plain Writing Act of 2010** — every user-facing string in the four flows passes a plain-language review before publish.

**Specific must-fixes:**

- **Error recovery.** Today, a validation error on the payment screen frequently resets prior fields. Unacceptable; users in financial-stress state will abandon. Errors must preserve all prior input, name the specific field, and offer one recovery action.
- **Color is never the only signal.** Green success, yellow pending, red blocking — each must carry a text label and an icon in addition to color (WCAG 1.4.1).
- **Focus order.** Manual tab-traversal through the four flows on Chrome, Safari, and JAWS + NVDA. Today this is unverified across the unified flow.
- **Mobile.** ~60% of arrivals are mobile (industry baseline; capture an actual figure during pilot). Mobile completion must equal or exceed desktop completion, or this is a regressive redesign for the lowest-income users.
- **Bandwidth.** No flow may require client-side JavaScript for a core path; degrade to a server-rendered form. FEMA-archetype lesson applied (KB §Canonical Service Archetypes).
- **Language access.** Spanish is mandatory at parity. Mandarin, Vietnamese, Tagalog, Korean, Russian — by IRS Publication 17 language baseline.
- **Human escalation.** Every blocking error includes a documented call-back option with case context preserved. AI does not adjudicate eligibility (KB §AI Use Boundaries).

**Trust risks to flag explicitly:**

- **Identity-proofing exclusion.** ID.me has well-documented exclusion patterns (no smartphone, biometric mismatch, name mismatch with documents). The TAC-mediated fallback is mandatory, not optional.
- **Notice-aware deep linking** must not be turnable into a phishing vector. The "Got a notice" entry is the most spoofable surface. Coordinate with Policy and Risk on URL structure and notice-code validation.

## Implementation Roadmap

Sequenced against the July 4, 2026 forcing function.

### Phase 0 — Now → Q3 2025 (already overdue)

- Baseline capture. Without baselines, the rest is theater.
  - Task completion rate per current entry point.
  - Time-to-completion median and p90.
  - Error rate, abandoned-form rate.
  - Mobile completion percentage.
  - Support-call volume per topic (CP14, CP501, plan eligibility).
  - Accessibility audit score (current).
- Notice-code inventory. Every IRS notice that mentions a web action gets cataloged and mapped to one of the four tasks.

### Phase 1 — Quick wins · ship by Q4 2025

- USWDS alert color/icon standardization across existing flows.
- Plain-language pass on the top 20 user-facing strings (errors, confirmations, eligibility blockers).
- Confirmation page redesign (the easiest unambiguous win; visually distinct success state with save-as-PDF).

### Phase 2 — Pilot · ship by Q1 2026

- Unified front door at `irs.gov/pay` shipped in parallel to existing paths. A/B at 10%, then 50%.
- Eligibility preflight launched for the long-term installment path only.
- Identity-session reuse between *Pay now* and *Plan*.

### Phase 3 — Launch · before July 4, 2026

- Full task-modeled front door at 100%.
- TAC translation: intake sheet, signage, staff script, paper-form alignment.
- Spanish parity verified.
- Accessibility audit passed (manual + automated).
- Old entry points (Direct Pay, Online Account at root) redirect with continuity-preserving session handoff.

### Phase 4 — Post-deadline · v2

- USCIS-style notice-aware deep linking expanded.
- EFTPS for business filers reskinned into the same task model with business-specific tasks.
- Cross-agency consistency check against SSA and VA payment flows (the citizen who pays the IRS often also receives from SSA; the visual register should be recognizable).

### Launch gate (must be true before Phase 3 launch)

```yaml
launch_gate:
  accessibility_pass: required
  mobile_pass: required
  privacy_review_complete: required
  legal_safeguards_preserved: required        # identity, fees, signature
  physical_translation_complete: required     # TAC intake, signage, paper alignment
  metrics_defined: required
  agency_owner_identified: required           # IRS, not contractor
  human_escalation_available: required        # ID.me fallback path documented
  duplicated_design_cost_reduction_planned: required   # 3 portals → 1
  cross_agency_consistency_score_defined: required
  civic_dignity_review_passed: required
  measurable_baseline_captured: required
  red_flags_checklist_cleared: required
  dominant_strategic_tension_named: "Speed vs. Compliance"
```

## Success Metrics

Baselines captured in Phase 0; targets evaluated 90 days post-Phase-3 launch.

| Metric | Direction | Target |
|---|---|---|
| Task completion rate (Pay now) | ↑ | ≥ 92% from current baseline (capture in Phase 0) |
| Task completion rate (Set up plan) | ↑ | ≥ 75% (today's flow is closer to 50%) |
| Median time-to-completion (Pay now) | ↓ | ≤ 4 minutes on mobile |
| Eligibility-preflight accuracy | n/a | ≥ 95% of preflight "eligible" results survive to final approval |
| Error-recovery rate | ↑ | ≥ 70% of validation errors recover within same session |
| Mobile completion % | ↑ | At parity with desktop, ± 3 points |
| Support-call volume (plan eligibility) | ↓ | ≥ 30% reduction |
| Abandoned-form rate (plan flow) | ↓ | ≥ 40% reduction |
| Accessibility audit score | ↑ | Zero Section 508 / WCAG 2.0 AA blockers on the four flows |
| Duplicated-design-cost reduction | ↑ | Three citizen-facing portals collapsed to one |
| Cross-agency consistency score | ↑ | Visual register matches SSA and VA payment-status surfaces |
| Civic dignity indicator | qualitative | User research confirms users feel "informed and respected" at confirmation |

## What I Should Remember

- This is a **Speed vs. Compliance** assignment. The deadline pressure is real; the temptation to ship a visual refresh without fixing the task model is the failure mode to resist.
- The IRS portal's worst failure is not aesthetic — it is that **confirmation looks like error**. Fix that first. It costs little and pays in trust.
- ID.me's exclusion patterns are real and the TAC fallback is the equity guarantee. Do not let "phase 2" creep onto it.
- Plain Writing Act of 2010 and §508 are the floor, not the ceiling. Aim for a confirmation experience that a tired person under financial stress can read on a phone in a parking lot and walk away calmer than they arrived.
- The Chief Brand Architect owns the typography and color register at the system level. The CDO owns the task model and the language. Coordinate; do not duplicate.
- The launch gate is non-negotiable. A polished federal payment portal that fails disabled users, low-bandwidth users, or non-English speakers is not a design success. It is a public-service failure with better typography.

---

*This is a worked example produced by the `joe-gebbia-nds-chief-design-officer` skill (v1.1.0) against the IRS Payment Portal archetype defined in `NDS_KB.md`. It is illustrative — not an official NDS deliverable, not legal advice, and not a procurement recommendation.*
