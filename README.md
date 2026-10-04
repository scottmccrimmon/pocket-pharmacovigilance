# Pocket Pharmacovigilance

LoRA fine-tuning a small open LLM for adverse-drug-event (ADE) extraction — a learning
project to quantify whether fine-tuning beats prompting on a narrow structured-extraction
task.

Design doc is kept outside this public repo; see below for the project's goals and approach.

- **Task**: given a biomedical sentence, extract drug → adverse-effect pairs as strict JSON.
- **Approach**: establish honest zero-shot/few-shot baselines (base model + API comparators)
  before fine-tuning, then LoRA fine-tune a small open model and compare on accuracy, cost,
  and confidence intervals — fine-tuning only "wins" if it clears a pre-registered decision
  rule (see `docs/decision-memo.md` once Evening 3 lands).
- **Data**: ADE Corpus v2 (Gurulingappa et al., 2012), public biomedical literature, no PHI.

**Status:** setup in progress. Results, cost table, and reproduce steps land here as the
project proceeds.
