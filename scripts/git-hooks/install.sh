#!/bin/sh
# Enable the versioned git hooks shipped in this repo.
# Run once after cloning.

set -eu

repo_root=$(git rev-parse --show-toplevel)
cd "$repo_root"

git config core.hooksPath scripts/git-hooks
chmod +x scripts/git-hooks/pre-commit

printf 'git hooks enabled: core.hooksPath = scripts/git-hooks\n'
