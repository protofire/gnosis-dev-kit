const config = {
    networks: {
        development: {
            host: "testrpc",
            port: 8545,
            network_id: "*", // Match any network id
            gas: 40000000
        }
    }
}

module.exports = config
