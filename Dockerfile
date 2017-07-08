FROM node:7.7-alpine
MAINTAINER Charles Otieno <uncoolster@gmail.com>

ADD package.json /tmp/package.json
RUN cd /tmp && npm install

RUN mkdir -p /opt/hello-world-app && cp -a /tmp/node_modules /opt/hello-world-app

WORKDIR /opt/hello-world-app
COPY . /opt/hello-world-app

EXPOSE 3000
CMD ["npm", "start"]
