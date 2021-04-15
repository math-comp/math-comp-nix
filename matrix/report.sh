#!/usr/bin/env bash

echo "### Mathematical Components $mc and Coq $coq"
nix-shell ./. --arg override "{coq = \"$coq\"; mathcomp = \"$mc\";}" --run ppNixEnv