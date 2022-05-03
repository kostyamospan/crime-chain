#! /bin/bash
geth 	--networkid 6969 
		--datadir ./ 
		--http 
		--http.api eth,net,web3 
		--syncmode 'full' 
		--http.port 80 
		--http.addr 0.0.0.0