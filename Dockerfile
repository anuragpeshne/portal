FROM nginx
RUN apt-get update && apt-get install -y \
	curl \
	python \
	make \
	g++
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get update -y && apt-get install -y nodejs npm
COPY ./public /var/www/public/
WORKDIR /usr/src/portal
COPY package*.json ./
RUN npm install
COPY . .
COPY ./nginx.conf /etc/nginx/sites-available/default
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
RUN service nginx restart
RUN npm install
RUN npm install -g pm2
#CMD ["pm2", "./bin/www"]
