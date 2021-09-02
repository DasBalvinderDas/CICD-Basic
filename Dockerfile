FROM ubuntu

RUN apt-get update

ENV DEBIAN_FRONTEND=nonintercative

RUN apt-get -y  install apache2

ADD ./index.html /var/www/html

EXPOSE 80
EXPOSE 8080

ENTRYPOINT apachectl -D FOREGROUND
