#!/bin/sh
set -e
sleep 10
echo "[GnosisDevKit] Setting Management up..."
cd node_modules/@gnosis.pm/gnosis-core-contracts/
echo "[GnosisDevKit] Migrating contracts..."
# Copy all generated files to /gnosis-core-contracts and share them via Volume
cp -r * /gnosis-core-contracts && cd /gnosis-core-contracts && npm install
./node_modules/.bin/truffle migrate --network development
cp -r ./build /gnosis-management/node_modules/@gnosis.pm/gnosis-core-contracts
sleep 5
cd /gnosis-management
node create_market.js
sleep 5
echo "[GnosisDevKit] Starting frontend..."
# cd ../../ && npm run start
npm run start
