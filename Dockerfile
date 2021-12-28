FROM node:17-alpine3.12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci && adduser -S clown

COPY . .

EXPOSE 4000

RUN apk update && apk --no-cache add curl

#RUN useradd -ms /bin/bash clown

USER clown

CMD [ "node", "app.js" ]
