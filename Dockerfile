FROM centos:7

RUN    cd /tmp && \

    #yum update -y && \

    yum install -y unzip httpd php php-mysql && \

    curl -OL https://wordpress.org/latest.zip && \

    unzip latest.zip && \

    cp -r ./wordpress/* /var/www/html/ && \

    rm -rf latest.zip wordpress


ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-DFOREGROUND"]

EXPOSE 80
