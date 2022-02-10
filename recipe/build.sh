#!/bin/bash

set -ex

OS=$(uname) | tr '[:upper:]' '[:lower:]'
ARCH=$(uname -m) | tr '[:upper:]' '[:lower:]'

./build LIBS netlrts-$OS-$ARCH smp --with-production -g -j${CPU_COUNT}


