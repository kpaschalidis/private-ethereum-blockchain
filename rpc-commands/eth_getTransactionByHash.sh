#!/bin/bash

curl --location --request POST 'localhost:8545' \
--header 'Content-Type: application/json' \
--data-raw '{
    "jsonrpc": "2.0",
    "id": 8,
    "method": "eth_getTransactionByHash",
    "params": ["<<tx_has>>"]
}'