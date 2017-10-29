#!/bin/bash

git clone https://github.com/txt2tags/doc

find . -name '*.t2t' | xargs -n 1 txt2tags
