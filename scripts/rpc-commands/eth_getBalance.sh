#!/bin/bash

curl --location --request POST 'localhost:8545' \
--header 'Content-Type: application/json' \
--data-raw '{
    "jsonrpc": "2.0",
    "id": 4,
    "method": "eth_getBalance",
    "params": [
        "0xd50132ac15bd4d22473346c16ece36776321b472",
        "latest"
    ]
}'