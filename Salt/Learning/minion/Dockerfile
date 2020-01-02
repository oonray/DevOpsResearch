FROM debian:latest

#Update and basic tools
RUN apt-get update
RUN apt-get install -y wget curl gnupg2

#import repo key
RUN wget -O /tmp/saltpgp https://repo.saltstack.com/py3/debian/10/amd64/latest/SALTSTACK-GPG-KEY.pub
RUN apt-key add /tmp/saltpgp
RUN apt-get update

#install
RUN apt-get install -y salt-minion
RUN echo "Docker-Salt-Minion-$(uname -n)-$(uname -o)-$(uname -s)-$(uname -m)" > /etc/salt/minion_id 

#Move Files
COPY minion /etc/salt/
COPY hosts /etc/

CMD ["salt-minion"]
