FROM node:14

# src code destination in container
COPY . /opt/app

WORKDIR /opt/app

RUN npm install

CMD ["npm", "start"]
