FROM centos:7
MAINTAINER gjaguilar@bilbomatica.esx
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/photosec.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip photosec.zip
RUN cp -rvf photosec/* .
RUN rm -rf photosec photosec.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 443 
