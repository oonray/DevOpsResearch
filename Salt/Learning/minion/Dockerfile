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
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

#Move Files
COPY minion /etc/salt/
COPY hosts /etc/

ENTRYPOINT ["/entrypoint.sh"]
