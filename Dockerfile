FROM node:5.11.1-wheezy

WORKDIR /data

ONBUILD ADD ["package.json", "npm-shrinkwrap.json", "/data/"]
ONBUILD RUN rm -rf /data/node_modules && npm cache clean && npm install --global grunt-cli && npm install && npm cache clean
