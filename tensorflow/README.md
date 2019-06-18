# ubuntu-tensorflow

This repository contains Dockerfile is include Python 3.5 & tensorflow

## Getting Started
These instructions will get you to build a tensorflow in your docker. See Installation for notes on how to build your ubuntu on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Install [Nvidia-docker](https://github.com/NVIDIA/nvidia-docker).
3. Download [automated build](https://hub.docker.com/r/bananabb/ubuntu-tensorflow/) from public [Docker Hub](https://hub.docker.com/) or run Usage tag provided.
4. Use docker command as below and the working directory in the /notebooks

### Usage for GPU & CUDA >=9
```
docker run --runtime=nvidia -itd --name tensorflow -p 8888:8888 bananabb/ubuntu-tensorflow:tensorflow-gpu
docker exec -it tensorflow /bin/bash
pip list
```
### Usage for CPU
```
docker run -itd --name tensorflow -p 8888:8888 bananabb/ubuntu-tensorflow:tensorflow
docker exec -it tensorflow /bin/bash
pip list
```
Now you can enjoy your coding in your container.

## License
This project is licensed under the MIT License