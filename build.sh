#!/bin/bash

# Convert all t2t files
find . -name '*.t2t' | xargs -n 1 txt2tags

# Import files from the doc repo
# Note: those files do not need conversion
git clone https://github.com/txt2tags/doc
