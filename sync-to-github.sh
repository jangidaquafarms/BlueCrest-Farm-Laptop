#!/usr/bin/env bash
# Stage, commit, and push the current branch to GitHub.
# Usage:
#   ./sync-to-github.sh
#   ./sync-to-github.sh "Describe what you changed"

set -euo pipefail

cd "$(dirname "$0")"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "This folder is not a Git repository."
  exit 1
fi

if ! git diff --quiet || ! git diff --cached --quiet || [ -n "$(git ls-files --others --exclude-standard)" ]; then
  git add -A
  message="${1:-Update files $(date -u +'%Y-%m-%d %H:%M UTC')}"
  git commit -m "$message"
else
  echo "No local file changes to commit."
fi

branch="$(git branch --show-current)"
if [ -z "$branch" ]; then
  echo "You are not on a named branch. Checkout a branch, then run this again."
  exit 1
fi

git push -u origin "$branch"
echo "Done. GitHub now has branch: $branch"
