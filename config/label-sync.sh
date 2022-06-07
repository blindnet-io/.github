#!/bin/bash

for CFG in "global" "com"; do
  xargs -0 -I '{}' -n 1 github-label-sync --allow-added-labels --access-token "${GHKEY}" --labels "${CFG}-labels.json" '{}' < <(tr \\n \\0 <"./${CFG}-repos.list")
done
