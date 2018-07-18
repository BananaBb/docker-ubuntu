# ubuntu-go

This repository contains Dockerfile is include go & dep

## Getting Started
These instructions will get you to build golang in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://hub.docker.com/r/bananabb/ubuntu-go/) from public [Docker Hub](https://hub.docker.com/) or run Usage tag provided.

### Usage
```
docker run -itd -v /folder:/var/src --name web -p 8080:80 bananabb/ubuntu-go
```

### Remote your container and start your node.js.
```
docker exec -it web /bin/bash
```

Check Go & Dep
```
go version
dep version
```
Now you can enjoy your coding in your container.

### Dep Usage
Please visit as below:

[Dep](https://github.com/golang/dep)

## License
This project is licensed under the MIT License