FROM node:6.2

RUN npm install -g pm2@latest

COPY . /src
ADD start.sh /start.sh
RUN chmod 755 /start.sh
CMD ["/start.sh"]

EXPOSE 8080
