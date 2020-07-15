FROM node:10

WORKDIR /kranthi/app

COPY package.json ./

RUN mkdir -p /mnt/datastore

RUN npm install

COPY . .

EXPOSE 8081

CMD ["node", "index.js"]
