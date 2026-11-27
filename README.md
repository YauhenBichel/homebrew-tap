# homebrew-tap

A Homebrew tap with two command-line tools: `privacy-gate`, which checks whether a prompt contains health, credential or personal data before it goes to a cloud LLM, and `llm-hops`, which shows where the time goes when a request passes through a local LLM system. It is for macOS and Linux users who install tools with `brew`.

```sh
brew install yauhenbichel/tap/privacy-gate
brew install yauhenbichel/tap/llm-hops
```

`brew install yauhenbichel/tap/<name>` adds the tap automatically on first use. To add it yourself first, run `brew tap yauhenbichel/tap`.

## Formulae

| Formula | What it installs | Version pinned | Install line | Source |
|---|---|---|---|---|
| `privacy-gate` | The `privacy-gate` command, a local gate that holds health, credential and personal data before it reaches a cloud LLM. A Python package in its own virtualenv, on `python@3.14`. | 1.0.1, from the PyPI sdist of `molecare-privacy-gate` | `brew install yauhenbichel/tap/privacy-gate` | [YauhenBichel/privacy-gate-llm](https://github.com/YauhenBichel/privacy-gate-llm) |
| `llm-hops` | The `llm-hops` command, a single Go binary: a tracing server, a live flow map and a waterfall per request for a local LLM system. Built from source with Go (`go` is a build dependency). | 0.2.4, from the `v0.2.4` source tarball | `brew install yauhenbichel/tap/llm-hops` | [YauhenBichel/llm-hops](https://github.com/YauhenBichel/llm-hops) |

`llm-hops` also has `head`: `brew install --HEAD yauhenbichel/tap/llm-hops` builds the `main` branch.

About the `privacy-gate` name: the project is now published as `privacy-gate-llm` (formerly `molecare-privacy-gate`). At the time of writing, PyPI serves only `molecare-privacy-gate` 1.0.1, the same code with the same `privacy-gate` command, and that is what this formula installs. The formula will move to the new PyPI name once a release is published there.

## Check an install

```sh
privacy-gate info     # prints a line containing head_sha256
llm-hops --version    # llm-hops 0.2.4
llm-hops config       # prints the default configuration
```

These are the same checks as the `test do` block in each formula (`brew test <name>` runs them).

## Do these formulae send my data anywhere?

The formulae only download the source archive when you install. What the tools do at run time is described in their own repositories: `privacy-gate` runs locally, and `llm-hops` keeps its traces in a local SQLite file and listens on a loopback address by default.

## For the maintainer

A new release: update `url` and `sha256` from the PyPI sdist, then `brew audit --strict --online yauhenbichel/tap/<formula>` and `brew test`.

`llm-hops`: its release workflow opens the pull request here that moves `url` and `sha256` to the new tag.
