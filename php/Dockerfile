FROM chrisriess/ubuntu
RUN apt-get install -y php7.0 php7.0-cli php7.0-common php7.0-curl php7.0-gd php7.0-json \
                       php7.0-mysql php7.0-opcache php7.0-xml php7.0-xsl php7.0-fpm \
                       php7.0-intl php7.0-imap php7.0-mbstring php7.0-mcrypt nginx
ADD default /etc/nginx/sites-available/default
VOLUME [ "/var/www" ]
CMD [ "dumb-init", "bash", "-c", "/etc/init.d/php7.0-fpm start && nginx -g 'daemon off;'" ]