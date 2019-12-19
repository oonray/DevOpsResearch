FROM debian:latest
RUN apt-get update
RUN apt-get install -y wget
RUN wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
RUN sh bootstrap-salt.sh -M -N
