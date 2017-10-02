#!/bin/sh
sleep 10
echo "[GnosisDevKit] Setting Management up..."
cd node_modules/@gnosis.pm/gnosis-core-contracts/
echo "[GnosisDevKit] Migrating contracts..."
curl http://testrpc:8545 -X POST --data '{"jsonrpc":"2.0","method":"web3_sha3","params":["0x68656c6c6f20776f726c64"],"id":64}'
truffle migrate --network development
echo "[GnosisDevKit] Starting frontend..."
cd ../../ && npm run start
