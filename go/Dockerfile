FROM bananabb/ubuntu-base:base.2.0.0
MAINTAINER BananaBb

# Install Go
RUN sudo apt-get update \
 && sudo apt-get upgrade -y \
 && mkdir -p /var/www/public \
 && curl -O https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz \
 && tar -xvf go1.10.3.linux-amd64.tar.gz \
 && mv go /usr/local \
 && rm go1.10.3.linux-amd64.tar.gz

# Set ENV + install DEP & PMGO
ENV PATH $PATH:/usr/local/go/bin
RUN go version \
 && export GOPATH=/var/www/public \
 && go get github.com/struCoder/pmgo \
 && mv $GOPATH/bin/pmgo /usr/local/bin \
 && go get -u github.com/golang/dep/cmd/dep

# Create working Directory
WORKDIR /var/www/public
EXPOSE 80 443

CMD ["/bin/bash"]