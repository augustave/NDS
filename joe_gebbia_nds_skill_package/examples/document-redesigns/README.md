# Document Redesigns

Worked examples of the **CDO skill** (`joe-gebbia-nds-chief-design-officer`) applied to real federal documents. These differ in kind from the worked examples one directory up — those are skill runs against *canonical service archetypes* from `NDS_KB.md`. These are skill runs against *actual published documents* in the wild.

Each redesign ships as a pair:

- `*-redesign.html` — a single-file, self-contained HTML redesign of the document
- `*-REASONING.md` — a decision trace explaining the UX/product problem found, the design language chosen, and traces from doctrine + (when applicable) inspiration sources to each decision

## Specimens in this directory

### Russian Navy 2015 · ONI · DOPSR 16-S-0274

**Source:** *The Russian Navy — A Historic Transition.* Office of Naval Intelligence, December 2015, Unclassified, public release, 68 pp.

- [`russian-navy-2015-redesign.html`](./russian-navy-2015-redesign.html)
- [`russian-navy-2015-REASONING.md`](./russian-navy-2015-REASONING.md)

**Phase exercised:** Phase 3 (Design-System Alignment)
**Dominant tension:** Brand vs. Democracy
**Constraint:** "Do not use any aesthetic from memory."
**Aesthetic found:** Hydrographic Intelligence — derived from the visual heritage of nautical charts (the institutional ancestor of ONI itself). Chart-paper substrate, soundings, bathymetric contour lines, lat/lon graticule, compass roses.
**Key UX moves:** stripped Russian-state iconography (tricolor ribbon, double-headed eagle, St. George's ribbon) from US-government chrome; added 6 information-design figures (fleet disposition map, Soviet→Russian inventory delta, layered-defense cross-section, 320-year timeline, command tree, missions framework) where source had only one tiny bar chart in 68 pages.

---

### ATA 2025 · ODNI · National Intelligence Council

**Source:** *Annual Threat Assessment of the U.S. Intelligence Community.* Office of the Director of National Intelligence, March 2025, Unclassified, public release, 31 pp.

- [`ata-2025-redesign.html`](./ata-2025-redesign.html)
- [`ata-2025-REASONING.md`](./ata-2025-REASONING.md)

**Phase exercised:** **Phase 4 (Service Redesign)** — the first specimen in the suite to exercise Phase 4 rather than Phase 3.
**Dominant tension:** Aesthetic Authority vs. Local Context (where "local context" is the *reader's* workflow that the source erased)
**Constraint:** Mandatory inspiration sources — a textile-collage archive sheet (I1) and a Wunderkammer 05 gallery poster (I2). Both must be used substantively.
**Aesthetic found:** *Wunderkammer of Threats* — warm linen substrate + blueprint grid + coral accents (I1) synthesized with heavy multi-scale Bricolage Grotesque + geometric vectors + LAT/LONG coordinates (I2). The metaphor is honest: an annual threat assessment is literally a curated cabinet of categorized concerns.
**Key UX move:** restructured the document around the *reader's* task. Source = linear narrative by actor (China → Russia → Iran → DPRK), forcing readers to read all 31 pages to answer a cross-actor question. Redesign = **6-actor × 8-domain threat matrix** as the lead artifact, with the original narrative as a deep-dive layer beneath. Cross-actor questions answerable in ~20 seconds.

---

## Discipline notes

- These are **chrome and product redesigns**, not rewrites of strategic content. Named entities, specific numbers, direct quotations, and operational claims are preserved verbatim or in close paraphrase from source.
- Severity rankings (where they appear, as in the ATA matrix) are calibrated to the source's own emphasis — italic lead sentences, "most direct/serious" callouts, page-budget — not to designer judgment.
- "Not assessed" cells are marked as such where the source does not address an actor × domain intersection. The skill does not invent intelligence to fill gaps.
- AI use boundaries per `NDS_KB.md` §AI Use Boundaries: layout-led work, not analytical interpretation. The redesigns surface what the source says; they do not validate it.

## Where the source documents live

The PDFs themselves live in `Gebbia-DOCS/` at the package root and are gitignored as working materials. Each REASONING document cites the source by issuing agency, date, classification, page count, and case number.

## Want to see the skill operating across multiple documents?

Look at how each REASONING document traces decisions to the **same doctrine pillars** while producing **completely different visual systems** for documents with different subjects, audiences, and failure modes. That comparison is the generalization test:

> *Same logic. Different specifics. That is what generalization looks like.*
