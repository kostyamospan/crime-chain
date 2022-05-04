#! /bin/bash

cat ./genesis.json | jq '.config.chainId'