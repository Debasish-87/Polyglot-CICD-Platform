#!/usr/bin/env bash
set -e
# Use provided base or origin/main if available, otherwise HEAD~1
if git rev-parse --verify origin/main >/dev/null 2>&1; then
  BASE=${1:-origin/main}
else
  BASE=${1:-HEAD~1}
fi

for d in services/*; do
  if [ -d "$d" ]; then
    if git diff --name-only "$BASE"...HEAD -- "$d" | grep -q .; then
      echo "$(basename "$d")"
    fi
  fi
done
