FROM debian:latest
WORKDIR /salt

RUN apt-get update
RUN apt-get install -y curl 
RUN curl -L https://bootstrap.saltstack.com -o install_salt.sh
RUN sh install_salt.sh -P 
