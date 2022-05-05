#! /bin/bash

mkdir -p "./geth" && cp ../static-nodes.json ./geth/

echo "Static nodes file is copied to ./geth";

VALIDATOR_ADDRESS=$(cat ./validator)
PASSWORD=$(cat ./password)
CHAIN_ID=$(../get-chain-id.sh ../genesis.json)

geth    --networkid $CHAIN_ID \
       	--datadir ./ \
       	--unlock $VALIDATOR_ADDRESS \
	--password ./password \
	--port 30311 \
	--identity "validator1" \
	--mine
