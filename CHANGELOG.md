# Changelog

All notable changes to the BYU-Idaho GenAI Site content overhaul will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Added
- New `genai-site-reviewer` skill for auditing content pages against all five reference documents (Church guidance, strategy, objectives, landing pages, data classification) with checks for objectives alignment, strategy alignment, Church principles alignment, and editorial compliance
- Reference documents for AI strategy, governance objectives, landing page structure, and Church AI guiding principles in `.claude/reference-docs/`
- Project Knowledge section in CLAUDE.md with rules for referencing all five reference documents (Church guidance, strategy, objectives, landing pages, data classification)
- Per-page directives for Teaching with AI, Working with AI, and Learning with AI landing pages with audience-specific structure (Topics & Standards, Training Resources, Available Tools)

### Changed
- Enhanced `genai-site-writer` skill with a grounding step that reads reference documents before planning, and expanded the reference section from data classification only to all five reference documents
- NOTES.md document specifically for the web dev team publishing to Brightspot CMS (explaining how to use the repo, reading Markdown, navigation, etc.)
   - *This file DOES not get included on the website. It's simply a reference document for the web dev team*

### Changed
- Renamed "Academics" section to "Teaching with AI" throughout CLAUDE.md to reflect faculty-centric, practical focus (folder rename on disk is a separate task)
- Softened student content scope -- Learning with AI landing page is in scope; deeper student resources remain future phase
- Project repository initialized
- CLAUDE.md with project overview, governance model, site structure, per-page directives, editorial principles, and workflow
- Design document: docs/plans/2026-02-26-claude-md-design.md
- Current-State/ directory with FireCrawl webcrawl of existing GenAI site (13 pages)
- Future-State/ directory (empty, awaiting new content)
- Git conventions and changelog maintenance instructions in CLAUDE.md
- File mapping table in CLAUDE.md linking Current-State files to Future-State targets
- Progress tracking table in CLAUDE.md for content authoring status
- Best Practices section added to site navigation (subpages TBD)
- Directory tree added to CLAUDE.md for project structure reference
- Copied Current-State content to Future-State as editing baseline (10 files)
- Renamed products.md to tools.md in Future-State per site restructure
- New Future-State content for the Tools page
- ChatGPT login guide (chatgpt-login.md) for CES Edu subscription setup
- Tools page clarifies ChatGPT data protections apply only to CES Edu accounts
- Gemini login guide (gemini-login.md) with step-by-step sign-in instructions, troubleshooting, and account-switching guidance
- Tools page clarifies Gemini data protections apply only to institutional accounts
- Copilot login guide (copilot-login.md) with step-by-step sign-in instructions
- Tools page clarifies Copilot data protections apply only to institutional Work experience

- Sycophancy best practices page (Best-Practices/sycophancy.md)
- Data Usage Guide page (data-usage-guide.md) as subpage under Privacy/Data Privacy
- Updated navbar reference for Future-State site structure
- Hallucination best practices article (Best-Practices/hallucination.md)
- Best Practices landing page (Best-Practices/best-practices.md)
- Academics landing page (Academics/academics.md)
- Protecting Your Data landing page (Data-Privacy/protecting-data.md)
- Footer content (footer.md)
- Design spec for hallucination article (docs/superpowers/specs/2026-03-17-hallucination-article-design.md)
- Managing Context best practices article (Best-Practices/managing-context.md) covering context engineering, context windows, and tool-specific persistent context features
- Learn About AI section: new navigation category for educational content that builds AI literacy
- Learn About AI landing page (Learn-About-AI/learn-about-ai.md)
- How LLMs Are Trained article (Learn-About-AI/how-llms-are-trained.md) covering data preparation, pre-training via next-word prediction, and post-training alignment (instruction tuning, RLHF)
- Working with AI landing page (Working-with-AI/working-with-ai.md) for staff and administrative employees
- Getting Started with AI article (Working-with-AI/getting-started.md) covering tool access, use cases, and data classification basics for employees
- Learning with AI landing page (Learning-with-AI/learning-with-ai.md) for students, linking to approved tools, academic integrity, best practices, and data privacy
- "What About Other AI Tools?" section on Approved Tools page acknowledging non-approved tools exist and clarifying BYU-Idaho's support scope

### Changed
- Homepage "Work with AI" card now links to Working with AI landing page instead of Approved Tools
- Homepage "Learn with AI" card now links to Learning with AI landing page instead of Approved Tools
- Learning with AI landing page highlights Gemini (with NotebookLM) and Copilot as the two AI tools available to students; ChatGPT Edu is currently limited to full-time employees
- Replaced all SharePoint Data Classification Policy links with internal references to the site's Data Privacy page (approved-tools.md, data-privacy.md, data-usage-guide.md)
- Fixed old /genai/products URLs in Academic Integrity and Grading with AI pages to point to /genai/approved-tools
- Fixed old /genai/products URL in Data Privacy page to point to /genai/approved-tools
- Updated all IT Help Center links to use the Project Request form for tool and software requests
- Clarified on Approved Tools page that ChatGPT Edu is currently available to full-time employees only

### Removed
- "A Place of Permanent Innovation" section from homepage (moved to AI Principles page in CMS by University Communications)

### Changed (previous)
- Tools table: moved tool-specific data protection notes into a new "Note" column with links to login guides
- Tools table: Access links now point to login guide pages instead of external tool URLs
- Renamed login guides to access guides (chatgpt-login.md, copilot-login.md, gemini-login.md to access-chatgpt.md, access-copilot.md, access-gemini.md)
- Simplified Tools page heading from "GenAI Tools" to "Tools"
- Rewrote Home page: removed old updates, replaced University AI Office and LIT contacts with IT contact, modernized content structure
- Reorganized Website/ into subdirectories: Academics/, Best-Practices/, Data-Privacy/, Resources/
- Renamed access guides to Resources/ directory (chatgpt.md, copilot.md, gemini.md)
- Renamed tools.md to Resources/approved-tools.md
- Moved academic pages to Academics/ directory
- Moved privacy, data-usage-guide, and copyright pages to Data-Privacy/ directory
- Updated navbar to reflect new directory structure with nested subpages

### Removed
- Current-State/ directory and all old site webcrawl files (no longer needed)
- Future-State/ renamed to Website/ (content is now the canonical version, not a draft)
- Removed about.md and training.md from Website root (content relocated or pending rewrite)
