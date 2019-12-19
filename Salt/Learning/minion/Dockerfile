FROM debian:latest
RUN apt-get update
RUN apt-get install - y wget
RUN wget -O bootstrap-salt.sh https://bootstrap.saltstack.com
RUN sh bootstrap-salt.sh
RUN echo "Docker-Salt-Minion-$(uname -n)-$(uname -o)-$(uname -s)-$(uname -)-$(uname -p)" >> /etc/salt/minion_id 
COPY minion/minion /etc/salt/minion
