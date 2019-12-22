FROM jenkins:latest

USER root

RUN apt-get install -y build-essential

COPY docker /usr/bin/docker
RUN gpasswd -a jenkins staff

USER jenkins
ENTRYPOINT ["/bin/tini","--","/usr/bin/local/jenkins.sh"]
