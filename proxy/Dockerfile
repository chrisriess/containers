FROM chrisriess/ubuntu
RUN apt-get install -y nginx
ADD default /etc/nginx/sites-available/default
CMD [ "dumb-init", "nginx", "-g", "daemon off;" ]