# Changelog

All notable changes to the BYU-Idaho GenAI Site content overhaul will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Added
- NOTES.md document specifically for the web dev team publishing to Brightspot CMS (explaining how to use the repo, reading Markdown, navigation, etc.)
   - *This file DOES not get included on the website. It's simply a reference document for the web dev team*
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

### Changed
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
