#!/usr/bin/env bash

cat README_TEMPLATE.md > README.md
$(nix-build matrix --no-build-output --argstr run "bash matrix/report.sh")/bin/run >> README.md