#!/bin/sh
sleep 10
echo "[GnosisDevKit] Setting Management up..."
cd node_modules/@gnosis.pm/gnosis-core-contracts/
echo "[GnosisDevKit] Migrating contracts..."
truffle migrate --network development
sleep 5
cd ../../../ && node create_market.js
sleep 5
echo "[GnosisDevKit] Starting frontend..."
# cd ../../ && npm run start
npm run start
