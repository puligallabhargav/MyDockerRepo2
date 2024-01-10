FROM ubuntu
MAINTAINER NAME Bhargav
RUN apt update -y
RUN apt install apache2 -y
COPY . index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]


