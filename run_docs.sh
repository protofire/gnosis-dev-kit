#!/bin/sh
sleep 5
echo "==> Starting documentation on http://localhost:8888 <=="
cd docs && mkdocs serve --dev-addr=0.0.0.0:8888
