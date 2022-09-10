FROM node:14.18.3

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn

COPY . .

RUN yarn db:migrate

RUN yarn db:load
