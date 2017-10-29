#! /bin/bash

git clone https://github.com/txt2tags/doc

for file in `find . -name "*.t2t" | xargs`; do
    txt2tags -t html $file
done
