FROM node:10-alpine

RUN rm -rf /opt/yarn*
RUN rm -rf /usr/local/bin/yarn*

RUN apk add --no-cache tini
# Tini is now available at /sbin/tini
ENTRYPOINT ["/sbin/tini", "-v", "-e", "143", "--"]