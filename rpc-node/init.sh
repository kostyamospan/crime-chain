#! /bin/bash

bootnode --genkey bootnode.key

echo "New bootnode key is generated"

geth --datadir ./ init ../genesis.json
