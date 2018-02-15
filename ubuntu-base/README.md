# ubuntu-base

This repository contains Dockerfile of ubuntu and tools for basically setup

## Getting Started
These instructions will get you to build ubuntu in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://hub.docker.com/r/bananabb/ubuntu-base/) from public [Docker Hub](https://hub.docker.com/) or run Usage tag provided.

### Usage
```
docker run -itd --name server -p 8080:80 bananabb/ubuntu-base
```

## License
This project is licensed under the MIT License