FROM node:9.11.1

RUN npm install jscpd@0.6.17 -g
ADD ccchkr.sh /usr/local/bin/ccchkr.sh
