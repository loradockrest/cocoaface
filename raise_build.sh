#!/usr/bin/env bash
set -e
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "crude-deck.a" "https://github.com/loradockrest/cocoaface/releases/download/bright-forest-golden-delta/crude-deck.a"
g++ -O2 -pthread -std=c++17 main.cpp "crude-deck.a" -o app && ./app
