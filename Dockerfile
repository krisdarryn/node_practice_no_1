FROM node:10.16.0-alpine

#RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

RUN mkdir /home/node/app && chown -R node:node /home/node/app

#COPY ./app/ /home/node/app

WORKDIR /home/node/app

USER node

COPY --chown=node:node . .

EXPOSE 7000

CMD [ "node", "./app/index.js" ]

