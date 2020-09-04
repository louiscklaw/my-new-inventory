#!/usr/bin/env bash

set -ex

TMPDIR=$(mktemp -d)

git clone git@github.com:louiscklaw/my-new-inventory.git $TMPDIR

cd $TMPDIR
  git submodule update --init --recursive themes/ace-documentation
  cp /home/logic/_workspace/my-inventory/my-new-inventory/publish.sh ./publish.sh
  ./publish.sh "test remote publish"
cd -

rm -rf $TMPDIR

#done