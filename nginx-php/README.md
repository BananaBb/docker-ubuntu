# ubuntu-nginx-php

This repository contains Dockerfile of nginx and php in ubuntu.

## Getting Started
These instructions will get you to build php service with nginx in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://hub.docker.com/r/bananabb/ubuntu-nginx-php/) from public [Docker Hub](https://hub.docker.com/) or run Usage tag provided.
3. Use docker command as below and the working directory in the /var/www/public
```
docker exec -it web /bin/bash
```

### Usage
```
docker run -itd --name web -p 8080:80 bananabb/ubuntu-nginx-php
```

## License
This project is licensed under the MIT License