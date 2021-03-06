FROM node:8.2-alpine

ENV HOME=/app/kafka-exampl NPM_CONFIG_LOGLEVEL=warn
COPY package.json package-lock.json $HOME/

WORKDIR $HOME
RUN npm install
COPY . $HOME/
