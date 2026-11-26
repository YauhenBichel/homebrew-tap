# homebrew-tap

```sh
brew install yauhenbichel/tap/privacy-gate
brew install yauhenbichel/tap/llm-hops
```

| Formula | What | Source |
|---|---|---|
| `privacy-gate` | Local gate that holds health, credential and personal data before it reaches a cloud LLM. Same package as `pip install molecare-privacy-gate`. | [YauhenBichel/privacy-gate-llm](https://github.com/YauhenBichel/privacy-gate-llm) |
| `llm-hops` | See every hop of a request through a local LLM system: queue, model load, prefill, generation. Built from source with Go; macOS and Linux. | [YauhenBichel/llm-hops](https://github.com/YauhenBichel/llm-hops) |

A new release: update `url` and `sha256` from the PyPI sdist, then `brew audit --strict --online yauhenbichel/tap/<formula>` and `brew test`.

`llm-hops`: its release workflow opens the pull request here that moves `url` and `sha256` to the new tag.
