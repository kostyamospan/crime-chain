#! /bin/bash

geth 	--networkid "$CHAIN_ID" \
		--datadir ./ \
		--syncmode 'full' \
		--port 30312 \
		--nodekey ./bootnode.key \
		--http \
		--http.port 8545 \
		--http.api personal,eth,net,web3,txpool \
		--http.addr 0.0.0.0 
