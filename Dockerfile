FROM centos:7
MAINTAINER gjaguilar@bilbomatica.es
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/photofolio.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photofolio.zip
RUN cp -rvf photofolio/* .
RUN rm -rf photofolio photofolio.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 443
