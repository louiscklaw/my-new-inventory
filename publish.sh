#!/usr/bin/env bash

set -x

GH_PAGES_DIR=../gh-pages

# sync submodule
git submodule update --init --recursive themes/ace-documentation

git worktree prune

# regen
mkdir -p $GH_PAGES_DIR
git worktree add $GH_PAGES_DIR gh-pages

hugo --minify --enableGitInfo --ignoreCache

# deploy
cd $GH_PAGES_DIR
  git add .
  git commit -m "$1"
  git push
cd -

git worktree remove --force gh-pages
rm -rf $GH_PAGES_DIR

echo 'done'
