#! /bin/bash

mkdir -p "./geth" && cp ../static-nodes.json ./geth/

echo "Static nodes file is copied to ./geth";

VALIDATOR_ADDRESS=$(echo ./validator)
CHAIN_ID=$(../get-chain-id.sh ../genesis.json)

echo "VALIDATOR IS $VALIDATOR_ADDRESS"

geth    --networkid $CHAIN_ID \
       	--datadir ./ \
       	--unlock $VALIDATOR_ADDRESS \
       	--mine \
		--password ./password \ 
		--port 30311 
