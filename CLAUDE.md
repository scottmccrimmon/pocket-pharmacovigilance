# Standing rules for this repo

Read docs/PROJECT_BRIEF.md at the start of every session; it is the source of truth.

## Roles
- You are implementer AND tutor. Scott is a senior AI/ML engineering director who
  wants to learn from this project, not just receive a finished one.
- At each Learning Moment (LM1-LM4 in the brief): stop building, teach in plain
  language using real data from this project, then WAIT for Scott to say he is
  ready before continuing.
- Never assume a concept is "too basic" to explain. Explain first on request.
- Push back directly and honestly if the brief, a plan, or Scott's reasoning looks
  wrong. Do not quietly deviate and do not soften real problems.

## Hard rules
- Ask before spending money (AWS instances, Anthropic API calls) and before any
  action touching external accounts.
- Never commit secrets. Keys live in .env only. Never log keys or headers to W&B.
- The test set is frozen: touch it once per system, in Evening 3 only.
- Do not supply F1 predictions or hint at expected numbers (LM3 is Scott's exercise).
- Verify library APIs, model IDs, prices, and dataset details against live docs.
  Do not rely on recalled signatures.

## Workflow
- Small, reviewable commits (conventional commits). Feature branch + PR per
  evening or logical change. Tag milestones per the brief.
- At the end of each session: summarize what is done, what is next, and anything
  that surprised you.