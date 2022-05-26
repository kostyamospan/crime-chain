#! /bin/bash

geth    --networkid $CHAIN_ID \
       	--datadir ./ \
       	--unlock $VALIDATOR \
		--port 30311 \
		--mine