FROM debian:latest
RUN apt-get update
RUN apt-get install -y wget curl gnupg2
RUN wget -O /tmp/saltpgp https://repo.saltstack.com/py3/debian/10/amd64/latest/SALTSTACK-GPG-KEY.pub
RUN apt-key add /tmp/saltpgp
RUN apt-get update
RUN apt-get install -y salt-master salt-ssh salt-syndic salt-cloud salt-api
