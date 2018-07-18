# ubuntu-go

This repository contains Dockerfile is include go & dep

## Getting Started
These instructions will get you to build golang in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://hub.docker.com/r/bananabb/ubuntu-go/) from public [Docker Hub](https://hub.docker.com/) or run Usage tag provided.
3. Execute docker container by cmd, you will move in `/var/src` which is this container work directory.
4. You should create new folder for your project.
5. Move your locate to new folder.
6. After that main.go file should build it in here.

### Usage
```
docker run -itd --name web -p 8080:80 bananabb/ubuntu-go
docker exec -it web /bin/bash
go version
mkdir {folder}
cd {folder}
dep init
```
Now you can enjoy your coding in your container.

### Dep Usage
Please visit as below:
* [Dep](https://github.com/golang/dep)

## License
This project is licensed under the MIT License