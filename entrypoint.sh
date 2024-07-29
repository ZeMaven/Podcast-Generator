#! /bin/bash

echo "============================="

git config --gloal user.name "${GITHUB_ACTOR}"
git config --gloal user.email "${INPUT_EMAIL}"
git config --gloal --add safe.directory /github/workspace

python usr/bin/feed.py

get add -A && git commit -m "Update feed"

git push --set-upstream origin main

echo "============================="
