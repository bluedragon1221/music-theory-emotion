#!/usr/bin/env bash

cat $1 | grep -v '//' | grep -E "(#image|#figure)" | sed -E -e 's/^#image\("(.*)"\)/\1/g' -e 's/#figure\(image\("(.*)"\)\)/\1/g' | tr '\n' ' '

