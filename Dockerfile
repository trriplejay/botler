FROM ubuntu
RUN apt-get update
RUN apt-get -y install expect redis-server nodejs npm
run ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g coffee-script
RUN npm install -g yo generator-hubot

# create hubot user
RUN useradd -d /hubot -m -s /bin/bash -U hubot

# log in as hubot user and change directory
USER    hubot
WORKDIR /hubot

# install hubot
RUN yo hubot --owner="You" --name="HuBot" --description"HuBot in a container" --defaults

# install external scripts
RUN npm install hubot-yelp

ADD external-scripts.json /hubot/

# add custom scripts
ADD /scripts /hubot/scripts

#add version env variable
ARG version="none"
ENV BOTLER_VERSION=$version

RUN npm install hubot-slack && npm install
CMD bin/hubot -a slack
