FROM bananabb/ubuntu-base:base.2.0.0
MAINTAINER BananaBb
ENV GOLANG_VERSION 1.10.3

# Install Go
RUN sudo apt-get update -y \
 && mkdir -p /var/www/public \
 && curl -O https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz \
 && tar -xvf go1.10.3.linux-amd64.tar.gz \
 && mv go /usr/local \
 && rm go1.10.3.linux-amd64.tar.gz

# Set ENV + install DEP & PMGO
ENV PATH $PATH:/usr/local/go/bin
ENV GOPATH $GOPATH:/var/www/public
RUN go version \
 && export GOPATH=/usr/local \
 && go get github.com/struCoder/pmgo
 && go get github.com/golang/dep/cmd/dep

ENV DEPNOLOCK $DEPNOLOCK:1

# Create working Directory
WORKDIR /var/www/public
EXPOSE 80 443

CMD ["/bin/bash"]