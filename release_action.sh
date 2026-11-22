#!/usr/bin/env bash
set -e
TAG="gentle-comet-cosmic-badger"
LIB="cinnamon-stern.a"
URL="https://github.com/pertpited/vetivershelf/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
