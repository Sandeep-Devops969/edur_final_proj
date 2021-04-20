#docker run --name jenkins-docker -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock devopsedu/webapp
FROM devopsedu/webapp
USER root
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND
CMD /usr/sbin -g "daemon off;"
USER sandeepg

