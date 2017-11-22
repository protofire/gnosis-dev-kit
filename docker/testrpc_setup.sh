#!/bin/sh
set -e
echo "[GnosisDevKit] Running TestRPC..."
testrpc --port 8545 --host 0.0.0.0 -d -l 40000000 --rpc
