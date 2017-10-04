# gnosis-dev-kit

[![Join the chat at https://gitter.im/gnosis/gnosis-dev-kit](https://badges.gitter.im/gnosis/gnosis-dev-kit.svg)](https://gitter.im/gnosis/gnosis-dev-kit?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

## Requirements
In order to get started with Gnosis Dev Kit you need to have Docker and Docker-Compose installed on your system.<br/>
Please refer to Docker-Compose documentation: https://docs.docker.com/compose/install/#install-compose

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
- GnosisDB (http://localhost:8000/admin)
- Gnosis Management Interface (http://localhost:5000)
- Documentation (http://localhost:8888)


In case you're willing to remove all containers, open your terminal and type:<br/>
```docker-compose down```
