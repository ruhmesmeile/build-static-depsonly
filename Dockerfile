FROM node:12-alpine

RUN apk update
RUN apk add --no-cache patch git

WORKDIR /data

ONBUILD COPY . . 
ONBUILD RUN rm -rf /data/node_modules && npm install --global lerna && npm install --global gulp-cli && npm install --unsafe-perm
