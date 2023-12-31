FROM node:14-alpine

RUN apk add git
RUN npm install
RUN npm install pm2 -g
RUN npm run build
EXPOSE 3000

CMD npm run start --name "Notion" --attach
