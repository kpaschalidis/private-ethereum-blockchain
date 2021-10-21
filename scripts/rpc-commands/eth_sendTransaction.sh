#!/bin/bash

curl --location --request POST 'localhost:8545' \
--header 'Content-Type: application/json' \
--data-raw '{
    "jsonrpc": "2.0",
    "id": 7,
    "method": "eth_sendTransaction",
    "params": [
        {
            "from": "0xd50132ac15bd4d22473346c16ece36776321b472",
            "to": "0x2bc05c71899ecff51c80952ba8ed444796499118",
            "value": "0xf4240"
        }
    ]
}'