# CLAUDE.md

## Project Overview

This repository manages the content overhaul of BYU-Idaho's Artificial Intelligence website (<www.byui.edu/genai>). IT now has a leadership role in GenAI governance, and the CIO has tasked the AI Solutions and Architecture team with revamping the site.

> Note: We're renaming the site from "GenAI" to simply "Artificial Intelligence." The term GenAI is an outdated term and limits the true depth and breadth of AI to simply generative AI. By using "Artificial Intelligence", we can expand into other topics, such as Agentic AI.

### What This Repo Is

- A content project, not a code project
- Website/: Web content (Markdown) to be sent to University Communications for publishing in Brightspot CMS

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
├── NOTES.md
└── Website/
    ├── home.md
    ├── navbar.md
    ├── footer.md
    ├── Academics/
    │   ├── academics.md
    │   ├── ai-in-academics.md
    │   ├── academic-integrity.md
    │   ├── ai-in-the-syllabus.md
    │   └── grading-with-ai.md
    ├── Best-Practices/
    │   ├── best-practices.md
    │   ├── sycophancy.md
    │   ├── hallucination.md
    │   └── managing-context.md
    ├── Data-Privacy/
    │   ├── protecting-data.md
    │   ├── data-privacy.md
    │   ├── data-usage-guide.md
    │   └── copyright.md
    └── Resources/
        ├── approved-tools.md
        ├── chatgpt.md
        ├── copilot.md
        └── gemini.md
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

## Site Structure

### Navigation

See `Website/navbar.md` for the source of truth. Summary:

- Home (`home.md`)
- Best Practices (`Best-Practices/best-practices.md`)
  - Sycophancy (`Best-Practices/sycophancy.md`)
  - Hallucination (`Best-Practices/hallucination.md`)
  - Managing Context (`Best-Practices/managing-context.md`)
- Academics (`Academics/academics.md`)
  - AI in Academics (`Academics/ai-in-academics.md`)
  - Academic Integrity (`Academics/academic-integrity.md`)
  - AI in the Syllabus (`Academics/ai-in-the-syllabus.md`)
  - Grading with AI (`Academics/grading-with-ai.md`)
- Protecting Your Data (`Data-Privacy/protecting-data.md`)
  - Data Privacy (`Data-Privacy/data-privacy.md`)
  - Data Usage Guide (`Data-Privacy/data-usage-guide.md`)
  - Copyright (`Data-Privacy/copyright.md`)
- Resources (`Resources/approved-tools.md`)
  - Access ChatGPT (`Resources/chatgpt.md`)
  - Access Copilot (`Resources/copilot.md`)
  - Access Gemini (`Resources/gemini.md`)

### Pages Removed (from original site)

- About GenAI -- removed (content pending rewrite)
- Training -- removed (content pending rewrite)
- Custom Bots -- inaccurate, noise
- Connectors -- inaccurate, noise
- All product-specific subpages from old Products section (replaced by Resources/approved-tools.md)
- Events/Expo (referenced in old navbar but no content existed)

## Per-Page Directives

### Home

- Replace old leadership contact info with IT Help Center link + team contact (TBD placeholder)
- Prominent callout: for new software acquisitions, AI development, or tool requests, direct users to IT Help Center
- Remove "recent updates" referencing old initiatives (Gemini Gems, AI 101 spotlight)
- Remove references to University AI Office and Learning Innovation & Technology as governance owners
- Keep mission framing and strategic priorities if still relevant

### Resources / Approved Tools (formerly Products)

- Three approved tools: ChatGPT (OpenAI), Copilot (Microsoft), Gemini (Google)
- Each tool has data classification levels and a link to its access guide
- IT Help Center callout for tool requests is prominent
- Access guides in Resources/ folder: chatgpt.md, copilot.md, gemini.md

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

### Best Practices

- Landing page (`best-practices.md`) with image cards linking to subpages
- Sycophancy subpage: why AI agrees with users, how to prompt for honest answers
- Hallucination subpage: why AI fabricates information, how to detect and prevent it
- Managing Context subpage: how context shapes AI output, context window management, persistent context features per tool
- Additional subpages TBD -- potential topics include AI usage tips, staying safe with AI
- Write for an employee audience: practical, actionable guidance (not generic AI hype)
- Article structure pattern: scenario/definition, causes, why it matters, best practices

### Data Privacy

- Landing page (`protecting-data.md`) with image cards linking to subpages
- Data Privacy (`data-privacy.md`): largely accurate -- clean up and polish; keep 4-tier data classification system
- Data Usage Guide (`data-usage-guide.md`): step-by-step decision guide for AI data usage
- Copyright (`copyright.md`): largely accurate -- clean up and polish; legal content is time-sensitive

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

1. Apply the per-page directives from this CLAUDE.md
2. Write the new content to Website/<page-name>.md
3. Output format: Markdown (GitHub Flavored Markdown)

### File Inventory

| File | Notes |
|---|---|
| home.md | Site homepage |
| navbar.md | Navigation structure (source of truth) |
| footer.md | Site footer content |
| Academics/academics.md | Academics landing page |
| Academics/ai-in-academics.md | Academic stakeholder review required |
| Academics/academic-integrity.md | Academic stakeholder review required |
| Academics/ai-in-the-syllabus.md | Academic stakeholder review required |
| Academics/grading-with-ai.md | Academic stakeholder review required |
| Best-Practices/best-practices.md | Best Practices landing page |
| Best-Practices/sycophancy.md | AI sycophancy article |
| Best-Practices/hallucination.md | AI hallucination article |
| Best-Practices/managing-context.md | Context management best practices |
| Data-Privacy/protecting-data.md | Protecting Your Data landing page |
| Data-Privacy/data-privacy.md | Data privacy guidelines |
| Data-Privacy/data-usage-guide.md | Step-by-step AI data usage decision guide |
| Data-Privacy/copyright.md | AI copyright considerations |
| Resources/approved-tools.md | Approved tools with data classification |
| Resources/chatgpt.md | ChatGPT access guide |
| Resources/copilot.md | Copilot access guide |
| Resources/gemini.md | Gemini access guide |

### Review Process

- Academic content changes should be flagged for stakeholder review before finalizing
- All content is reviewed by Ron before being sent to University Communications

## Progress

Track content authoring status here. Update as pages are completed.

| Page | Status | Notes |
|------|--------|-------|
| Home | Draft complete | Rewritten per directives |
| Navbar | Draft complete | Updated navigation structure with file paths |
| Footer | Draft complete | IT contact info |
| Academics landing | Draft complete | Image cards linking to subpages |
| AI in Academics | Baseline copied | Requires academic stakeholder review |
| Academic Integrity | Baseline copied | Requires academic stakeholder review |
| AI in the Syllabus | Baseline copied | Requires academic stakeholder review |
| Grading with AI | Baseline copied | Requires academic stakeholder review |
| Best Practices landing | Draft complete | Image cards for sycophancy, hallucination, and managing context |
| Sycophancy | Draft complete | First best practices article |
| Hallucination | Draft complete | Second best practices article |
| Managing Context | Draft complete | Third best practices article |
| Protecting Your Data landing | Draft complete | Image cards linking to subpages |
| Data Privacy | Baseline copied | Not yet rewritten |
| Data Usage Guide | Draft complete | Step-by-step decision guide for AI data usage |
| Copyright | Baseline copied | Not yet rewritten |
| Approved Tools | Draft complete | Includes access guides (chatgpt/copilot/gemini.md) |

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

