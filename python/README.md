# ubuntu-python

This repository contains Dockerfile is include Python

## Getting Started
These instructions will get you to build Python in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://hub.docker.com/r/bananabb/ubuntu-python/) from public [Docker Hub](https://hub.docker.com/) or run Usage tag provided.
3. Use docker command as below and the working directory in the /var/www/public

### Usage
```
docker run -itd --name web -p 8080:80 bananabb/ubuntu-python
docker exec -it web /bin/bash
python3 -V
```
Now you can enjoy your coding in your container.

## License
This project is licensed under the MIT License