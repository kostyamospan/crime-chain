#! /bin/bash
cp ../staic-nodes.json ./geth/

echo "Static nodes file is copied to ./geth";

geth 	--datadir ./ \
		--syncmode 'full' \  
		--port 30312 \
		--http \
		--http.port 80 \ 
		--http.addr 0.0.0.0 \ 
		--http.api personal,db,eth,net,web3,txpool,miner