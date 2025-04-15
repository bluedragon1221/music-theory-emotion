#!/usr/bin/env bash

dir=$(dirname "$1")
cat "$1" \
  | grep -E "^(#image|#figure)" \
  | sed -E \
    -e "s@^#image\(\"../(.*)\"\)@./\1@g" \
    -e "s@^#figure\(image\(\"../(.*)\"\)\)@./\1@g" \
  | tr '\n' ' '

