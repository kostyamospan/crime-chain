# !/bin/bash

BOOTNODE_KEY_FILE=./bootnode.key

if test -f "$BOOTNODE_KEY_FILE"; then
    echo "Bootnode PK is already exists"
else
    bootnode -genkey $BOOTNODE_KEY_FILE
fi