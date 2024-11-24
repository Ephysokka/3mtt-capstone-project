FROM node:latest

WORKDIR /myapp

COPY . .

RUN npm install

CMD ["node", "app.js"]
