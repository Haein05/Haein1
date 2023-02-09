# build environment
# test change

FROM node:16.15.0 as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
# COPY package-lock.json ./
RUN npm install
COPY . ./
RUN npm run test
# RUN npx eas-cli build --profile preview --platform android --non-interactive