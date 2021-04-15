#!/usr/bin/env bash

cat $(nix-build --no-build-output matrix)