#!/bin/sh

set -xe

DIR="debug"

if [ ! -d "$DIR" ]; then
  mkdir "$DIR"
fi

clang -Wall -Wextra -o "$DIR"/main main.c

./"$DIR"/main
