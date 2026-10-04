.PHONY: data leakage-demo baseline train eval api-eval report test lint

# Each target below is a thin wrapper around a module in src/ade/.
# Targets will start failing with ModuleNotFoundError until that module exists —
# they're declared now to match the repo layout in docs/PROJECT_BRIEF.md Section 9
# and get filled in session by session.

data:            ## build splits from ADE Corpus v2, run leakage tests, log dataset artifact
	uv run python -m ade.data --config configs/data.yaml

leakage-demo:    ## LM1: memorizer-baseline demo (naive vs grouped split)
	uv run python -m ade.data --leakage-demo

baseline:        ## run B0/B1 (base model zero-shot / few-shot) on val or test
	uv run python -m ade.evaluate --config configs/eval.yaml --systems B0,B1

train:           ## LoRA fine-tune (F1)
	uv run python -m ade.train --config configs/train_lora.yaml

eval:            ## run F1 on val or test with the shared harness
	uv run python -m ade.evaluate --config configs/eval.yaml --systems F1

api-eval:        ## B2a/B2b Anthropic API comparators (dry run first; needs go-ahead to spend)
	uv run python -m ade.api_baseline --config configs/eval.yaml --dry-run

report:          ## cost table + W&B report inputs
	uv run python -m ade.cost --config configs/cost.yaml

test:
	uv run pytest tests/ -v

lint:
	uv run ruff check src/ tests/
