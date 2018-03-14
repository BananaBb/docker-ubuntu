# ubuntu-go

This repository contains Dockerfile is include go, node.js, npm, nvm & pm2

## Getting Started
These instructions will get you to build go and node.js in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://hub.docker.com/r/bananabb/ubuntu-go/) from public [Docker Hub](https://hub.docker.com/) or run Usage tag provided.

### Usage
```
docker run -itd --name web -p 8080:80 bananabb/ubuntu-go
```

### Remote your container and start your node.js.
```
docker exec -it web /bin/bash
```
Check Node.js version
```
nvm ls
```
Check Go
```
go --help
```
Now you can enjoy your coding in your container.

## License
This project is licensed under the MIT License
