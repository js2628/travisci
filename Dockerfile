FROM node:4-onbuild

RUN mkdir -p /app
WORKDIR /app

COPY package.json /app
RUN npm install

COPY . /app

CMD [ "npm", "start" ]