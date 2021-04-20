FROM devopsedu/webapp
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND
CMD /usr/sbin -g "daemon off;"


