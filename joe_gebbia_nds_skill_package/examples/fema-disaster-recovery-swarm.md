---
example_id: fema-disaster-recovery-001
skill_invoked: joe-gebbia-nds-swarm
skill_version: 1.1.0
input_service: FEMA Individual Assistance — disaster registration and aid disbursement
agency: Department of Homeland Security — Federal Emergency Management Agency
mandate_authority: EO 14338 (Aug 21, 2025)
hard_deadline: 2026-07-04
dominant_strategic_tension: Aesthetic Authority vs. Local Context
secondary_tension: Speed vs. Compliance
canonical_archetype: NDS_KB.md §Canonical Service Archetypes · Disaster Recovery (FEMA)
status: worked example · illustrative · not an official NDS deliverable
---

# NDS Swarm Modernization Report
## FEMA Individual Assistance — Disaster Registration & Aid Disbursement

## Conclusion

FEMA's Individual Assistance flow assumes broadband, stable address, intact documents, and a single English-speaking applicant per household. Every one of those assumptions fails on day one of a disaster. The swarm recommends a **registration-first, eligibility-later** model that captures intent through any channel (web, SMS, voice, in-person at a Disaster Recovery Center) on a one-screen mobile form, defers all document verification until safe upload conditions are restored, treats ineligibility messages as guidance rather than denial, and aligns the Brand Architect output explicitly against the Brand-vs-Democracy tension — no triumphalism, no "welcome home" register, no patriotic photography in a flow used by people who have just lost everything. Launch gate non-negotiables: the flow must work offline-first on a mobile device with intermittent connectivity, in Spanish at parity with English, and through a paper-based Disaster Recovery Center intake that produces an identical case record.

## Mission Brief

```yaml
mission:
  target_service: "FEMA Individual Assistance — disaster registration & aid disbursement"
  agency: "FEMA / DHS"
  mandate_authority: "EO 14338 (Aug 21, 2025)"
  hard_deadline: "2026-07-04"
  service_deadline: "Operationally ready before 2026 Atlantic hurricane season"
  public_user_groups:
    - "Displaced disaster survivors (acute trauma, immediate housing need)"
    - "Survivors with destroyed or missing identity documents"
    - "Low-bandwidth, mobile-only, intermittent-connectivity users"
    - "Spanish-dominant households (Caribbean, Gulf Coast, SW)"
    - "Elderly survivors in shelters and DRCs"
    - "Survivors with disabilities reliant on assistive tech"
    - "Tribal nation members on sovereign lands"
    - "Mixed-status households cautious about federal data collection"
  physical_touchpoints:
    - "Disaster Recovery Centers (mobile/temporary)"
    - "American Red Cross and partner shelters"
    - "Multi-Agency Resource Centers"
    - "Mobile FEMA registration vans"
  known_constraints:
    - "Stafford Act eligibility rules"
    - "Privacy Act + DHS PII handling"
    - "Section 308 of the Rehabilitation Act (FEMA-specific)"
    - "Disaster declaration triggers vary by event"
  dominant_strategic_tension: "Aesthetic Authority vs. Local Context"
  definition_of_done:
    - "Registration completable on a 3G phone in under 8 minutes"
    - "Spanish at parity with English at launch"
    - "DRC paper intake produces identical case record"
    - "Confirmation visually distinct from denial"
    - "Identity-document gap handled via attestation + deferred verification"
  evaluation_criteria_reference: "NDS_KB.md §Evaluation Criteria"
```

---

## Step 2 — Parallel Diagnosis (7 agents, parallel)

### 1. Civic Research Agent — `research_brief.md`

```yaml
agent_output:
  agent_name: "Civic Research"
  top_findings:
    - "Survivors register an average of 4.2 days post-event; first attempt fails at 38% (FEMA OIG 2023, illustrative figure to confirm)"
    - "Primary device on registration is a mobile phone with intermittent 3G/4G, often on a borrowed or unlocked device"
    - "Identity documents are destroyed, inaccessible, or in evacuation bags for ~22% of applicants in major disasters"
    - "Spanish-language registration completion is materially lower than English; gap widens in Caribbean disasters"
    - "Confusion between 'application received,' 'application pending inspection,' and 'application denied' generates a large share of call-center volume"
    - "Tribal-nation survivors face dual-jurisdiction confusion (FEMA + tribal emergency management)"
    - "Mixed-status households disproportionately self-exclude due to data-collection anxiety, even when eligible"
  evidence_or_assumptions:
    - "GAO and OIG post-disaster reports (Maria, Harvey, Ian, Helene)"
    - "Field interviews at DRCs would be required to validate; treat ratios as directional"
    - "Pew and Census ACS data on broadband access in declared-disaster counties"
  urgent_risks:
    - "Self-exclusion of mixed-status households is the largest equity blind spot"
    - "Identity-document gap is the single largest abandonment driver"
    - "Language access is currently treated as translation, not service design"
  recommended_actions:
    - "Capture intent first, verify identity later, on a documented attestation flow"
    - "Spanish at parity from launch, not phase 2"
    - "Tribal sovereignty acknowledgment and dual-path routing on entry"
    - "Explicit data-handling disclosure for mixed-status households"
  dependencies:
    - "Service Blueprint Agent (sequence)"
    - "Policy & Risk Agent (mixed-status data handling)"
```

### 2. Service Blueprint Agent — `service_blueprint.md`

Before-state journey: **Disaster → Survival → Shelter → Awareness of FEMA aid → Registration attempt → ID verification failure → Abandonment OR Re-attempt → Inspection scheduling → Inspection → Determination → Disbursement OR Appeal**.

```yaml
agent_output:
  agent_name: "Service Blueprint"
  top_findings:
    - "Six discrete handoff failures between registration, inspection, and disbursement"
    - "Status messaging conflates 'pending inspection,' 'pending document review,' and 'denied — appealable'"
    - "DRC paper intake produces a parallel case record that diverges from web record within 24h"
    - "No documented re-entry path for users whose phones died, lost service, or changed mid-flow"
  evidence_or_assumptions:
    - "FEMA process documentation (public-facing)"
    - "Cross-disaster case studies"
  urgent_risks:
    - "Parallel paper/digital records is a data-integrity hazard, not just UX"
    - "Status conflation drives appeals that are actually re-registrations"
  recommended_actions:
    - "Single case record from any channel"
    - "Three named statuses, plain language, no fourth"
    - "Documented session-resume on any device with case number + last-4 SSN OR DRC-issued PIN"
  dependencies:
    - "Design System Agent (status component)"
    - "Physical Environment Agent (DRC intake unification)"
```

Future-state path: **Any channel → 8-minute registration → Case number issued immediately → Attestation gate → Deferred verification window (30–90 days) → Inspection (if applicable) → Determination → Disbursement → Appeals path documented from day one**.

### 3. Design System Agent — `design_system_gap_analysis.md`

```yaml
agent_output:
  agent_name: "Design System"
  top_findings:
    - "FEMA flows use ~14 custom components where USWDS patterns exist (form, alert, modal, step indicator, file upload)"
    - "USWDS form pattern with single-question-per-screen on mobile is the right pattern for the registration flow"
    - "USWDS alert pattern (success/info/warning/error) collapses to three states for this service: received / pending / blocking"
    - "Step indicator must support 'save and resume' state; USWDS does not yet have a 'partial completion' visual; minor extension required"
    - "File upload pattern needs an offline-queueing extension (proposed USWDS contribution)"
  evidence_or_assumptions:
    - "Component audit against current FEMA flows"
    - "USWDS v3.x pattern library"
  urgent_risks:
    - "Continued custom UI maintenance burden across 4+ flows"
    - "Inconsistency with other disaster-aid flows (SBA, HUD CDBG-DR)"
  recommended_actions:
    - "Default to USWDS; document two extensions (partial-completion, offline-queue) as upstream contributions"
    - "Cross-agency consistency: align with SBA disaster loan flow visual register"
  dependencies:
    - "Brand Architect Agent (token-level alignment)"
    - "Accessibility Agent (component-level a11y)"
```

### 4. Brand Architect Agent — `brand_system_brief.md`

This is where the **Aesthetic Authority vs. Local Context** and **Brand vs. Democracy** tensions land hardest.

```yaml
agent_output:
  agent_name: "Brand Architect"
  top_findings:
    - "Current FEMA visual register oscillates between 'official seal' authoritative and 'community helpline' warm; result is neither"
    - "Patriotic imagery (flags, eagles, helicopter rescue photography) is operationally common in FEMA communications and is wrong for the registration flow specifically"
    - "Typography: USWDS Public Sans is appropriate; current FEMA microsites mix it with brand display faces that don't pass at small mobile sizes"
    - "Color: the flow currently relies heavily on FEMA blue, which is also the color of the 'pending' state in USWDS alert — a state collision the user feels but cannot name"
  evidence_or_assumptions:
    - "Review of current FEMA web flows, printed leave-behinds, DRC signage"
    - "WCAG 2.0 AA contrast measurement"
  urgent_risks:
    - "Triumphalist imagery on a flow used by people who just lost everything is a Brand-vs-Democracy red flag (KB §Strategic Tensions)"
    - "FEMA blue conflict with USWDS pending-state color erodes status legibility"
  recommended_actions:
    - "Strip patriotic and rescue imagery from the registration and status flows. Reserve those visuals for preparedness and public-information surfaces, not aid-receipt surfaces."
    - "Tone: factual, calm, second-person, present-tense. No 'we're here for you.' No 'we'll get you home.' Yes to 'You've registered. Your case number is X. Here is what happens next.'"
    - "Color: shift FEMA blue out of status-color register; reserve for header/footer identity. Use USWDS green/yellow/red strictly for status."
    - "Typography: Public Sans, single family, sized aggressively up on mobile for readability under stress"
    - "Signage at DRCs: same status colors, same four-task labels, same icons as web"
  dependencies:
    - "Design System Agent (token alignment)"
    - "Accessibility Agent (contrast verification)"
    - "Physical Environment Agent (DRC signage)"
```

### 5. Accessibility Agent — `accessibility_review.md`

```yaml
agent_output:
  agent_name: "Accessibility"
  top_findings:
    - "Section 508 / WCAG 2.0 AA — current flow has multiple blockers in error recovery (validation errors reset prior fields) and in screen-reader navigation of the inspection-scheduling step"
    - "Section 504 — the document-required gate is functionally exclusionary for survivors whose documents are destroyed; constitutes disability-adjacent and equity exclusion"
    - "Section 308 of the Rehabilitation Act (FEMA-specific) — applies to disaster communications and DRC physical accessibility"
    - "Mobile under 3G: client-side-JS-heavy flow degrades to unusable; server-rendered fallback required"
    - "Voice channel (1-800) and text-based registration (SMS short code in some disasters) lack parity with web"
    - "Cognitive load under acute stress is not modeled in the current flow; users in trauma state cannot read 200-word legal disclosures"
  evidence_or_assumptions:
    - "Automated audit floor; manual audit required (KB §AI Use Boundaries)"
    - "JAWS, NVDA, VoiceOver iOS, TalkBack tested on the four flows"
  urgent_risks:
    - "Document-required gate is an a11y/504 launch blocker"
    - "Error-recovery field reset is an a11y launch blocker for low-vision users navigating with screen readers"
    - "JS-heavy flow is a launch blocker under low-bandwidth conditions"
  recommended_actions:
    - "Block launch on any flow that does not preserve input across validation errors"
    - "Block launch on any flow that requires uploaded documents to issue a case number"
    - "Block launch on any flow that breaks at 3G or with JS disabled"
    - "Cognitive-load floor: no screen carries more than one decision; legal disclosure is summarized and expandable"
    - "Voice and SMS channels at parity, not phase 2"
  dependencies:
    - "Design System Agent"
    - "Policy & Risk Agent (attestation framework)"
```

### 6. Physical Environment Agent — `physical_touchpoint_blueprint.md`

```yaml
agent_output:
  agent_name: "Physical Environment"
  top_findings:
    - "DRCs are mobile/temporary; signage is currently per-deployment and inconsistent"
    - "Paper intake at DRCs uses a different form structure than the web flow; field order differs"
    - "Wait time at DRCs is unposted; survivors in trauma state queue for 90+ minutes without expectation"
    - "Document-handling at DRCs uses physical scanning that creates a delay between intake and digital record"
    - "Multilingual staff coverage at DRCs is uneven; reliance on phone-translation services adds 8–12 minutes per case"
    - "Tribal Nation deployments lack visible sovereignty acknowledgment in physical signage"
  evidence_or_assumptions:
    - "FEMA After-Action Reports (public)"
    - "American Red Cross shelter co-location data"
  urgent_risks:
    - "Paper/digital record divergence creates appeals that are records-management issues, not eligibility issues"
    - "Tribal-jurisdiction confusion at intake erodes trust"
  recommended_actions:
    - "DRC intake form mirrors the web flow field-for-field; same question order, same plain-language wording"
    - "DRC signage uses the same four-task labels, same icons, same color register as web — designed once by Brand Architect, deployable to any disaster"
    - "Status board in waiting area, same green/yellow/red, named cases (last name initial + case number)"
    - "Direct intake-to-digital: tablet-based intake at every DRC station, paper as fallback only, both producing identical case records"
    - "Tribal sovereignty acknowledgment in physical signage on Tribal Nation deployments, in coordination with tribal emergency management"
    - "Multilingual staff coverage as a deployment standard, not an aspiration"
  dependencies:
    - "Design System Agent (intake form components)"
    - "Brand Architect Agent (signage system)"
    - "Implementation Agent (deployment logistics)"
```

### 7. Policy & Risk Agent — `risk_register.md`

```yaml
agent_output:
  agent_name: "Policy & Risk"
  top_findings:
    - "Privacy: SSN + address + disaster-impact data is high-sensitivity; Privacy Act and DHS PII handling apply"
    - "Mixed-status households: data collection is operationally for FEMA eligibility, but survivors reasonably worry about cross-agency sharing"
    - "AI risk: any AI-assisted eligibility determination is prohibited (KB §AI Use Boundaries); AI is allowed for intake assistance, translation drafting, and case-routing only"
    - "Procurement risk: identity-verification vendor (e.g., ID.me, Login.gov) selection has historical accessibility and equity concerns"
    - "Political neutrality: branding and public-narrative copy must not associate aid receipt with any administration's identity (KB §Brand vs. Democracy)"
    - "Fraud: deferred-verification model raises fraud surface; offsetting controls required"
    - "Stafford Act eligibility decisions remain human-of-record"
  evidence_or_assumptions:
    - "DHS PII handling guidance"
    - "FEMA OIG fraud reports across recent disasters"
  urgent_risks:
    - "Cross-agency PII sharing perception is a self-exclusion driver"
    - "Deferred-verification fraud window must be modeled before launch"
  recommended_actions:
    - "Explicit, plain-language data-use disclosure at registration: what FEMA collects, what it shares, what it does not share"
    - "Login.gov as the default identity vendor for cross-agency continuity; document the non-smartphone fallback"
    - "Fraud offset: deferred verification + risk-scored audit sample + clear claw-back path"
    - "Public communications copy reviewed for political-neutrality flags before any deployment"
    - "AI use restricted to intake assistance, translation drafting, case routing; never adjudication"
  dependencies:
    - "Implementation Agent (fraud-offset workflow)"
    - "Communications Agent (data-use narrative)"
```

---

## Step 3 — Coordinator Synthesis

### Top 5 service failures

1. Document-required gate excludes survivors whose documents are destroyed.
2. Status messaging conflates *received*, *pending*, and *denied*; appeals are often re-registrations.
3. JS-heavy mobile flow breaks under 3G/intermittent connectivity.
4. DRC paper intake diverges from digital record within 24 hours.
5. Spanish-language flow is phase 2, when it should be parity.

### Top 5 redesign opportunities

1. Registration-first, verification-deferred model with attestation gate.
2. Three-state status system (received / pending / blocking) with USWDS alert pattern.
3. Offline-tolerant, server-rendered mobile flow with queued document upload.
4. Unified intake: any channel produces the same case record.
5. Tribal-sovereignty-aware routing and visible acknowledgment.

### Must-fix compliance issues

- Section 508 / WCAG 2.0 AA error-recovery and screen-reader blockers.
- Section 504 functional exclusion via document gate.
- Section 308 (FEMA-specific) communications and physical accessibility.
- Privacy Act and DHS PII disclosure plain-language compliance.

### Must-preserve safeguards

- Human-of-record adjudication on all Stafford Act decisions.
- Identity verification at appropriate-tier (Login.gov IAL2 where applicable) with documented non-smartphone fallback.
- Fraud-detection audit sample post-disbursement.
- Appeal rights surfaced from day one.

### Reusable design-system patterns

- USWDS form pattern with single-question-per-screen mobile.
- USWDS alert collapsed to three states.
- Proposed USWDS contributions: partial-completion step indicator, offline-queued file upload.

### Physical-space translation requirements

- DRC signage system designed once, deployed to any event.
- Tablet-based intake at every DRC station, paper as fallback only.
- Status board in waiting area, matched to web.
- Tribal sovereignty acknowledgment on Tribal Nation deployments.

### Strategic Tensions Named

- **Dominant:** Aesthetic Authority vs. Local Context. The system must standardize component-level UI and status semantics while preserving Tribal Nation acknowledgment, Spanish parity, low-bandwidth fallback, and disability-adjacent service paths.
- **Secondary:** Speed vs. Compliance. The July 4, 2026 forcing function is real; the temptation to ship before Spanish parity or the offline path is the failure mode to resist.
- **Active:** Brand vs. Democracy. The registration flow specifically must shed triumphalist branding. Preparedness surfaces may carry national identity; aid-receipt surfaces may not.

### Red Flags Checklist (KB §Red Flags · verbatim)

| Red flag | Status | Note |
|---|---|---|
| Polished but fails accessibility | ✗ Blocking | Error-recovery and document-gate fixes required pre-launch |
| AI-generated code without semantic review | ✓ Cleared | AI use restricted per KB §AI Use Boundaries; all generated code reviewed |
| Nationalistic branding overwhelming neutral public service | ✗ Blocking | Brand Architect output strips triumphalism from registration flow |
| Interfaces assuming high bandwidth or high digital literacy | ✗ Blocking | Server-rendered offline-tolerant flow is launch requirement |
| Centralized standards that erase agency-specific service needs | ✓ Cleared | Tribal sovereignty path, language parity, DRC variability preserved |
| Physical redesigns ignoring frontline workflows | ✓ Cleared | Physical Environment Agent recommendations coordinated with DRC operations |
| Service simplification removing necessary legal/security/anti-fraud friction | ✓ Cleared | Deferred-verification model + audit sample + claw-back path |

Three flags currently **blocking**. All three are addressable inside the Phase 1–3 plan below.

---

## Step 4 — Redesign Sprint Output

### Future-State Service Model

**Any channel → 8-minute registration → Case number issued → Attestation gate → Deferred verification (30–90 days) → Inspection if applicable → Determination → Disbursement → Documented appeal path.**

Channels of registration, all producing the same case record:

- Web (mobile-first, server-rendered, offline-tolerant)
- SMS short code (text-based registration in supported disasters)
- Voice (1-800, with case-context handoff to web/DRC)
- DRC walk-in (tablet-based intake, paper fallback)
- Mobile registration van (same tablet intake, same record)

### Digital Design System Plan

- USWDS as canonical. Two documented upstream contributions: partial-completion step indicator, offline-queued file upload.
- Single typography family (Public Sans), aggressive mobile sizing.
- Three status colors only (USWDS green/yellow/red), FEMA blue reserved for identity not status.
- One decision per screen on mobile registration.
- All form input preserved across validation errors.

### Physical-Service Translation

- DRC signage kit designed once, deployable to any event.
- Tablet intake at every station, identical case-record output.
- Status board in waiting area, three colors, named cases.
- Tribal sovereignty acknowledgment on Tribal Nation deployments.
- Multilingual staffing as deployment standard.
- Direct DRC-to-web session handoff: a survivor who starts at a DRC and finishes on their phone resumes the same record.

### Accessibility and Inclusion Gate

- Section 508 / WCAG 2.0 AA full manual + automated audit pass on all four flows.
- Section 504 attestation-based document handling.
- Section 308 (FEMA) communications and physical-access compliance.
- Spanish parity at launch; Tagalog, Vietnamese, Mandarin, Korean, Haitian Creole on Phase 2.
- Voice and SMS at parity with web.
- Server-rendered fallback verified at 3G.
- Cognitive-load floor: one decision per screen, no legal wall.

### Policy, Privacy, and Ethics Register

- Plain-language data-use disclosure at registration.
- Login.gov as default identity; documented non-smartphone fallback.
- AI use restricted to intake assistance, translation drafting, case routing.
- Political-neutrality review on all public-facing communications.
- Fraud offset: deferred verification + audit sample + claw-back path.
- Mixed-status household disclosure: what FEMA collects, what it shares, what it does not.

### Implementation Roadmap

| Phase | Window | Scope |
|---|---|---|
| **Phase 0** | Now → Q3 2025 | Baseline capture; current-flow telemetry; field interviews at active DRCs; tribal-emergency-management consultation; vendor risk review |
| **Phase 1 — Quick wins** | Q4 2025 | USWDS alert standardization; plain-language pass; error-recovery fix; Spanish content audit |
| **Phase 2 — Pilot** | Q1 2026 | Registration-first attestation model piloted in two states / one tribal nation; DRC tablet intake at five sites; voice/SMS parity beta |
| **Phase 3 — Launch** | Pre-July 4, 2026 | Full rollout aligned with start of 2026 Atlantic hurricane season; Spanish parity verified; offline-tolerant flow verified; DRC signage kit standard issue |
| **Phase 4 — v2** | Post-deadline | Additional language parity; cross-agency consistency with SBA disaster loan flow; expanded tribal-jurisdiction routing |

### Launch Gate

```yaml
launch_gate:
  accessibility_pass: required                              # § 508, § 504, § 308
  mobile_pass: required                                     # 3G, JS-disabled fallback
  privacy_review_complete: required                         # Privacy Act, DHS PII
  legal_safeguards_preserved: required                      # Stafford Act, fraud audit
  physical_translation_complete: required                   # DRC kit, tablet intake
  metrics_defined: required
  agency_owner_identified: required                         # FEMA, not contractor
  human_escalation_available: required                      # voice, DRC, documented
  duplicated_design_cost_reduction_planned: required        # 14 custom → USWDS
  cross_agency_consistency_score_defined: required          # vs. SBA, HUD CDBG-DR
  civic_dignity_review_passed: required                     # tone, imagery, language
  measurable_baseline_captured: required
  red_flags_checklist_cleared: required                     # 3 currently blocking
  dominant_strategic_tension_named: "Aesthetic Authority vs. Local Context"
```

### Public Narrative — Communications Agent — `communications_packet.md`

Agency-facing memo and public-facing explanation. Two excerpts:

**Public, plain language:**
> If a disaster has affected your home, you can register with FEMA online, by phone, by text, or in person at a Disaster Recovery Center. You will get a case number right away, even if you do not have your documents with you. You can add documents later. If you are not sure whether you qualify, register anyway — we will tell you what we can do.

**Tone rules:**
- Second-person, present-tense, factual.
- No "we are here for you." No "we will get you home." No patriotic framing.
- Names the worst case plainly: *"You may be denied. If you are, you can appeal. We will tell you how."*
- Acknowledges the data question directly: *"FEMA collects your name, address, and disaster impact to decide your aid. We do not share this with immigration enforcement."*

**Response lines for criticism:**
- *On fraud risk under deferred verification:* "Verification is deferred, not waived. We audit a risk-scored sample of cases and recover any incorrect payments."
- *On the absence of patriotic imagery:* "This is the registration flow. People using it have just lost something. Our job is to be useful, not inspirational."
- *On Spanish parity:* "Spanish is at parity at launch because half of the most-affected counties in the last five years have been Spanish-dominant. This is not a translation. It is a service."

---

## Success Metrics (defined by Implementation Agent)

| Metric | Direction | Target |
|---|---|---|
| Registration completion rate (mobile, 3G) | ↑ | ≥ 90% |
| Time-to-case-number median | ↓ | ≤ 8 minutes |
| Spanish completion rate vs. English | parity | ≤ 3-point gap |
| Document-gate abandonments | ↓ | ≥ 90% reduction (gate removed) |
| Status-confusion call-center volume | ↓ | ≥ 40% reduction |
| DRC paper/digital record divergence | ↓ | ≤ 1% within 24h |
| Section 508 / WCAG 2.0 AA blockers on the four flows | n/a | Zero |
| USWDS adoption (custom components retired) | ↑ | 14 → 0 |
| Cross-agency consistency score (vs. SBA, HUD CDBG-DR) | ↑ | Visual register matched |
| Civic dignity indicator | qualitative | User research confirms survivors feel *informed, not judged* |
| Fraud rate post-deferred-verification | n/a | Within historical envelope |

## What I Should Remember

- This is an **Aesthetic Authority vs. Local Context** assignment. Standardize the components, the status semantics, and the case record. Preserve the language access, tribal sovereignty, and offline path.
- The single highest-impact change is not visual. It is the **document-required gate**, which is functionally exclusionary on day one of every disaster. Remove it.
- The Brand Architect's contribution here is mostly *removal* — strip triumphalist imagery and patriotic register from the registration flow. Reserve them for preparedness, not aid-receipt.
- The DRC is not a back-office detail. The paper-to-digital divergence is the source of a large share of appeals. Unify the case record.
- The launch gate currently has three blocking red flags. All three are addressable in Phase 1–2. Treat them as blocking, not as phase-two tickets.
- The mandate's July 4, 2026 deadline lines up almost exactly with the start of the 2026 Atlantic hurricane season. That is the real forcing function. Ship before storms.

---

*This is a worked example produced by the `joe-gebbia-nds-swarm` skill (v1.1.0) against the FEMA Disaster Recovery archetype defined in `NDS_KB.md`. It is illustrative — not an official NDS deliverable, not legal advice, and not a procurement recommendation.*
