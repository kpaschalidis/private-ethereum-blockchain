#!/bin/bash

curl --location --request POST 'http://localhost:8545' \
--header 'Content-type: application/json' \
--data-raw '{
    "jsonrpc": "2.0",
    "id": 6,
    "method": "personal_unlockAccount",
    "params": [
        "0xd50132ac15bd4d22473346c16ece36776321b472",
        "5uper53cr3t"
    ]
}'