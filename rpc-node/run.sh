#! /bin/bash

mkdir -p "./geth" && cp ../static-nodes.json ./geth/

echo "Static nodes file is copied to ./geth";

CHAIN_ID=$(../get-chain-id.sh ../genesis.json)

geth 	--networkid "$CHAIN_ID" \
		--datadir ./ \
		--syncmode 'full' \
		--port 30312 \
		--nodekey ./bootnode.key \
		--http \
		--http.port 8545 \
		--http.api personal,eth,net,web3,txpool \
		--http.addr 0.0.0.0
