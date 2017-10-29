#!/bin/bash

git clone https://github.com/txt2tags/doc

find . -name '*.t2t' | xargs txt2tags
