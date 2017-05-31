FROM php:7.1.5-apache

MAINTAINER duanhongyi<duanhongyi@doopai.com>

RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
        unzip \
        && docker-php-ext-install mysqli

#disuz version
ENV DZ_URL http://download.comsenz.com/DiscuzX/3.3/Discuz_X3.3_SC_UTF8.zip
ENV DZ_WWW_ROOT /var/www/html

ADD ${DZ_URL} /tmp/discuz.zip
RUN unzip /tmp/discuz.zip \
    && mv upload/* ${DZ_WWW_ROOT} \
    && cd ${DZ_WWW_ROOT} \
    && chmod a+w -R config data uc_server/data uc_client/data \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 80
