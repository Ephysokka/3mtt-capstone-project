FROM node:17-alpine

WORKDIR /myapp

COPY . .

RUN npm install

CMD ["node", "app.js"]
