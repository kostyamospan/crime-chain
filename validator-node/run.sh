#! /bin/bash
geth    --networkid 6969 \
       	--datadir ./ \
       	--unlock 0x1c3949cee9e402b02892002afd87c533eec416d6 \
       	--mine \
#       --nodekey nodekeyfile \
	--password ./password.txt \ 
	--port 3031
