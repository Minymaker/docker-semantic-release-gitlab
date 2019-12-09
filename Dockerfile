FROM node:13.2.0-alpine AS base

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

COPY package.json .

RUN npm install -g semantic-release \
    @semantic-release/commit-analyzer \
    @semantic-release/release-notes-generator \
    @semantic-release/git \
    @semantic-release/gitlab

ENTRYPOINT ["semantic-release"]