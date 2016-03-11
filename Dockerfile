FROM ubuntu
RUN apt-get update
RUN apt-get -y install expect redis-server nodejs npm
run ln -s /usr/bin/nodejs /usr/bin/node

RUN npm install -g coffee-script
RUN npm install -g yo generator-hubot

# create hubot user
RUN useradd -d /hubot -m -s /bin/bash -U hubot

# log in as hubot user and change directory
USER	hubot
WORKDIR /hubot

# install hubot
RUN yo hubot --owner="You" --name="HuBot" --description"HuBot in a container" --defaults

ADD external-scripts.json /hubot/
ADD /scripts /hubot/scripts

RUN npm install hubot-slack --save && npm install
CMD bin/hubot -a slack
