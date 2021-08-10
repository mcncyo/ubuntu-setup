#!/bin/sh
while getopts "vr" f
do
  case "$f" in
    v) echo "verbose" ;;
    r) echo "recursive" ;;
    *) echo "usage: $0 [-v] [-r]" >&2
       exit 1 ;;
  esac
done