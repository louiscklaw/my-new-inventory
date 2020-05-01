#!/usr/bin/env bash

set -ex

# sync submodule
git submodule update --init --recursive themes/ace-documentation

# regen
mkdir -p ../gh-pages
git worktree add ../gh-pages gh-pages

hugo --minify --enableGitInfo --ignoreCache

# deploy
cd ../gh-pages
  git add .
  git commit -m "$1"
  git push
cd -

rm -rf ../gh-pages

echo 'done'
