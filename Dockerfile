FROM php:7.1.5-apache

MAINTAINER duanhongyi<duanhongyi@doopai.com>

RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
        unzip\
        && docker-php-ext-install mysqli

ADD . /var/www/html 
RUN chmod 777 -R /var/www/html/data
EXPOSE 80
