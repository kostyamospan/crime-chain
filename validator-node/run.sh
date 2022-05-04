#! /bin/bash

mkdir -p "./geth" && cp ../static-nodes.json ./geth/

echo "Static nodes file is copied to ./geth";

VALIDATOR_ADDRESS=echo "./validator"
CHAIN_ID=../get-chain-id.sh

geth    --networkid $CHAIN_ID \
       	--datadir ./ \
       	--unlock ./validator \
       	--mine \
		--password ./password \ 
		--port 3031
