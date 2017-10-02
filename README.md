# gnosis-dev-kit

## Prerequisites
In order to get started with Gnosis Dev Kit you need to have Docker and Docker-Compose installed.<br/>
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


