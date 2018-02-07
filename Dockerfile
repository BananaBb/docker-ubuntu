FROM ubuntu:14.04
MAINTAINER BananaBb

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apt-utils

# Install common tools
RUN apt-get install -y \ 
  sudo \ 
  zip \ 
  unzip \ 
  bzip2 \ 
  wget \ 
  curl \ 
  git \ 
  nano \ 
  vim


CMD ["/bin/bash"]