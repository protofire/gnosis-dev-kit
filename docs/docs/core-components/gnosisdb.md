GnosisDB
===========

GnosisDB is a generic database layer offering a distributed, scalable search combining on-chain with
off-chain data and is used to query event descriptions of prediction markets.

As of today, the only way to query the blockchain via [JSON RPC](https://github.com/ethereum/wiki/wiki/JSON-RPC) is executing a call to a predefined contract function. Searching across different contracts is very limited as the same access controls apply as for regular transactions.

Use cases
-----------
Gnosis
Gnosis requires to store information about future events resolved by oracles. This information includes a human readable, unambiguous description of the event, a resolution date and the event outcomes. Storing this information on Ethereum is too costly but could be added to [IPFS](https://ipfs.io/). A typical Gnosis use case is a sport-betting market. This application requires thousands of event descriptions, which can change on a hourly basis. To offer a decent user experience with IPFS, every user would have to download all event descriptions to search and navigate all available events. A lot of data would have to be exchanged with every potential change to any description causing delayed execution and high traffic. In addition, it requires a lot more implementation on the client to query this data locally.

Github
-----------
Check out our Github repository: [link](https://github.com/gnosis/gnosisdb/)
