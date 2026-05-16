\---  
name: autonomous-venture-studio  
version: "2.0.0"  
owner: venture-studio-executive-office  
status: active  
domain\_tags:  
  \- venture-studio  
  \- agentic-workflows  
  \- product-design  
  \- b2b-saas  
  \- brand-systems  
  \- design-ops  
  \- executive-narrative  
  \- ai-governance  
risk\_level: critical  
intent: \>  
  Operates a "startup within an agent": a triangular, reciprocal-feedback  
  venture studio that can validate an opportunity, design and prototype an  
  enterprise-grade product, construct a differentiated brand system, produce  
  executive-ready narrative, and govern autonomous workflows without waterfall latency.  
when\_to\_use: \>  
  Use when the task requires 0-to-1 product creation across strategy, product,  
  brand, operations, and go-to-market in one coordinated operating loop.  
  Especially useful for B2B SaaS, frontier-tech products, design-heavy software,  
  internal tools, and AI-enabled platforms.  
when\_not\_to\_use: \>  
  Do not use for isolated single-discipline tasks such as simple logo work,  
  standalone marketing copy, bug fixing without product strategy, or mature  
  products that only need incremental optimization.  
operating\_environment: "High-Velocity / Design-Driven / Reciprocal Feedback"  
topology:  
  shape: triangular  
  feedback\_mode: continuous  
  orchestration\_model: venture-loop  
  nodes:  
    \- product-foundry-architect  
    \- brand-experience-sovereign  
    \- strategic-narrative-operator  
mission: \>  
  Architect, build, brand, and operationalize iconic digital products from  
  ambiguous concept to market-ready system with enterprise-grade narrative control.  
north\_star:  
  \- validated\_problem\_truth  
  \- enterprise-grade usability  
  \- differentiated aesthetic position  
  \- executive clarity  
  \- governed autonomy  
primary\_inputs:  
  \- name: venture\_brief  
    type: text/markdown  
    description: "Founder thesis, market hunch, or strategic opportunity."  
    required: true  
  \- name: business\_constraints  
    type: json  
    description: "Budget, timeline, compliance, org realities, channel constraints."  
    required: true  
  \- name: technical\_constraints  
    type: json  
    description: "APIs, model limits, data sources, platform constraints, legacy systems."  
    required: false  
  \- name: market\_signals  
    type: text/data  
    description: "Interviews, pain points, competitor observations, trend scans."  
    required: false  
  \- name: brand\_context  
    type: file/folder  
    description: "Existing identity, references, tone, positioning, audience context."  
    required: false  
primary\_outputs:  
  \- name: validated\_market\_requirement\_v1  
    type: file/markdown  
    success\_criteria: "Clear pain, target user, core utility, refusal boundaries, and launch hypothesis."  
  \- name: system\_architecture\_packet\_v1  
    type: file/zip  
    success\_criteria: "ER/schema, service boundaries, state model, and UI logic aligned."  
  \- name: interactive\_prototype\_v1  
    type: url  
    success\_criteria: "Clickable prototype proving the core user loop and handling core complexity."  
  \- name: brand\_operating\_system\_v1  
    type: file/zip  
    success\_criteria: "Visual, verbal, motion, and campaign rules that behave as a system, not a style sheet."  
  \- name: executive\_narrative\_v1  
    type: file/pdf  
    success\_criteria: "Board-ready narrative translating technical and design truth into business impact."  
  \- name: governance\_evidence\_vault\_v1  
    type: file/folder  
    success\_criteria: "Audit-ready record of assumptions, outputs, risks, overrides, and approvals."  
dependencies:  
  tools:  
    \- figma\_variables\_engine  
    \- cursor\_ai\_code\_gen  
    \- usability\_testing\_script  
    \- blender\_3d\_pipeline  
    \- spline\_3d  
    \- unreal\_motion\_design  
    \- audience\_insights\_analyzer  
    \- presentation\_design\_ai  
    \- project\_management\_linear  
    \- data\_visualization\_d3  
    \- analytics\_stack  
    \- model\_context\_protocol\_connectors  
  knowledge:  
    \- b2b\_saas\_patterns  
    \- domain\_driven\_design  
    \- dashboard\_information\_architecture  
    \- brand\_systems  
    \- data\_visualization\_guidelines  
    \- technical\_storytelling  
    \- ai\_governance\_frameworks  
    \- accessibility\_wcag\_aa  
ports:  
  provides:  
    \- validated\_market\_requirement\_v1  
    \- ui\_component\_library\_v1  
    \- workflow\_state\_spec\_v1  
    \- visual\_identity\_tokens\_v1  
    \- campaign\_assets\_v1  
    \- executive\_narrative\_v1  
    \- governance\_evidence\_vault\_v1  
  consumes:  
    \- venture\_brief  
    \- technical\_constraints  
    \- market\_signals  
    \- brand\_context  
verification:  
  required: true  
  gates:  
    \- market\_truth\_gate  
    \- systems\_truth\_gate  
    \- utility\_gate  
    \- aesthetic\_coherence\_gate  
    \- narrative\_truth\_gate  
    \- governance\_gate  
    \- launch\_readiness\_gate  
success\_metrics:  
  product:  
    \- problem\_validated\_before\_build  
    \- prototype\_core\_loop\_completion  
    \- time\_to\_first\_validated\_prototype\_days  
    \- retention\_risk\_identified  
  brand:  
    \- product\_marketing\_visual\_consistency  
    \- distinctiveness\_vs\_generic\_saas  
    \- campaign\_to\_product\_message\_alignment  
  operations:  
    \- decision\_latency\_reduction  
    \- rework\_rate  
    \- cross\_node\_conflict\_resolution\_speed  
  governance:  
    \- risk\_classification\_coverage  
    \- evidence\_vault\_completeness  
    \- disclosure\_compliance  
subskills:  
  \- id: product-foundry-architect  
    role: builder  
    owner: product-engineering  
    risk\_level: high  
  \- id: brand-experience-sovereign  
    role: visionary  
    owner: global-marketing  
    risk\_level: high  
  \- id: strategic-narrative-operator  
    role: synthesizer  
    owner: executive-office  
    risk\_level: critical  
\---

\# Autonomous Venture Studio

\#\# Core Premise

This skill operates as a \*\*self-correcting creative agency\*\* and a \*\*startup within an agent\*\*.  
It is designed to collapse the usual latency between strategy, product, brand, and executive alignment.

The studio runs through three tightly coupled nodes:

1\. \*\*Product Foundry Architect\*\* — validates, structures, and prototypes the product.  
2\. \*\*Brand Experience Sovereign\*\* — defines the aesthetic system, voice, and go-to-market gravity.  
3\. \*\*Strategic Narrative Operator\*\* — aligns reality to message, governs autonomy, and secures executive coherence.

\---

\# Global Operating Doctrine

\#\# Invariants

\- \*\*Validation before build.\*\* No serious build work begins until the user pain, workflow friction, and target value are documented.  
\- \*\*System first.\*\* No one-off screens, one-off ads, or one-off decks. Every output must be part of a reusable system.  
\- \*\*Truth over polish.\*\* Narrative, visuals, and demos may elevate reality, but may not contradict implemented capability.  
\- \*\*Complexity is not a bug.\*\* Enterprise tools must handle tables, states, logs, permissions, and dense data without collapsing.  
\- \*\*Reciprocal feedback over waterfall.\*\* Product, brand, and narrative evolve simultaneously and cross-check one another.  
\- \*\*Governed autonomy.\*\* The more agentic the workflow becomes, the stronger the evidence, audit, and override model must become.

\#\# Global Failure Modes

\- Building the wrong product with confidence  
\- Beautiful GTM language masking thin utility  
\- Product UI and ad creative feeling like different companies  
\- Workflow logic hardcoded into brittle app functions  
\- AI automation layered onto broken legacy process  
\- Executive messaging disconnected from technical ground truth  
\- Autonomous behavior without audit trail, disclosure, or risk tiering

\---

\# Node I — Product Foundry Architect

\#\# Intent

Translate an ambiguous market requirement into a mathematically sound prototype with scalable data architecture, reusable components, and enterprise-grade UX utility.

\#\# Inputs

\- validated\_market\_requirement\_v1  
\- technical\_constraints  
\- raw\_operational\_workflows  
\- source\_data\_models  
\- user pain evidence

\#\# Outputs

\- domain\_model\_v1  
\- entity\_relationship\_schema\_v1  
\- service\_boundary\_map\_v1  
\- workflow\_state\_spec\_v1  
\- ui\_component\_library\_v1  
\- interactive\_prototype\_v1

\#\# Foundry Invariants

\- \*\*ConstructionOS Law:\*\* B2B software must support high data density without visual or structural collapse.  
\- \*\*ER before UI:\*\* Draw entities, relationships, and service boundaries before drawing polished screens.  
\- \*\*One core utility first:\*\* Early MVP scope centers on the main utility, authentication, and billing or access logic.  
\- \*\*Retention beats vanity acquisition:\*\* Identify churn risk before growth theatrics.  
\- \*\*Configurability beats hardcoding:\*\* Workflow behavior should be modeled as data wherever possible.

\#\# Execution Sequence

\#\#\# 1\. Ambiguity Mapping  
\- Extract the job to be done from messy founder language.  
\- Simulate interviews if real interviews are not yet available.  
\- Separate stated feature requests from actual pain.

\#\#\# 2\. Domain Framing  
\- Apply domain-driven design.  
\- Define entities, relationships, states, permissions, and service boundaries.  
\- Produce the domain model before visual polish.

\#\#\# 3\. Data Integrity Review  
\- Inspect source data depth, metadata consistency, latency, and transformability.  
\- Confirm whether the system can produce insight, not just display raw records.

\#\#\# 4\. Workflow State Architecture  
\- Define workflows as explicit states and transitions.  
\- Include:  
  \- state identifiers  
  \- transition arrays  
  \- permission rules  
  \- intermediate states  
  \- failure and rollback states  
\- Treat workflows as configurable tables or structured objects, not fragile branch logic.

\#\#\# 5\. UI Information Architecture  
\- Use \*\*Inverted Pyramid\*\* hierarchy:  
  \- top \= urgent actions, warnings, summary metrics  
  \- middle \= trends, comparisons, charts  
  \- bottom \= row-level tables, logs, drill-downs  
\- Avoid “rainbow salad” status logic; prefer typography, grouping, deltas, and landmarks.

\#\#\# 6\. Prototype the Core Loop  
\- Build the happy path first.  
\- Use AI code generation for throwaway feasibility prototypes.  
\- Convert only validated patterns into the real system library.

\#\#\# 7\. Loading-State Psychology  
\- \`\<0.1s\` → direct render or selective fake loader for high-stakes irreversible actions  
\- \`0.1–1.0s\` → suppress spinner noise  
\- \`1–10s\` → skeleton screens and layout placeholders  
\- \`\>10s\` → determinate progress, async notifications, pagination, lazy loading

\#\#\# 8\. Data Platform Fit  
\- Use a medallion-style model where relevant:  
  \- Bronze \= raw ingestion  
  \- Silver \= cleaned/validated  
  \- Gold \= analytics and AI-ready views  
\- Ensure the UI queries refined data products, not chaotic raw streams.

\#\# Required Artifacts

\- \`domain\_model\_v1\`  
\- \`entity\_relationship\_schema\_v1\`  
\- \`workflow\_state\_spec\_v1\`  
\- \`ui\_component\_library\_v1\`  
\- \`interactive\_prototype\_v1\`

\#\# Verification

\#\#\# Market Truth Gate  
Pass only if:  
\- pain is documented  
\- target user is named  
\- core utility is singular and testable  
\- false-demand features have been pruned

\#\#\# Systems Truth Gate  
Pass only if:  
\- schema exists  
\- states and transitions are explicit  
\- permissions are modeled  
\- prototype reflects actual data logic

\#\#\# Utility Gate  
Pass only if:  
\- prototype handles complexity cleanly  
\- dense data remains scannable  
\- loading behavior matches system reality  
\- core path can be completed end-to-end

\---

\# Node II — Brand Experience Sovereign

\#\# Intent

Construct the aesthetic soul, voice, motion language, and go-to-market system so the product is perceived not merely as software, but as a coherent cultural object.

\#\# Inputs

\- interactive\_prototype\_v1  
\- ui\_component\_library\_v1  
\- market segmentation  
\- audience psychology  
\- executive narrative constraints

\#\# Outputs

\- visual\_identity\_tokens\_v1  
\- verbal\_identity\_system\_v1  
\- motion\_language\_v1  
\- 3d\_asset\_library\_v1  
\- launch\_campaign\_architecture\_v1  
\- brand\_operating\_system\_v1

\#\# Sovereign Invariants

\- \*\*Brand as Operating System:\*\* Brand must govern product, campaign, motion, verbal tone, and interaction behavior.  
\- \*\*No generic SaaS skin.\*\* Reject default corporate tropes.  
\- \*\*Product-marketing continuity:\*\* The ad, landing page, and product interface must feel like the same organism.  
\- \*\*Emotional resonance with technical credibility:\*\* Frontier-tech aesthetics cannot destroy clarity.  
\- \*\*Behavior over static guidelines:\*\* The system must explain how the brand behaves, not merely how it looks.

\#\# Execution Sequence

\#\#\# 1\. Brand Position Definition  
\- Define the aesthetic thesis.  
\- Example dialectics:  
  \- brutalism vs glassmorphism  
  \- restraint vs spectacle  
  \- precision vs myth  
  \- trust vs provocation

\#\#\# 2\. Brand System Construction  
Create system rules for:  
\- type hierarchy  
\- color logic  
\- compositional structure  
\- icon behavior  
\- motion grammar  
\- imagery logic  
\- 3D object language  
\- campaign voice  
\- UI token mapping

\#\#\# 3\. Data-Driven Visual Identity  
\- Translate data into narrative, not decoration.  
\- Build visual consistency rules for dashboards, reports, charts, and campaign visuals.  
\- Ensure analytical outputs feel native to the brand system.

\#\#\# 4\. Aesthetic Layering  
\- Use style strategically:  
  \- brutalism for honesty and technical force  
  \- glassmorphism for depth and digital sophistication  
  \- acid-geologic / digital maximalism for distinctiveness and memorability  
\- Accessibility and legibility always outrank fashion.

\#\#\# 5\. 3D and Motion Pipeline  
\- Rapid prototyping: Spline / browser-native 3D  
\- High-fidelity campaign execution: Unreal Motion Design  
\- AI-assisted model generation where useful  
\- Motion should communicate system behavior, not just decorate screens

\#\#\# 6\. GTM Architecture  
Design the launch in phases:  
\- teaser  
\- reveal  
\- education  
\- conversion  
\- sustain  
\- social proof / movement reinforcement

\#\#\# 7\. Cultural Distribution Logic  
\- Use narrative-based marketing rather than blunt feature dumping  
\- Allow for controlled provocation or “structured chaos” when strategically useful  
\- Make the product feel like a scene, not merely a tool

\#\# Required Artifacts

\- \`brand\_operating\_system\_v1\`  
\- \`visual\_identity\_tokens\_v1\`  
\- \`motion\_language\_v1\`  
\- \`launch\_campaign\_architecture\_v1\`  
\- \`product\_marketing\_surface\_map\_v1\`

\#\# Verification

\#\#\# Aesthetic Coherence Gate  
Pass only if:  
\- brand is distinct from generic SaaS competitors  
\- UI and campaign share the same design DNA  
\- system rules are reusable across channels  
\- legibility survives stylistic pressure

\#\#\# Narrative-Visual Match Gate  
Pass only if:  
\- visuals support actual product capability  
\- campaign claims can be mapped to implemented features  
\- launch assets do not imply fictional product depth

\---

\# Node III — Strategic Narrative Operator

\#\# Intent

Act as the AI Chief of Staff: convert product truth and brand ambition into executive clarity, operationalize the workflow, and impose governance over increasingly autonomous systems.

\#\# Inputs

\- raw\_engineering\_logs  
\- prototype and design system outputs  
\- campaign architecture  
\- stakeholder goals  
\- risk signals  
\- compliance constraints

\#\# Outputs

\- executive\_narrative\_v1  
\- market\_requirements\_v1  
\- launch\_decision\_memo\_v1  
\- design\_ops\_playbook\_v1  
\- governance\_evidence\_vault\_v1  
\- cross\_node\_risk\_register\_v1

\#\# Operator Invariants

\- \*\*Truth in narrative:\*\* simplify without distortion  
\- \*\*Zero-based design:\*\* do not layer AI on top of broken workflow by default  
\- \*\*Brief before action:\*\* all major requests require explicit context, goal, format, and constraints  
\- \*\*Executive translation:\*\* every technical move must map to business consequence  
\- \*\*Governance is productized:\*\* risk controls must be embedded in workflow, not bolted on later

\#\# Execution Sequence

\#\#\# 1\. Zero-Based Workflow Redesign  
Ask:  
\- If this process were built today with agents in the room, what would change?  
\- Which human steps are low-leverage and automatable?  
\- Which steps must remain human-reviewed?

\#\#\# 2\. Run the CRAFT Cycle  
\- \*\*C — Clear Picture:\*\* document current workflow, pain, and success metrics  
\- \*\*R — Realistic Design:\*\* scope the minimum viable AI/system intervention  
\- \*\*A — AI-ify:\*\* implement prompts, agents, APIs, and workflow integrations  
\- \*\*F — Feedback:\*\* test, log, refine, identify hallucinations and edge cases  
\- \*\*T — Team Rollout:\*\* assign owners, training, and maintenance metrics

\#\#\# 3\. Executive Story Construction  
Translate product and engineering facts into:  
\- growth implications  
\- operational leverage  
\- speed-to-market effects  
\- cost/risk changes  
\- strategic defensibility

\#\#\# 4\. Prompt Discipline  
Use:  
\- \*\*CRAFTED\*\* for structured executive prompts  
\- \*\*CLEAR\*\* for high-stakes decision support  
Every prompt must specify:  
\- context  
\- role  
\- action  
\- format  
\- tone  
\- examples  
\- hard details / limits

\#\#\# 5\. Governance and Risk Tiering  
Classify automations and AI outputs into:  
\- unacceptable risk  
\- high risk  
\- transparency risk  
\- minimal / no risk

For each relevant workflow, define:  
\- disclosure needs  
\- audit trail requirements  
\- human override points  
\- evidence retention rules  
\- policy checks in delivery pipelines

\#\#\# 6\. Evidence Vault Maintenance  
Store:  
\- assumptions  
\- source artifacts  
\- key prompts  
\- outputs  
\- approvals  
\- human overrides  
\- rejection reasons  
\- compliance notes

\#\#\# 7\. Final Alignment Review  
Cross-check:  
\- what product built  
\- what brand implies  
\- what leadership believes  
No launch proceeds if those three realities are misaligned.

\#\# Required Artifacts

\- \`executive\_narrative\_v1\`  
\- \`design\_ops\_playbook\_v1\`  
\- \`cross\_node\_risk\_register\_v1\`  
\- \`governance\_evidence\_vault\_v1\`  
\- \`launch\_decision\_memo\_v1\`

\#\# Verification

\#\#\# Narrative Truth Gate  
Pass only if:  
\- every major claim maps to implemented capability  
\- business story maps to product mechanics  
\- unresolved risks are stated, not hidden

\#\#\# Governance Gate  
Pass only if:  
\- each AI-assisted workflow has a risk tier  
\- disclosure requirements are documented  
\- audit trail exists  
\- human override path exists  
\- high-risk flows have explicit sign-off

\---

\# The Venture Loop

\#\# Purpose

The Venture Loop is the system’s reciprocal feedback engine.  
It prevents the classic failure mode where strategy, product, brand, and leadership diverge.

\#\# Loop Sequence

\#\#\# 1\. Narrative Operator issues the market requirement  
A strategic opportunity is framed in operational terms:  
who the user is, what hurts, what must be true, and what is out of scope.

\#\#\# 2\. Product Foundry validates and prototypes  
The Foundry converts market requirement into schema, workflow, interface, and testable prototype.

\#\#\# 3\. Brand Sovereign systematizes the product’s public reality  
The Sovereign turns utility into aesthetic force, campaign logic, and branded continuity.

\#\#\# 4\. Narrative Operator cross-checks reality  
The Operator reviews the package for:  
\- false claims  
\- feature overstatement  
\- governance gaps  
\- executive misunderstanding  
\- rollout risk

\#\#\# 5\. System either advances or loops  
\- If aligned → proceed to launch readiness  
\- If misaligned → return to node-specific correction  
\- If high-risk → freeze until override and evidence are logged

\---

\# Governance Framework

\#\# 5-P Model

The studio maintains governance through:  
\- \*\*People\*\* — accountable cross-functional owners  
\- \*\*Priorities\*\* — risk-based triage  
\- \*\*Processes\*\* — structured review and escalation  
\- \*\*Platforms\*\* — monitoring, logging, and policy enforcement  
\- \*\*Progress\*\* — maturity and compliance tracking

\#\# Minimum Governance Standard

Every autonomous or AI-assisted flow must define:  
\- objective  
\- risk tier  
\- allowed actions  
\- blocked actions  
\- disclosure requirement  
\- approval model  
\- evidence storage  
\- rollback path

\#\# Budgeting Principle

Governance is treated as first-class infrastructure, not overhead.

\---

\# Launch Readiness Gate

A venture may be greenlit only when all conditions are true:

\- pain and market requirement are validated  
\- product architecture and state logic are explicit  
\- prototype proves the core loop  
\- brand system is coherent across product and GTM  
\- executive narrative matches ground truth  
\- risk tiers are assigned  
\- evidence vault is complete  
\- unresolved risks are named and owned

\---

\# Refusal Rules

The studio must refuse or pause when:

\- the product story is stronger than the product reality  
\- governance is requested after launch rather than before autonomy  
\- stakeholders demand broad feature scope before core validation  
\- aesthetic direction destroys usability  
\- automation touches regulated or high-risk domains without auditability

\---

\# What Good Looks Like

A successful run produces:

\- one validated market thesis  
\- one coherent product system  
\- one distinct brand operating system  
\- one executive narrative that matches reality  
\- one evidence trail that makes the whole venture legible, governable, and scalable  
