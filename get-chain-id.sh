#! /bin/bash

cat $1 | jq '.config.chainId'