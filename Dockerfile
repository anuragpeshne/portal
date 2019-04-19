FROM node
WORKDIR /usr/src/portal
COPY package*.json ./
RUN npm install
COPY . .
RUN npm install
EXPOSE 3000
EXPOSE 9000
CMD [ "node", "./bin/www" ]
