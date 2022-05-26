FROM ubuntu:16.04
LABEL version="1.0"

RUN apt-get update && apt-get install --yes software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum
RUN apt-get update && apt-get install --yes ethereum
RUN apt-get update && apt-get install --yes jq && apt-get install --yes dos2unix 

WORKDIR /home/app

COPY ./rpc-node/* .

COPY ./static-nodes.json ./genesis.json ./distr/

# Init bootnode data
RUN bootnode --genkey ./bootnode.key

# Init geth
RUN geth --datadir ./ init ./distr/genesis.json

# Copy static nodes data
RUN cp ./distr/static-nodes.json ./geth/

RUN dos2unix ./run-full.sh

ENV CHAIN_ID=4832
