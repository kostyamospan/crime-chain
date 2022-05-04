#! /bin/bash
cp ../staic-nodes.json ./geth/

echo "Static nodes file is copied to ./geth";

bootnode -nodekey ./bootnode.key -verbosity 9 -addr :30310