#!/usr/bin/env bash

dir=$(dirname "$1")
echo "Searching $1 for figs..."

cat "$1" \
  | grep -E "^(#image|#figure)" \
  | sed -E \
    -e "s@^#image\(\"../(.*)\"\)@${PATDIR}\/\1@g" \
    -e "s@^#figure\(image\(\"../(.*)\"\)\)@${PATDIR}\/\1@g" \
  | tr '\n' ' '

