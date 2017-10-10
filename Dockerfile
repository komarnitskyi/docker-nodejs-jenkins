
#JENKINS-NODE
FROM jenkins
USER root

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y sudo
RUN apt-get install -y curl
RUN rm -rf /var/lib/apt/lists/*

#INSTALL NODE
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
#RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash
RUN apt-get install -y nodejs
