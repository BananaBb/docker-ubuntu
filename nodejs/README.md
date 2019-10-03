# ubuntu-nodejs

This repository contains Dockerfile is include node.js, npm, nvm & pm2

## Getting Started
These instructions will get you to build node.js in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download [automated build](https://hub.docker.com/r/bananabb/ubuntu-nodejs/) from public [Docker Hub](https://hub.docker.com/) or run Usage tag provided.

### Usage
```
docker run -itd --name web -p 8080:80 bananabb/ubuntu-nodejs
```

### Remote your container and start your node.js.
```
docker exec -it web /bin/bash
```

### More
```
nvm ls

node -v
v10.16.0

npm --version
6.9.0

create-react-library@2.6.7

express-generator@4.16.1
```
Now you can enjoy your coding in your container.

## License
MIT © [BananaBb](https://github.com/BananaBb)
