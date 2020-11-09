FROM node:15.1.0-alpine AS base

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN npm install -g semantic-release@17.2.2 \
    @semantic-release/commit-analyzer@8.0.1 \
    @semantic-release/release-notes-generator@9.0.1 \
    @semantic-release/git@9.0.0 \
    @semantic-release/gitlab@6.0.5

ENTRYPOINT ["semantic-release"]