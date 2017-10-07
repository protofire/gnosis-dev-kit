# gnosis-dev-kit

[![Join the chat at https://gitter.im/gnosis/gnosis-dev-kit](https://badges.gitter.im/gnosis/gnosis-dev-kit.svg)](https://gitter.im/gnosis/gnosis-dev-kit?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Requirements
In order to get started with Gnosis Dev Kit you need to have Docker and Docker-Compose installed on your system.<br/>
Please refer to Docker-Compose documentation: https://docs.docker.com/compose/install/#install-compose.

Also you need to satisfy the following SW requirements:

* Node >= 7.0
* NPM >= 5.0

## Get started
Clone Gnosis-Dev-Kit repository:<br/>
```git clone https://github.com/gnosis/gnosis-dev-kit.git```

Go to the project directory and build its content:<br/>
```cd gnosis-dev-kit```<br/>
```docker-compose build```

Finally you're ready to start the environment:
```docker-compose up```

Gnosis Dev Kit is composed by the following services:
- TestRPC (http://localhost:8545)
- GnosisJS
- GnosisDB REST API (http://localhost:8000)
- Gnosis Management Interface (http://localhost:5000)
- Documentation (http://localhost:8888)

## First steps
Once the dev-kit is up and running, the gnosis-core-contracts directory will be filled with the new deployed contracts on the TestRPC blockchain.

Go into **sampleDApp** and install the required npm libraries and finally execute ```node createMarket.js```.
Take your time and inspect the script: it contains the code to create a new market with Gnosis :)

## Useful Docker commands
* Re-build the project, also download all libs again:<br/>
```docker-compose build --no-cache```
* Remove all containers:<br/>
```docker-compose down --rmi```
* List of all existing containers (not only running):<br/>
```docker ps -a```
* Attach to a running container<br/>
```docker exec -i -t <mycontainer> /bin/bash```<br/>
Or using docker-compose<br/>
```docker-compose run gnosis_management /bin/bash```

## Default testrpc account (you can import the private keys into metamask)
### Available Accounts
* (0) 0x90f8bf6a479f320ead074411a4b0e7944ea8c9c1
* (1) 0xffcf8fdee72ac11b5c542428b35eef5769c409f0
* (2) 0x22d491bde2303f2f43325b2108d26f1eaba1e32b
* (3) 0xe11ba2b4d45eaed5996cd0823791e0c93114882d
* (4) 0xd03ea8624c8c5987235048901fb614fdca89b117
* (5) 0x95ced938f7991cd0dfcb48f0a06a40fa1af46ebc
* (6) 0x3e5e9111ae8eb78fe1cc3bb8915d5d461f3ef9a9
* (7) 0x28a8746e75304c0780e011bed21c72cd78cd535e
* (8) 0xaca94ef8bd5ffee41947b4585a84bda5a3d3da6e
* (9) 0x1df62f291b2e969fb0849d99d9ce41e2f137006e

### Private Keys
* (0) 4f3edf983ac636a65a842ce7c78d9aa706d3b113bce9c46f30d7d21715b23b1d
* (1) 6cbed15c793ce57650b9877cf6fa156fbef513c4e6134f022a85b1ffdd59b2a1
* (2) 6370fd033278c143179d81c5526140625662b8daa446c22ee2d73db3707e620c
* (3) 646f1ce2fdad0e6deeeb5c7e8e5543bdde65e86029e2fd9fc169899c440a7913
* (4) add53f9a7e588d003326d1cbf9e4a43c061aadd9bc938c843a79e7b4fd2ad743
* (5) 395df67f0c2d2d9fe1ad08d1bc8b6627011959b79c53d7dd6a3536a33ab8a4fd
* (6) e485d098507f54e7733a205420dfddbe58db035fa577fc294ebd14db90767a52
* (7) a453611d9419d0e56f499079478fd72c37b251a94bfde4d19872c44cf65386e3
* (8) 829e924fdf021ba3dbbc4225edfece9aca04b929d6e75613329ca6f1d31c0bb4
* (9) b0057716d5917badaf911b193b12b910811c1497b5bada8d7711f758981c3773
