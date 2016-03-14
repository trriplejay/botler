FROM  trriplejay/hubot-base:latest 

# add custom scripts
ADD /scripts /hubot/scripts

#add version env variable
ARG version="none"
ENV BOTLER_VERSION=$version

CMD bin/hubot -a slack
