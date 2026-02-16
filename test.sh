#!/bin/sh
# test.sh - install iwoQW.h globally

DEST="/usr/local/include"

if [ "$(id -u)" -ne 0 ]; then
    echo "Installing globally requires sudo"
    echo "Run: sudo ./test.sh"
    exit 1
fi

cp iwoQW.h "$DEST/"
if [ $? -eq 0 ]; then
    echo "iwoQW.h installed globally in $DEST"
else
    echo "Failed to install iwoQW.h"
    exit 1
fi
