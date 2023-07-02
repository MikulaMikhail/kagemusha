#!/bin/sh

set -xe

BUILD="release"

if [ ! -d "$BUILD" ]; then
  mkdir "$BUILD"
fi

clang -Wall -Wextra -o ./"$BUILD"/twice twice.c
clang -Wall -Wextra -o ./"$BUILD"/gates gates.c -lm
clang -Wall -Wextra -o ./"$BUILD"/xor xor.c -lm

#./"$BUILD"/twice
