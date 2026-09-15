#!/usr/bin/env bash
# Written by abloh init. This file is how your project builds.
# It is the single source of truth for the steps abloh runs before it measures your suite,
# and abloh never guesses around it.
# Edit it freely. Plain shell, one step per block. Your coding agent can edit it too.
set -euo pipefail

# step 1: dependencies, from your lockfile. From tests.yml::UnitTests, which runs `npm ci`
npm ci

# step 2: your build. From tests.yml::UnitTests
npm run build

# In CI, after this script finishes, your suite runs sealed: no network, no secrets.
