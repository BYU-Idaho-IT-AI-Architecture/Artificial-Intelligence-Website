# Best Practices for Managing Context

An employee asks ChatGPT to summarize their department's travel reimbursement policy. The response sounds authoritative — it outlines a three-step process, names specific approval thresholds, and cites a section number. The employee begins drafting a memo based on this guidance. There is just one problem: none of it is real. The policy ChatGPT described does not exist. The employee tries again, this time uploading the actual policy PDF and asking a specific question. The second response is accurate, detailed, and useful. The difference was context.

## What Is Context?

Context is the information an AI model has available to work with when generating a response. It comes from two places:

**What you provide.** Every piece of information you include in your prompt — files, background details, instructions, examples — shapes the quality of the response. The more relevant information the model has, the less it has to guess.

**What the model can hold.** Every AI tool has a context window — a fixed amount of text it can process at one time. Think of it as the model's short-term memory. Everything in your conversation — your prompts, the AI's responses, uploaded documents — has to fit inside this window. Once it fills up, the oldest information gets quietly dropped and the model loses track of what you told it earlier.

## Why Does Context Matter?

**Without enough context, the model guesses.** AI tools do not look things up from a database of facts. They predict the most likely response based on patterns. When your prompt is vague or missing key details, the model fills the gaps with plausible-sounding information that may be completely fabricated. OpenAI's own research has confirmed that this kind of hallucination is a fundamental property of how these models work — not a bug that will be patched out. Studies have found that structured, context-rich prompts produce dramatically fewer errors than vague ones.

**Too much context degrades quality too.** Research from Stanford and the University of Washington found that AI models pay the most attention to the beginning and end of their context, with significant performance drops for information in the middle. Long conversations compound the problem — your original instructions get buried under layers of follow-up, and the model starts ignoring or contradicting them.

**The right context transforms the output.** When given proper context, AI tools perform substantially better. The question is not just what words you use in your prompt — it is what information the model needs to do the job well.

## Best Practices for Providing Context

- **Include the source material.** Upload the actual document rather than describing it from memory. All three approved tools — ChatGPT, Copilot, and Gemini — support file uploads. When the model works from your source material, it does not need to guess.
  - *Bad:* "What does BYU-Idaho's travel policy say about mileage reimbursement?"
  - *Good:* "I've attached BYU-Idaho's travel reimbursement policy. Based on this document, what is the current mileage reimbursement rate and process?"

- **State the task, audience, and constraints up front.** Tell the model what you need, who it is for, and any requirements. Do not make it infer your intent.
  - *Bad:* "Write an email about the new software."
  - *Good:* "Write a professional email to department chairs announcing that Copilot is now available. Keep it under 200 words. Include how to request access through the IT Help Center."

- **Use web search for anything current.** All three approved tools can search the web in real time. Use this for recent events, current links, or time-sensitive information rather than relying on the model's training data, which has a cutoff date.

- **Give an example of what you want.** If you need a specific format, tone, or structure, show the model a sample. One good example often does more than a paragraph of instructions.

## Best Practices for Managing the Context Window

- **Start new conversations for new topics.** Each conversation shares one context window. Switching topics in a long thread means the model is carrying irrelevant information from earlier exchanges. A fresh conversation gives it a clean slate and your full context window to work with.

- **Front-load your most important instructions.** Models pay the most attention to the beginning and end of their context. Put critical requirements — the task, the format, any constraints — at the top of your prompt, not buried after several paragraphs of background.

- **Watch for signs of context overload.** If the AI starts contradicting itself, forgetting your earlier instructions, or giving increasingly vague responses, the conversation has likely grown too long. Ask the model to summarize progress so far, then start a new conversation with that summary as your opening context.

## Set It Once: Persistent Context Features

All three approved tools let you save preferences that apply to every conversation — set them once and benefit automatically.

- **ChatGPT:** Custom Instructions let you define your role and response preferences. Memory remembers facts across conversations. Access both via Settings.
- **Copilot:** Custom Instructions let you set tone, detail level, and formatting preferences. Access via Settings > Personalization.
- **Gemini:** Gems are custom AI personas you create for specific tasks, each with its own persistent instructions. Saved Info stores general preferences. Create Gems at gemini.google.com.

For example, a faculty member could set their custom instructions to: "I am a professor at BYU-Idaho teaching introductory biology. I prefer concise explanations with real-world examples. Format responses with headers and bullet points." Every new conversation then starts with that context already in place.