FROM nginx
RUN apt-get -y update && apt-get -y install nginx 
EXPOSE 80/tcp
