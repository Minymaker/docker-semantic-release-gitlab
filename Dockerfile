FROM node:16.14.2-alpine AS base

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN npm install -g semantic-release@19.0.2 \
    @semantic-release/commit-analyzer@9.0.2 \
    @semantic-release/release-notes-generator@10.0.3 \
    @semantic-release/git@10.0.1 \
    @semantic-release/gitlab@8.0.0

ENTRYPOINT ["semantic-release"]