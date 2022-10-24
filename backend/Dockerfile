FROM node

WORKDIR /backend

COPY package.json .

RUN npm install

EXPOSE 80

COPY . .

CMD [ "npm", "start" ]