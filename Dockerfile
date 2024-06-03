ARG NODE_VERSION=18.19.0
FROM node:${NODE_VERSION}-alpine

RUN npm install -g pm2


WORKDIR /app

COPY package*.json pnpm-lock.yaml ./

RUN npm install 

COPY . .

CMD ["pm2-runtime", "ecosystem.config.js"]