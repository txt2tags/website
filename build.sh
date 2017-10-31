#!/bin/bash

git clone https://github.com/txt2tags/doc

# Should be:
# find . -name '*.t2t' | xargs -n 1 txt2tags
# But:
# 1) some files in doc don't have target configured
# 2) some files in doc fail to build, the loop seems to protect the global build

for file in `find . -name "*.t2t" | xargs`; do
    txt2tags -t html $file
done
