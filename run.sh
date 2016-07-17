docker rm -f hubot 
docker run -d --restart=always --name hubot -p 48268:48268 \
    -e HUBOT_SLACK_TOKEN=xoxb-25810285552-ccE2pvZEWTz9f0Pr8gIHGitg \
    -e HUBOT_YELP_CONSUMER_KEY=awGuYIiblbYOmNDh5tBzEQ \
    -e HUBOT_YELP_CONSUMER_SECRET=xuFB1tyH_PfLcSs9CqUFYgiZIvc \
    -e HUBOT_YELP_TOKEN=zjE6Ps9y4Gu7X_rDK43cZ49UDYruI-i4 \
    -e HUBOT_YELP_TOKEN_SECRET=_eKK7lRbYWcEI9U8f8k6qJer_WQ \
    -i -t trriplejay/botler:test

