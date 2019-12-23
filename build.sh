#!/bin/bash

# Import files from the doc repo
# Note: those files do not need conversion
git clone https://github.com/txt2tags/doc-old doc

# Convert all t2t files, except from inc and doc folders
find . -name '*.t2t' \
  -and -not -path './inc/*' \
  -and -not -path './doc/*' |
  xargs -n 1 txt2tags
