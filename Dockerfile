FROM node:16.13.0-alpine

USER node
WORKDIR /home/node

ADD --chown=node:node package.json .
ADD --chown=node:node package-lock.json .

RUN npm install

ADD --chown=node:node . .

CMD [ "node", "lib/app.ts" ]