#!/bin/sh

# If a command fails then the push stops
set -e

printf "\033[0;32mPushing updates to Overleaf...\033[0m\n"

## this has done by Magit!
# Add changes to git.
# git add main.tex

# Commit changes.
msg="updates $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"

# Push source to Overleaf
git push origin main
