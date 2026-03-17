# Notes for the Web Publishing Team

## What This Is

The `Website/` folder contains all of the written content for the byui.edu/genai site. Each file ending in `.md` (called a Markdown file) represents one page on the site. Your job is to take the content from these files and publish it in Brightspot CMS.

## How to Read Markdown Files

Markdown is a simple way of formatting text using characters like `#`, `*`, and `-`. You do not need to learn all of Markdown -- just a few patterns that show up in these files.

Here is a quick reference:

| What you see in the file | What it means |
|---|---|
| `# Heading` | A large page heading |
| `## Heading` | A section heading |
| `### Heading` | A smaller sub-heading |
| `**bold text**` | **Bold text** |
| `*italic text*` | *Italic text* |
| `[link text](https://example.com)` | A clickable link that displays "link text" |
| `- item` | A bulleted list item |
| `1. item` | A numbered list item |

Here is a small example showing raw Markdown on the left and what it looks like rendered on the right:

**Raw Markdown:**

```
## Contact

 **Information Technology**  
   Kimball 170
   [208-496-9009](tel:2084969009)
   [it@byui.edu](mailto:it@byui.edu)
```

**What it looks like on the page:**

> ## Contact
> **Information Technology**  
>   Kimball 170
>   [208-496-9009](tel:2084969009)
>   [it@byui.edu](mailto:it@byui.edu)

That is all the Markdown syntax you will encounter in these files.

## Folder Structure

Here is the full contents of the `Website/` folder with notes explaining what each piece is:

```
Website/
├── home.md                          -- The site homepage (byui.edu/genai)
├── navbar.md                        -- Defines the site navigation (see next section)
├── footer.md                        -- Updated footer content for the site
│
├── Academics/                       -- Pages about AI in teaching and coursework
│   ├── academics.md                 -- Landing page for the Academics section
│   ├── ai-in-academics.md           -- BYU-Idaho's priorities for AI in education
│   ├── academic-integrity.md        -- Guidelines for ethical AI use in academics
│   ├── ai-in-the-syllabus.md        -- Resources for AI expectations in syllabi
│   └── grading-with-ai.md           -- Framework for AI in student assessment
│
├── Best-Practices/                  -- Practical guides on using AI effectively
│   ├── best-practices.md            -- Landing page for the Best Practices section
│   ├── sycophancy.md                -- Why AI agrees with you and how to get honest answers
│   └── hallucination.md             -- Why AI makes things up and how to catch it
│
├── Data-Privacy/                    -- Pages about data protection and copyright
│   ├── protecting-data.md           -- Landing page for the Protecting Your Data section
│   ├── data-privacy.md              -- Privacy guidelines for AI tool usage
│   ├── data-usage-guide.md          -- Step-by-step guide for handling data in AI tools
│   └── copyright.md                 -- Copyright considerations for AI-generated content
│
└── Resources/                       -- Approved AI tools and how to access them
    ├── approved-tools.md            -- List of approved tools with data classification info
    ├── chatgpt.md                   -- How to log in and access ChatGPT
    ├── copilot.md                   -- How to log in and access Copilot
    └── gemini.md                    -- How to log in and access Gemini
```

## How Folders Map to Navigation

The file `navbar.md` is the source of truth for the site navigation. It lists every navigation item and tells you which content file goes with it.

- Items at the left margin are main navigation items (top-level menu items).
- Indented items underneath are subpages or dropdown entries within that section.
- The file path in parentheses tells you which `.md` file contains the content for that page.

Here is the full contents of `navbar.md` for reference:

```
## Navigation

- Home (home.md)
- Best Practices (Best-Practices/best-practices.md)
  - Sycophancy (Best-Practices/sycophancy.md)
  - Hallucination (Best-Practices/hallucination.md)
- Academics (Academics/academics.md)
  - AI in Academics (Academics/ai-in-academics.md)
  - Academic Integrity (Academics/academic-integrity.md)
  - AI in the Syllabus (Academics/ai-in-the-syllabus.md)
  - Grading with AI (Academics/grading-with-ai.md)
- Protecting Your Data (Data-Privacy/protecting-data.md)
  - Data Privacy (Data-Privacy/data-privacy.md)
  - Data Usage Guide (Data-Privacy/data-usage-guide.md)
  - Copyright (Data-Privacy/copyright.md)
- Resources (Resources/approved-tools.md)
  - Access ChatGPT (Resources/chatgpt.md)
  - Access Copilot (Resources/copilot.md)
  - Access Gemini (Resources/gemini.md)
```

## Landing Pages and Image Cards

Each folder has a landing page that serves as the entry point for that section. These are:

- `best-practices.md` for Best Practices
- `academics.md` for Academics
- `protecting-data.md` for Protecting Your Data
- `approved-tools.md` for Resources

On landing pages and on `home.md`, you will see numbered lists that represent **image cards**. These are meant to be displayed as clickable cards on the page, not as plain numbered lists. Here is the pattern:

- **Bold text** on the first line is the card title.
- *Italicized text* on the next line is a short description for the card.
- The "Links to" line tells you which page the card should link to when clicked.

Here is a concrete example from the Best Practices landing page (`Best-Practices/best-practices.md`):

```
1. **Sycophancy**
   - *Learn why AI models agree with you instead of correcting you, and how to prompt for honest answers*
   - Links to sycophancy page
2. **Hallucination**
   - *Understand why AI fabricates information and how to detect and prevent it*
   - Links to hallucination page
```

This means you should create two image cards:

1. A card titled "Sycophancy" with the description "Learn why AI models agree with you instead of correcting you, and how to prompt for honest answers." Clicking it takes the user to the Sycophancy page.
2. A card titled "Hallucination" with the description "Understand why AI fabricates information and how to detect and prevent it." Clicking it takes the user to the Hallucination page.

The same pattern applies to the homepage and all other landing pages. Wherever you see a numbered list with bold titles and italic descriptions, those are image cards.

## Footer

The file `footer.md` contains the updated footer content for the site. The current footer on byui.edu/genai should be replaced with the content in this file. Right now it contains the contact information for Information Technology (location, phone, and email).
