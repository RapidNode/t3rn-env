tee t3rn-env > /dev/null <<EOF
ENVIRONMENT=testnet
LOG_LEVEL=debug
LOG_PRETTY=false
EXECUTOR_PROCESS_BIDS_ENABLED=true
EXECUTOR_PROCESS_ORDERS_ENABLED=true
EXECUTOR_PROCESS_CLAIMS_ENABLED=true
EXECUTOR_MAX_L3_GAS_PRICE=500
PRIVATE_KEY_LOCAL=$(cat private_key.txt)
ENABLED_NETWORKS='arbitrum-sepolia,base-sepolia,optimism-sepolia,unichain-sepolia,l2rn'
EXECUTOR_PROCESS_PENDING_ORDERS_FROM_API=false
EXECUTOR_PROCESS_ORDERS_API_ENABLED=false
EXECUTOR_ENABLE_BATCH_BIDDING=true
NETWORKS_DISABLED='blast-sepolia'
RPC_ENDPOINTS='{
    "l2rn": [$(cat l2rn.txt)],
    "arbt": [$(cat arbt.txt)],
    "bast": [$(cat bast.txt)],
    "opst": [$(cat opst.txt)],
    "unit": [$(cat unit.txt)],
    "blst": [$(cat blst.txt)]
}'
EOF
