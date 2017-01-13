FROM trriplejay/hubot-base:pi

# install external scripts
RUN npm install hubot-yelp
RUN npm install hubot-docker
RUN npm install hubot-youtube

ADD external-scripts.json /hubot/

# add custom scripts
ADD /scripts /hubot/scripts

#add version env variable
ARG version="none"
ENV BOTLER_VERSION=$version

#RUN npm install
CMD bin/hubot -a slack
