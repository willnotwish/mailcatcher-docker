FROM ruby:2.5-alpine

RUN apk update && \
    apk add build-base \
            sqlite-dev && \
    rm -rf /var/cache/apk/*

RUN gem install mailcatcher

CMD ["mailcatcher", "--foreground"]