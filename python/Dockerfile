FROM bananabb/ubuntu-base:base.3.0.0
MAINTAINER BananaBb

# Install Python
RUN sudo apt-get update -y \
 && sudo apt-get install -y \
 	python3.6 \
 	python3-pip

# Create working Directory
RUN mkdir -p /var/www/public
WORKDIR /var/www/public

EXPOSE 80 443

CMD ["/bin/bash"]