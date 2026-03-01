# CLAUDE.md

## Project Overview

This repository manages the content overhaul of BYU-Idaho's GenAI website (<www.byui.edu/genai>). IT now has a leadership role in GenAI governance, and the CIO has tasked the AI Engineering team with revamping the site.

### What This Repo Is

- A content project, not a code project
- Current-State/: FireCrawl webcrawl of the existing GenAI site (Markdown)
- Future-State/: New web content (Markdown) to be sent to University Communications for publishing in Brightspot CMS

### Directory Tree

```
BYUI-GenAI-Site/
├── .claude/
│   ├── reference-docs/
│   │   └── data-classification-policy.md
│   └── settings.local.json
├── .gitignore
├── CHANGELOG.md
├── CLAUDE.md
├── Current-State/
│   ├── about.md
│   ├── academic-integrity.md
│   ├── ai-in-academics.md
│   ├── ai-in-the-syllabus.md
│   ├── connectors.md
│   ├── copyright.md
│   ├── custom-bots.md
│   ├── grading-with-ai.md
│   ├── home.md
│   ├── navbar.md
│   ├── privacy.md
│   ├── products.md
│   └── training.md
└── Future-State/
    ├── about.md
    ├── academic-integrity.md
    ├── access-chatgpt.md
    ├── access-copilot.md
    ├── access-gemini.md
    ├── ai-in-academics.md
    ├── ai-in-the-syllabus.md
    ├── Best-Practices/
    │   └── sycophancy.md
    ├── copyright.md
    ├── grading-with-ai.md
    ├── home.md
    ├── navbar.md
    ├── privacy.md
    ├── tools.md
    └── training.md
```

### What's In Scope

- Content: rewriting, restructuring, removing outdated/inaccurate material
- Structure: page hierarchy, navigation, information architecture

### What's Out of Scope

- Graphics, colors, fonts, styles, anything visual/artistic
- Brightspot CMS implementation (University Communications handles publishing)
- Student-facing content (future phase)

### Target Audience

Employees only (faculty, administrative staff, and staff). Student content will be added in a future phase.

## Governance Model

### IT's Role

- **Technology ownership:** Tool approvals, security reviews, software acquisitions
- **Front door:** All requests route through the IT Help Center, decisions made by a cross-functional governance committee
- IT does NOT own academic policy (syllabus requirements, grading with AI, academic integrity)

### Academic Content

- Academic policy pages (AI in Academics, Academic Integrity, AI in the Syllabus, Grading with AI) are maintained on this site for now
- Updates to academic content require collaboration with academic stakeholders -- do not unilaterally rewrite academic policy
- These pages may move to a different home in the future

### Key Directives

1. **IT Help Center visibility:** The IT Help Center request form (<https://td.byui.edu/SBTDClient/79/ITHelpCenter/Home/?ToUrl=>) must be prominently featured on the Home page and Tools page. All new software acquisitions, AI development requests, and tool requests route here.

2. **Remove noise:** Strip outdated, inaccurate, and confusing content. When in doubt, cut it.

3. **Contact info:** Replace all references to the old University AI Office (<palmers@byui.edu>, Kimball 210D) and Learning Innovation & Technology (<ashbyd@byui.edu>, Manwaring Center 384) with:
   - IT Help Center link for requests
   - Team contact info for general GenAI questions (TBD -- use placeholder)

## Site Structure

### Navigation (New)

- Home
- About GenAI
- Tools
- AI in Academics
  - Academic Integrity
  - AI in the Syllabus
  - Grading with AI
- Best Practices
  - (Subpages TBD -- e.g., AI usage, data privacy, staying safe with AI)
- Privacy
- Copyright
- Training

### Pages Removed

- Custom Bots -- inaccurate, noise
- Connectors -- inaccurate, noise
- All product-specific subpages from old Products section (replaced by Tools page)
- Events/Expo (referenced in old navbar but no content existed)

## Per-Page Directives

### Home

- Replace old leadership contact info with IT Help Center link + team contact (TBD placeholder)
- Prominent callout: for new software acquisitions, AI development, or tool requests, direct users to IT Help Center
- Remove "recent updates" referencing old initiatives (Gemini Gems, AI 101 spotlight)
- Remove references to University AI Office and Learning Innovation & Technology as governance owners
- Keep mission framing and strategic priorities if still relevant

### About GenAI

- Modernize the content -- the current tone treats GenAI as a novelty ("not truly understanding," "mimic")
- Tighten for an employee audience; remove overly basic definitions
- Update tool examples if any are dated
- Keep the GenAI type categories (Text, Code, Image, etc.) but refresh descriptions

### Tools (formerly Products)

- Rename from "Products" to "Tools"
- Keep only three tools: ChatGPT (OpenAI), Copilot (Microsoft), Gemini (Google)
- Remove all other tools (NotebookLM, Zoom AI Companion, Lucid, Firefly, TopHat Ace, Apple Intelligence, Grammarly Go)
- Remove "Type" column entirely
- Remove "Conditionally Approved" status -- replace with data classification governance:
  - ChatGPT: approved for first 3 classification levels (Public, Internal, PII) -- link to BYU-Idaho data classification
  - Copilot: approved for first 2 classification levels (Public, Internal) -- link to BYU-Idaho data classification
  - Gemini: approved for first 2 classification levels (Public, Internal) -- link to BYU-Idaho data classification
- Each tool gets a "Click here to access it" link
- Remove "BYU-Idaho GenAI Use and Procurement Guidelines" header and its 2 bullets
- Keep and make prominent: "If you would like to use a tool that is not listed on this page or wish to use a tool not currently approved with any non-public data, please submit a request through the IT Help Center" -- link to IT Help Center form
- IT Help Center callout should be visually prominent (not buried in a paragraph)

### AI in Academics

- Clean up aspirational language; tighten for clarity
- Keep the three priorities (Advance Knowledge, Workforce Readiness, Student Support)
- Updates require collaboration with academic stakeholders

### Academic Integrity

- Keep CES Guiding Principles, faculty/student roles, citation requirements
- Clean up noise and redundancy
- Updates require collaboration with academic stakeholders

### AI in the Syllabus

- Keep the syllabus statement requirement, Stoplight Framework, AI Assessment Scale
- Keep support tools (AI Statement Wizard, Citation Guide)
- Updates require collaboration with academic stakeholders

### Grading with AI

- Keep foundational principles, operational guidelines, risk table
- Clean up verbosity
- Updates require collaboration with academic stakeholders

### Best Practices (New Section)

- New content -- no Current-State source material
- Landing page with links to subpages
- First subpage authored: sycophancy (AI agreeing with users instead of providing accurate answers)
- Additional subpages TBD -- potential topics include AI usage tips, data privacy practices, staying safe with AI
- Write for an employee audience: practical, actionable guidance (not generic AI hype)

### Privacy

- Largely accurate -- clean up and polish
- Keep the 4-tier data classification system and risk scenarios
- Ensure "AI Strategy and Leadership team" references are updated to reflect new governance
- Replace vague "AI Group" references with clear contact/process info

### Copyright

- Largely accurate -- clean up and polish
- Legal content is time-sensitive; flag if content appears outdated relative to current copyright law

### Training

- Replace current content with a placeholder: "Training resources coming soon"
- Remove all links to the 8 existing training modules
- This page will be populated later with curated, up-to-date training content

## Editorial Principles

- **Cut aggressively:** When content is outdated, inaccurate, or confusing, remove it. Err on the side of less content, not more.
- **Employee audience:** Write for faculty, admin, and staff. No need to explain basic concepts that employees would already understand.
- **Plain language:** Avoid jargon, buzzwords, and aspirational fluff. Be direct and actionable.
- **Policy accuracy:** Do not invent or assume policy. If something is unclear, flag it for review rather than guessing.
- **Academic content boundary:** Do not unilaterally rewrite academic policy pages. Flag proposed changes for stakeholder review.
- **No visual/design decisions:** Output is Markdown content only. University Communications handles styling and publishing in Brightspot.

## Project Knowledge

To the best of your ability, use the following knowledge to help you author the content:

- For content pertaining to **data classification**, use the following knowledge:
  - Leadership has elected to use a modified classification system for GenAI tools, based on the BYU-Idaho Data Classification Policy (see `.claude/reference-docs/data-classification-policy.md`)

## Workflow

### Content Authoring

1. Read the corresponding Current-State/ file to understand what exists
2. Apply the per-page directives from this CLAUDE.md
3. Write the new content to Future-State/<page-name>.md
4. Output format: Markdown (GitHub Flavored Markdown)

### File Naming

- Future-State files should match Current-State filenames for traceability
- Exception: Current-State/products.md → Future-State/tools.md (renamed per directive)

### File Mapping

| Current-State File | Future-State File | Notes |
|---|---|---|
| home.md | home.md | |
| about.md | about.md | |
| products.md | tools.md | Renamed per directive |
| -- | access-chatgpt.md | Tool access/login guide |
| -- | access-copilot.md | Tool access/login guide |
| -- | access-gemini.md | Tool access/login guide |
| ai-in-academics.md | ai-in-academics.md | Academic stakeholder review required |
| academic-integrity.md | academic-integrity.md | Academic stakeholder review required |
| ai-in-the-syllabus.md | ai-in-the-syllabus.md | Academic stakeholder review required |
| grading-with-ai.md | grading-with-ai.md | Academic stakeholder review required |
| privacy.md | privacy.md | |
| copyright.md | copyright.md | |
| training.md | training.md | Placeholder content only |
| -- | Best-Practices/sycophancy.md | First best practices subpage |
| navbar.md | navbar.md | Updated navigation structure |
| custom-bots.md | -- | Removed (inaccurate, noise) |
| connectors.md | -- | Removed (inaccurate, noise) |

### Review Process

- Academic content changes should be flagged for stakeholder review before finalizing
- All content is reviewed by Ron before being sent to University Communications

## Progress

Track content authoring status here. Update as pages are completed.

| Page | Status | Notes |
|------|--------|-------|
| Home | Draft complete | Rewritten per directives |
| About GenAI | Baseline copied | Current-State content copied, not yet rewritten |
| Tools | Draft complete | Includes access guides (access-chatgpt/copilot/gemini.md) |
| AI in Academics | Baseline copied | Requires academic stakeholder review |
| Academic Integrity | Baseline copied | Requires academic stakeholder review |
| AI in the Syllabus | Baseline copied | Requires academic stakeholder review |
| Grading with AI | Baseline copied | Requires academic stakeholder review |
| Privacy | Baseline copied | Current-State content copied, not yet rewritten |
| Copyright | Baseline copied | Current-State content copied, not yet rewritten |
| Best Practices | In progress | Sycophancy subpage drafted; additional subpages TBD |
| Training | Baseline copied | Needs replacement with placeholder content |
| Navbar | Draft complete | Updated navigation structure |

## Git

### Commits

- Use imperative mood (e.g., "Add tools page content" not "Added tools page content")
- Concise, descriptive, and professional
- No emojis
- No Claude Code signatures (no "Co-Authored-By: Claude", no generated-with tags)
- Scope commits to logical units of work -- one page or one coherent change per commit, not bulk "update everything" commits
- Always run `git diff` before committing to verify what's being committed

### Branching

- `main` is the primary branch
- Ask before creating feature branches unless a branching strategy has been discussed

### Changelog

This project maintains a `CHANGELOG.md` following the [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) format.

- **Update CHANGELOG.md with every commit.** Every commit that changes content, structure, or project configuration must have a corresponding CHANGELOG entry.
- Use the standard categories: Added, Changed, Removed, Fixed
- Write entries from the perspective of the project's purpose (content overhaul), not implementation details
- Keep entries concise -- one line per change
- Group related changes under `## [Unreleased]` until a version is tagged
- Examples:
  - Added: "New Future-State content for the Tools page"
  - Changed: "Updated Privacy page to reflect new governance contacts"
  - Removed: "Removed Custom Bots and Connectors pages (inaccurate, out of scope)"
  - Fixed: "Corrected data classification levels for Copilot on Tools page"
