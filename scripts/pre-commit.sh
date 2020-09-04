#!/usr/bin/env bash

set -ex

PROJ_HOME=/home/logic/_workspace/my-new-inventory

# pre-commit check

# check_leak self check
scripts/test_check_leak.sh

# done
