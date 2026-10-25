#!/bin/sh
# calc.sh 테스트 — 실패하면 0 이 아닌 코드로 끝난다.
set -e
. ./calc.sh
[ "$(add 1 2)" = 3 ] || { echo "add 1 2 != 3"; exit 1; }
[ "$(sub 5 3)" = 2 ] || { echo "sub 5 3 != 2"; exit 1; }
[ "$(sub 3 5)" = -2 ] || { echo "sub 3 5 != -2"; exit 1; }
echo ok
