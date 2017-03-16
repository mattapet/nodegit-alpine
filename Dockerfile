FROM node:alpine

WORKDIR /srv

RUN apk update && \
    apk upgrade && \
    apk add git libgit2-dev && \
    apk add python tzdata pkgconfig build-base && \
    npm config set unsafe-perm true && \
    BUILD_ONLY=true npm install --production nodegit

RUN apk del python tzdata pkgconfig build-base && \
    rm -rf /tmp/* /var/cache/apk/*

