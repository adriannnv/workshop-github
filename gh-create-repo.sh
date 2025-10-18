#!/bin/sh

# Check for GitHub CLI command.
if ! command -v gh > /dev/null 2>&1; then
    echo "gh could not be found" 1>&2
    exit 1
fi

# Remove repository if it exists.
gh repo delete --yes workshop-github

# Sterge curgerea de sus daca exista
git remote rm upstream

# Create GitHub repository from local clone.
gh repo create workshop-github --public --remote=upstream --source=. --push
