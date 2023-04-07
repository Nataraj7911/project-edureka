FROM devopsedu/webapp

RUN apt -y update

RUN apt install -y git

RUN apt-get -y install apache2

RUN apt-get -y install curl

EXPOSE 80

WORKDIR /var/www/html

RUN rm -rf *

ADD projCert projCert

ENTRYPOINT ["/usr/sbin/apache2ctl"]

CMD ["-D", "FOREGROUND"]

