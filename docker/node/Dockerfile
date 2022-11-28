FROM node:16-alpine

WORKDIR /srv/app

ENV NODE_ENV production
COPY package*.json ./
RUN npm install
# RUN npm ci --only=production
# RUN yarn install --frozen-lockfile --production=true

COPY . .

CMD [ "node", "server.js" ]