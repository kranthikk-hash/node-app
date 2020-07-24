#FROM ubuntu:18.04

FROM node:10

RUN mkdir -p /mnt/datastore

WORKDIR /mnt/datastore

COPY . .

RUN npm install

EXPOSE 8081

CMD ["node", "index.js"]
