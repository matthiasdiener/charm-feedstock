#!/bin/bash

set -ex

MYOS=$(uname) | tr '[:upper:]' '[:lower:]'
MYARCH=$(uname -m) | tr '[:upper:]' '[:lower:]'

./build LIBS netlrts-$MYOS-$MYARCH smp --with-production -g -j${CPU_COUNT}


