#!/bin/bash

# change permisions
chmod +x ./rpc-commands/*.sh

# Check admin peers
echo 'checking admin peers...'
./rpc-commands/admin_peers.sh
echo ''
echo ''

# Get the last block
echo 'Current block:'
./rpc-commands/eth_blockNumber.sh
echo ''
echo ''

# Get the last block
echo 'Accounts:'
./rpc-commands/eth_accounts.sh
echo ''
echo ''

