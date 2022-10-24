FROM node

WORKDIR /app

COPY . /app

RUN npm install 

ENV PORT=3000

EXPOSE $PORT

# VOLUME [ "/app/node_modules" ]

CMD ["npm", "start"]