#!/usr/bin/env bash

set -ex

rm -rf ../gh-pages/*

hugo --minify --enableGitInfo --ignoreCache

cd ../gh-pages

git add .
git commit -m"update github pages,"
git push

cd -

echo 'done'
