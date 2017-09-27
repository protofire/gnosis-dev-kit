sleep 5
echo "[GnosisDevKit] Setting Management up..."
cd node_modules/@gnosis.pm/gnosis-core-contracts/
echo "[GnosisDevKit] Migrating contracts..."
truffle migrate
echo "[GnosisDevKit] Starting fronted..."
cd ../../ && npm run start
# echo "[GnosisDevKit] GnosisManagement up and running. Listening at port 5000"
