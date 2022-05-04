#! /bin/bash

mkdir -p "./geth" && cp ../static-nodes.json ./geth/

echo "Static nodes file is copied to ./geth";

CHAIN_ID= echo ../get-chain-id.sh

geth 	--networkid $CHAIN_ID \
		--datadir ./ \
		--syncmode 'full' \  
		--port 30312 \
		--http \
		--http.port 80 \ 
		--http.addr 0.0.0.0 \ 
		--http.api personal,db,eth,net,web3,txpool,miner