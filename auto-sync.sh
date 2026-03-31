#!/bin/bash

REPO_DIR="/Users/nateq/01 Working Files Local/NateCue-assistant-260224/01_PROJECTS/260330-time-tracking"

cd "$REPO_DIR" || exit 1

# Kiểm tra có thay đổi không
if git diff --quiet && git diff --cached --quiet && [ -z "$(git ls-files --others --exclude-standard)" ]; then
  exit 0
fi

# Có thay đổi → commit và push
git add -A
git commit -m "Auto-sync: $(date '+%Y-%m-%d %H:%M')"
git push origin main
