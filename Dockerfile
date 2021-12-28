FROM node:17-alpine3.12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

EXPOSE 4000

RUN adduser -S clown

USER clown

CMD [ "node", "app.js" ]
