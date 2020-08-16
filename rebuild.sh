#!/usr/bin/env bash

set -ex

git submodule update --init

hugo serve --disableFastRender
